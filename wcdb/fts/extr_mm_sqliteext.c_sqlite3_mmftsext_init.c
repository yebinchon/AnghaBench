
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_api_routines ;
typedef int sqlite3 ;


 int SQLITE_ERROR ;
 int SQLITE_EXTENSION_INIT2 (int const*) ;
 int SQLITE_OK ;
 int g_default_key ;
 scalar_t__ init_icucompat () ;
 char* sqlite3_errmsg (int *) ;
 char* sqlite3_mprintf (char*,...) ;
 int sqlite3_register_mm_cipher (int *,int ) ;
 int sqlite3_register_mm_tokenizer (int *) ;
 int sqlite3_register_mm_utils (int *) ;

int sqlite3_mmftsext_init(sqlite3 *db,
       char **pzErrMsg,
       const sqlite3_api_routines *pApi)
{
    int rc;
    const char *errmsg;
    SQLITE_EXTENSION_INIT2(pApi);


    if (init_icucompat() != 0) {
        *pzErrMsg = sqlite3_mprintf("failed to load ICU library.");
        return SQLITE_ERROR;
    }


    rc = sqlite3_register_mm_tokenizer(db);
    if (rc != SQLITE_OK)
        goto bail;


    rc = sqlite3_register_mm_cipher(db, g_default_key);
    if (rc != SQLITE_OK)
        goto bail;


    rc = sqlite3_register_mm_utils(db);
    if (rc != SQLITE_OK)
        goto bail;

    *pzErrMsg = ((void*)0);
    return SQLITE_OK;

bail:
    errmsg = sqlite3_errmsg(db);
    if (!errmsg)
        errmsg = "";
    *pzErrMsg = sqlite3_mprintf(
        "Failed to register SQLite functions: %s, ErrCode: %d", errmsg, rc);
    return rc;
}
