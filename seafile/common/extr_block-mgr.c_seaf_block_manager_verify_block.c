
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guchar ;
typedef int gboolean ;
typedef int buf ;
typedef int SeafBlockManager ;
typedef int GChecksum ;
typedef int BlockHandle ;


 int BLOCK_READ ;
 int FALSE ;
 int G_CHECKSUM_SHA1 ;
 int TRUE ;
 int g_checksum_free (int *) ;
 char* g_checksum_get_string (int *) ;
 int * g_checksum_new (int ) ;
 int g_checksum_update (int *,int *,int) ;
 int seaf_block_manager_block_handle_free (int *,int *) ;
 int seaf_block_manager_close_block (int *,int *) ;
 int * seaf_block_manager_open_block (int *,char const*,int,char const*,int ) ;
 int seaf_block_manager_read_block (int *,int *,char*,int) ;
 int seaf_warning (char*,char const*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;

gboolean
seaf_block_manager_verify_block (SeafBlockManager *mgr,
                                 const char *store_id,
                                 int version,
                                 const char *block_id,
                                 gboolean *io_error)
{
    BlockHandle *h;
    char buf[10240];
    int n;
    GChecksum *cs;
    const char *check_id;
    gboolean ret;

    h = seaf_block_manager_open_block (mgr,
                                       store_id, version,
                                       block_id, BLOCK_READ);
    if (!h) {
        seaf_warning ("Failed to open block %s:%.8s.\n", store_id, block_id);
        *io_error = TRUE;
        return FALSE;
    }

    cs = g_checksum_new (G_CHECKSUM_SHA1);
    while (1) {
        n = seaf_block_manager_read_block (mgr, h, buf, sizeof(buf));
        if (n < 0) {
            seaf_warning ("Failed to read block %s:%.8s.\n", store_id, block_id);
            *io_error = TRUE;
            g_checksum_free (cs);
            return FALSE;
        }
        if (n == 0)
            break;

        g_checksum_update (cs, (guchar *)buf, n);
    }

    seaf_block_manager_close_block (mgr, h);
    seaf_block_manager_block_handle_free (mgr, h);

    check_id = g_checksum_get_string (cs);

    if (strcmp (check_id, block_id) == 0)
        ret = TRUE;
    else
        ret = FALSE;

    g_checksum_free (cs);
    return ret;
}
