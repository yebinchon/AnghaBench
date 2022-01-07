
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
struct TYPE_32__ {int is_default; int parsed; } ;
typedef TYPE_1__ WithClauseResult ;
struct TYPE_33__ {TYPE_3__* view; int * options; int aliases; } ;
typedef TYPE_2__ ViewStmt ;
struct TYPE_37__ {int htid; int htoid; int bucket_width; int htpartcoltype; } ;
struct TYPE_36__ {int matcollist; } ;
struct TYPE_35__ {int rtable; struct TYPE_35__* groupClause; } ;
struct TYPE_34__ {int relname; int schemaname; } ;
typedef TYPE_3__ RangeVar ;
typedef int RangeTblEntry ;
typedef TYPE_4__ Query ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_5__ MatTableColumnInfo ;
typedef int Interval ;
typedef int FinalizeQueryInfo ;
typedef int CatalogSecurityContext ;
typedef TYPE_6__ CAggTimebucketInfo ;


 size_t ContinuousViewOptionCreateGroupIndex ;
 size_t ContinuousViewOptionRefreshInterval ;
 int * DatumGetIntervalP (int ) ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 int HYPERTABLE ;
 char* INTERNAL_SCHEMA_NAME ;
 int NAMEDATALEN ;
 int NIL ;
 int PRINT_MATINTERNAL_NAME (char*,char*,int ) ;
 int RangeVarGetCreationNamespace (TYPE_3__*) ;
 int cagg_add_trigger_hypertable (int ,char*) ;
 TYPE_4__* copyObject (TYPE_4__*) ;
 int create_cagg_catlog_entry (int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int create_view_for_query (TYPE_4__*,TYPE_3__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 TYPE_4__* finalizequery_get_select_query (int *,int ,int *) ;
 int finalizequery_init (int *,TYPE_4__*,TYPE_5__*) ;
 int fixup_userview_query_tlist (TYPE_4__*,int ) ;
 int get_max_interval_per_job (int ,TYPE_1__*,int ) ;
 int get_namespace_name (int ) ;
 int get_refresh_lag (int ,int ,TYPE_1__*) ;
 int * list_nth (int ,int ) ;
 TYPE_3__* makeRangeVar (int ,int ,int) ;
 int mattablecolumninfo_addinternal (TYPE_5__*,int *,int) ;
 int mattablecolumninfo_create_materialization_table (TYPE_5__*,int ,TYPE_3__*,TYPE_6__*,int,int *) ;
 TYPE_4__* mattablecolumninfo_get_partial_select_query (TYPE_5__*,TYPE_4__*) ;
 int mattablecolumninfo_init (TYPE_5__*,int ,int ,TYPE_4__*) ;
 int pstrdup (char*) ;
 int snprintf (char*,int,char*,int) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_get () ;
 int ts_catalog_restore_user (int *) ;
 int ts_catalog_table_next_seq_id (int ,int ) ;
 int ts_continuous_agg_job_add (int,int ,int *) ;

__attribute__((used)) static void
cagg_create(ViewStmt *stmt, Query *panquery, CAggTimebucketInfo *origquery_ht,
   WithClauseResult *with_clause_options)
{
 ObjectAddress mataddress;
 char relnamebuf[NAMEDATALEN];
 MatTableColumnInfo mattblinfo;
 FinalizeQueryInfo finalqinfo;
 CatalogSecurityContext sec_ctx;
 bool is_create_mattbl_index;

 Query *final_selquery;
 Query *partial_selquery;
 Query *orig_userview_query;
 RangeTblEntry *usertbl_rte;
 Oid nspid;
 RangeVar *part_rel = ((void*)0), *mat_rel = ((void*)0), *dum_rel = ((void*)0);
 int32 materialize_hypertable_id;
 int32 job_id;
 char trigarg[NAMEDATALEN];
 int ret;
 Interval *refresh_interval =
  DatumGetIntervalP(with_clause_options[ContinuousViewOptionRefreshInterval].parsed);
 int64 refresh_lag = get_refresh_lag(origquery_ht->htpartcoltype,
          origquery_ht->bucket_width,
          with_clause_options);
 int64 max_interval_per_job = get_max_interval_per_job(origquery_ht->htpartcoltype,
                with_clause_options,
                origquery_ht->bucket_width);



 fixup_userview_query_tlist(panquery, stmt->aliases);
 mattablecolumninfo_init(&mattblinfo, NIL, NIL, copyObject(panquery->groupClause));
 finalizequery_init(&finalqinfo, panquery, &mattblinfo);




 stmt->options = ((void*)0);




 usertbl_rte = list_nth(panquery->rtable, 0);
 mattablecolumninfo_addinternal(&mattblinfo, usertbl_rte, origquery_ht->htid);


 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 materialize_hypertable_id = ts_catalog_table_next_seq_id(ts_catalog_get(), HYPERTABLE);
 ts_catalog_restore_user(&sec_ctx);
 PRINT_MATINTERNAL_NAME(relnamebuf, "_materialized_hypertable_%d", materialize_hypertable_id);
 mat_rel = makeRangeVar(pstrdup(INTERNAL_SCHEMA_NAME), pstrdup(relnamebuf), -1);
 is_create_mattbl_index = with_clause_options[ContinuousViewOptionCreateGroupIndex].is_default;
 mattablecolumninfo_create_materialization_table(&mattblinfo,
             materialize_hypertable_id,
             mat_rel,
             origquery_ht,
             is_create_mattbl_index,
             &mataddress);



 final_selquery =
  finalizequery_get_select_query(&finalqinfo, mattblinfo.matcollist, &mataddress);
 create_view_for_query(final_selquery, stmt->view);



 partial_selquery = mattablecolumninfo_get_partial_select_query(&mattblinfo, panquery);

 PRINT_MATINTERNAL_NAME(relnamebuf, "_partial_view_%d", materialize_hypertable_id);
 part_rel = makeRangeVar(pstrdup(INTERNAL_SCHEMA_NAME), pstrdup(relnamebuf), -1);
 create_view_for_query(partial_selquery, part_rel);





 orig_userview_query = copyObject(panquery);
 PRINT_MATINTERNAL_NAME(relnamebuf, "_direct_view_%d", materialize_hypertable_id);
 dum_rel = makeRangeVar(pstrdup(INTERNAL_SCHEMA_NAME), pstrdup(relnamebuf), -1);
 create_view_for_query(orig_userview_query, dum_rel);


 job_id =
  ts_continuous_agg_job_add(origquery_ht->htid, origquery_ht->bucket_width, refresh_interval);


 nspid = RangeVarGetCreationNamespace(stmt->view);
 create_cagg_catlog_entry(materialize_hypertable_id,
        origquery_ht->htid,
        get_namespace_name(nspid),
        stmt->view->relname,
        part_rel->schemaname,
        part_rel->relname,
        origquery_ht->bucket_width,
        refresh_lag,
        max_interval_per_job,
        job_id,
        dum_rel->schemaname,
        dum_rel->relname);


 ret = snprintf(trigarg, NAMEDATALEN, "%d", origquery_ht->htid);
 if (ret < 0 || ret >= NAMEDATALEN)
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("bad argument to continuous aggregate trigger")));
 cagg_add_trigger_hypertable(origquery_ht->htoid, trigarg);

 return;
}
