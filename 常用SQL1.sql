--添加字段：
SQL
alter table T_MS_JCJY add
    D_KSRQ     DATE NULL,
    D_JSRQ     DATE NULL
 go
--删除字段：
alter table T_MS_JCJY drop D_JSRQ
go

--查看死锁

sp_lock
select object_name(976003477)
执行 sp_lock 可以看到 所有的锁，locktype列中，Sh开头的是共享锁，Ex开头的是排他锁。
table_id列里是产生锁的表的id，执行 select object_name(table_id) 可以查出来产生锁的表名。

sp_who

SELECT * FROM master..sysprocesses WHERE status LIKE '%lock%'
杀掉
KILL 1316

--sybase查看用户正在运行的sql语句
以sa登陆
>dbcc traceon(3604)
>go
>dbcc sqltext(sp_id)
>go
能看到连接sp_id的运行的sql语句
sp__id可由sp_who查出，这样如果数据库出现lock的时候可以查询是什么sql原因造成的


--公共资源下载
select * from JCSZ..T_YWGY_RESOURCE_INFO

--权限定义
select * FROM T_YWGY_QX_DY WHERE C_QXZ like 'np.fy.sffz.xtgl%'
--查询数据库连接ip 连接数占用
SELECT * FROM master..sysprocesses WHERE program_name='NP-FY-XTGL'

--移送发送表
select * from YWST..T_YWGY_AJYS_FS order by DT_FSSJ desc

--移送接收表
select * from YWST..T_YWGY_AJYS_JS where  C_AJYSLX like 'TXF%' order by DT_JSSJ DESC

select * from YWST..T_YWGY_AJYS_JS  order by DT_JSSJ DESC

select * from JCSZ..T_YWGY_YWLXTRANS order by N_YWLX

--立案系统新收案件bean TLaxtXsan 
select * from JCSZ..T_LAXT_XSAN 

--移送组件
SELECT * FROM T_YWGY_SJLZ_BDSY

SELECT * FROM T_YWGY_SJLZ_FS ORDER BY DT_FSSJ DESC

SELECT * FROM T_YWGY_SJLZ_JS WHERE N_MBBS=  AND N_YBS

--新收案表
select * from JCSZ..T_LAXT_XSAN order by N_BH

select * from T_SFFZ_SFSQ

-- ftp
select * from JCSZ..T_YWGY_CCGL_CCKPZ

--配置信息

select * from  JCSZ..T_PZ_XTPZXX where C_KEY like '%uim%'

--配置分组
SELECT * FROM JCSZ..T_PZ_FZDY

--新审判系统配置
select * from JCSZ..T_PZ_XTPZXX WHERE C_KEY ='sys.np.fy.pub.zxbaxt'

--传输交换平台相关

select * from JCSZ..T_YWGY_SJLZ_CSPT

select * from JCSZ..T_PZ_XTPZXX where C_KEY = 'datatrans.local.ws.appname'

select * from JCSZ..T_PZ_XTPZXX where C_KEY = 'datatrans.local.ws.ip'

select * from JCSZ..T_PZ_XTPZXX where C_KEY = 'datatrans.local.ws.port'

--法院代字
SELECT * FROM JCSZ..T_YWGY_ORGAN_EXTEND

--权限
select * from JCSZ..T_YWGY_QX_RYGN 

--案号相关
select * from JCSZ..T_YWGY_ZDYAH 

--审判字号 登记字号
select * from  JCSZ..T_YWGY_SPZH

select * from JCSZ..T_IDG_CONFIG

--业务标识
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX=10101133

--案件进展阶段
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101106

--案件类型
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101088

--案件类别
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101033

--审判程序
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10102079

--'实体类型'
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101124

--'实体子类型'
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101213

--'案件业务类型'
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101231

--'移送类型'
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101125

--'本案诉讼地位'
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10103706

--'移送状态'
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10117017

--案件来源
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10102202

SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101231

SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_DM = 101

SELECT * FROM JCSZ..T_YWGY_DM_DMLX WHERE N_BH=10118025

SELECT * FROM JCSZ..T_YWGY_DM_DMLX WHERE C_MC LIKE '%副本%'

--删除字段
-- ALTER TABLE T_ZX_AJ DROP N_SFZYFGHY

--TableRelation
SELECT * FROM  JCSZ..T_YWGY_SJZD_BJGX

--案件信息页面左侧导航
SELECT *  FROM JCSZ..T_YWGY_RWDY WHERE  C_MC LIKE '%专业法官%'

SELECT *  FROM JCSZ..T_YWGY_RWDY WHERE N_YWBS=208 AND N_AJJZJD=7

--执行左侧导航
SELECT *  FROM JCSZ..T_ZXGY_RWDY WHERE  C_MC LIKE '%审委会%'

--操作日志
SELECT * FROM YWST..T_XS_CZRZ

--全部法院
SELECT * FROM JCSZ..T_YWGY_FY

--配置子系统
SELECT * FROM  JCSZ..T_PZ_XTPZXX WHERE C_KEY='sys.np.fy.url.xtgl.mLaxt'
SELECT * FROM  JCSZ..T_PZ_XTPZXX WHERE C_KEY='sys.np.fy.url.xtgl.mSpxt'
SELECT * FROM  JCSZ..T_PZ_XTPZXX WHERE C_KEY='sys.np.fy.url.xtgl.mDwjk'

--法院简称
SELECT * FROM JCSZ..T_YWGY_ORGAN_EXTEND

-- uim 最后修改时间
SELECT max (updateTime)
FROM (SELECT max (DT_Updatetime) AS updateTime
      FROM DB_ATY..T_Aty_Corp UNION ALL
    SELECT max (DT_Updatetime) AS updateTime
    FROM DB_ATY..T_Aty_Dept UNION ALL
    SELECT max (DT_Updatetime) AS updateTime
    FROM DB_ATY..T_Aty_User) t

--文书表
SELECT * FROM YWST..T_YWGY_WSQD_WS

--模板表
SELECT top 10 * FROM JCSZ..T_YWGY_WSQD_WSMB 

--代码值配置定义表
SELECT * FROM JCSZ..T_YWGY_DZDMYS_PZ

--审判小组
SELECT * FROM JCSZ..T_YWGY_LA_SPXZ

--审批
SELECT * FROM TWST..T_CMPT_SP_SP

--消息
SELECT * FROM YYFZ..T_XXPT_XX

--数据锁
SELECT * FROM JCSZ..T_YWGY_YWS_SJL

--司法辅助中介结构办理数据接收
SELECT * FROM YWST..T_SFFZ_ZJJG_BLSJJS 

--立案信息表
--模板
select top 100 * from JCSZ..T_YWGY_XXB_MB where N_BH =17
--表格信息
select * from JCSZ..T_YWGY_XXB_ZDXX where N_BH_MB =17 

----诉费计算
--公式
SELECT * FROM  JCSZ..T_YWGY_SFJS_GS where N_YX = 1 AND C_BS LIKE '%lhhccjf%'
--默认值
SELECT * FROM JCSZ..T_YWGY_SFJS_MRZ
SELECT * FROM JCSZ..T_YWGY_SFJS_SX