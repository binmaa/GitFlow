--����ֶΣ�
SQL
alter table T_MS_JCJY add
    D_KSRQ     DATE NULL,
    D_JSRQ     DATE NULL
 go
--ɾ���ֶΣ�
alter table T_MS_JCJY drop D_JSRQ
go

--�鿴����

sp_lock
select object_name(976003477)
ִ�� sp_lock ���Կ��� ���е�����locktype���У�Sh��ͷ���ǹ�������Ex��ͷ������������
table_id�����ǲ������ı��id��ִ�� select object_name(table_id) ���Բ�����������ı�����

sp_who

SELECT * FROM master..sysprocesses WHERE status LIKE '%lock%'
ɱ��
KILL 1316

--sybase�鿴�û��������е�sql���
��sa��½
>dbcc traceon(3604)
>go
>dbcc sqltext(sp_id)
>go
�ܿ�������sp_id�����е�sql���
sp__id����sp_who���������������ݿ����lock��ʱ����Բ�ѯ��ʲôsqlԭ����ɵ�


--������Դ����
select * from JCSZ..T_YWGY_RESOURCE_INFO

--Ȩ�޶���
select * FROM T_YWGY_QX_DY WHERE C_QXZ like 'np.fy.sffz.xtgl%'
--��ѯ���ݿ�����ip ������ռ��
SELECT * FROM master..sysprocesses WHERE program_name='NP-FY-XTGL'

--���ͷ��ͱ�
select * from YWST..T_YWGY_AJYS_FS order by DT_FSSJ desc

--���ͽ��ձ�
select * from YWST..T_YWGY_AJYS_JS where  C_AJYSLX like 'TXF%' order by DT_JSSJ DESC

select * from YWST..T_YWGY_AJYS_JS  order by DT_JSSJ DESC

select * from JCSZ..T_YWGY_YWLXTRANS order by N_YWLX

--����ϵͳ���հ���bean TLaxtXsan 
select * from JCSZ..T_LAXT_XSAN 

--�������
SELECT * FROM T_YWGY_SJLZ_BDSY

SELECT * FROM T_YWGY_SJLZ_FS ORDER BY DT_FSSJ DESC

SELECT * FROM T_YWGY_SJLZ_JS WHERE N_MBBS=  AND N_YBS

--���հ���
select * from JCSZ..T_LAXT_XSAN order by N_BH

select * from T_SFFZ_SFSQ

-- ftp
select * from JCSZ..T_YWGY_CCGL_CCKPZ

--������Ϣ

select * from  JCSZ..T_PZ_XTPZXX where C_KEY like '%uim%'

--���÷���
SELECT * FROM JCSZ..T_PZ_FZDY

--������ϵͳ����
select * from JCSZ..T_PZ_XTPZXX WHERE C_KEY ='sys.np.fy.pub.zxbaxt'

--���佻��ƽ̨���

select * from JCSZ..T_YWGY_SJLZ_CSPT

select * from JCSZ..T_PZ_XTPZXX where C_KEY = 'datatrans.local.ws.appname'

select * from JCSZ..T_PZ_XTPZXX where C_KEY = 'datatrans.local.ws.ip'

select * from JCSZ..T_PZ_XTPZXX where C_KEY = 'datatrans.local.ws.port'

--��Ժ����
SELECT * FROM JCSZ..T_YWGY_ORGAN_EXTEND

--Ȩ��
select * from JCSZ..T_YWGY_QX_RYGN 

--�������
select * from JCSZ..T_YWGY_ZDYAH 

--�����ֺ� �Ǽ��ֺ�
select * from  JCSZ..T_YWGY_SPZH

select * from JCSZ..T_IDG_CONFIG

--ҵ���ʶ
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX=10101133

--������չ�׶�
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101106

--��������
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101088

--�������
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101033

--���г���
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10102079

--'ʵ������'
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101124

--'ʵ��������'
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101213

--'����ҵ������'
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101231

--'��������'
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101125

--'�������ϵ�λ'
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10103706

--'����״̬'
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10117017

--������Դ
SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10102202

SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_BH_DMLX = 10101231

SELECT * FROM JCSZ..T_YWGY_DM_DM WHERE N_DM = 101

SELECT * FROM JCSZ..T_YWGY_DM_DMLX WHERE N_BH=10118025

SELECT * FROM JCSZ..T_YWGY_DM_DMLX WHERE C_MC LIKE '%����%'

--ɾ���ֶ�
-- ALTER TABLE T_ZX_AJ DROP N_SFZYFGHY

--TableRelation
SELECT * FROM  JCSZ..T_YWGY_SJZD_BJGX

--������Ϣҳ����ർ��
SELECT *  FROM JCSZ..T_YWGY_RWDY WHERE  C_MC LIKE '%רҵ����%'

SELECT *  FROM JCSZ..T_YWGY_RWDY WHERE N_YWBS=208 AND N_AJJZJD=7

--ִ����ർ��
SELECT *  FROM JCSZ..T_ZXGY_RWDY WHERE  C_MC LIKE '%��ί��%'

--������־
SELECT * FROM YWST..T_XS_CZRZ

--ȫ����Ժ
SELECT * FROM JCSZ..T_YWGY_FY

--������ϵͳ
SELECT * FROM  JCSZ..T_PZ_XTPZXX WHERE C_KEY='sys.np.fy.url.xtgl.mLaxt'
SELECT * FROM  JCSZ..T_PZ_XTPZXX WHERE C_KEY='sys.np.fy.url.xtgl.mSpxt'
SELECT * FROM  JCSZ..T_PZ_XTPZXX WHERE C_KEY='sys.np.fy.url.xtgl.mDwjk'

--��Ժ���
SELECT * FROM JCSZ..T_YWGY_ORGAN_EXTEND

-- uim ����޸�ʱ��
SELECT max (updateTime)
FROM (SELECT max (DT_Updatetime) AS updateTime
      FROM DB_ATY..T_Aty_Corp UNION ALL
    SELECT max (DT_Updatetime) AS updateTime
    FROM DB_ATY..T_Aty_Dept UNION ALL
    SELECT max (DT_Updatetime) AS updateTime
    FROM DB_ATY..T_Aty_User) t

--�����
SELECT * FROM YWST..T_YWGY_WSQD_WS

--ģ���
SELECT top 10 * FROM JCSZ..T_YWGY_WSQD_WSMB 

--����ֵ���ö����
SELECT * FROM JCSZ..T_YWGY_DZDMYS_PZ

--����С��
SELECT * FROM JCSZ..T_YWGY_LA_SPXZ

--����
SELECT * FROM TWST..T_CMPT_SP_SP

--��Ϣ
SELECT * FROM YYFZ..T_XXPT_XX

--������
SELECT * FROM JCSZ..T_YWGY_YWS_SJL

--˾�������н�ṹ�������ݽ���
SELECT * FROM YWST..T_SFFZ_ZJJG_BLSJJS 

--������Ϣ��
--ģ��
select top 100 * from JCSZ..T_YWGY_XXB_MB where N_BH =17
--�����Ϣ
select * from JCSZ..T_YWGY_XXB_ZDXX where N_BH_MB =17 

----�߷Ѽ���
--��ʽ
SELECT * FROM  JCSZ..T_YWGY_SFJS_GS where N_YX = 1 AND C_BS LIKE '%lhhccjf%'
--Ĭ��ֵ
SELECT * FROM JCSZ..T_YWGY_SFJS_MRZ
SELECT * FROM JCSZ..T_YWGY_SFJS_SX