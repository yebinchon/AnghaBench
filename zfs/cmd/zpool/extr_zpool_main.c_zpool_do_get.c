
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* pl_next; int pl_width; int pl_prop; int member_0; } ;
typedef TYPE_1__ zprop_list_t ;
struct TYPE_8__ {TYPE_1__* cb_proplist; void** cb_columns; void* cb_scripted; void* cb_literal; int cb_type; int cb_sources; void* cb_first; int member_0; } ;
typedef TYPE_2__ zprop_get_cbdata_t ;


 int B_FALSE ;
 void* B_TRUE ;
 void* GET_COL_NAME ;
 void* GET_COL_PROPERTY ;
 void* GET_COL_SOURCE ;
 void* GET_COL_VALUE ;
 int ZFS_GET_NCOLS ;
 int ZFS_TYPE_POOL ;
 int ZPOOL_PROP_NAME ;
 int ZPROP_SRC_ALL ;
 int bzero (void***,int) ;
 int for_each_pool (int,char**,void*,TYPE_1__**,int ,TYPE_2__*) ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int get_callback ;
 int getopt (int,char**,char*) ;
 int getsubopt (char**,char**,char**) ;
 char* gettext (char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 int strlen (char*) ;
 int usage (int ) ;
 int zprop_free_list (TYPE_1__*) ;
 scalar_t__ zprop_get_list (int ,char*,TYPE_1__**,int ) ;

int
zpool_do_get(int argc, char **argv)
{
 zprop_get_cbdata_t cb = { 0 };
 zprop_list_t fake_name = { 0 };
 int ret;
 int c, i;
 char *value;

 cb.cb_first = B_TRUE;




 cb.cb_sources = ZPROP_SRC_ALL;
 cb.cb_columns[0] = GET_COL_NAME;
 cb.cb_columns[1] = GET_COL_PROPERTY;
 cb.cb_columns[2] = GET_COL_VALUE;
 cb.cb_columns[3] = GET_COL_SOURCE;
 cb.cb_type = ZFS_TYPE_POOL;


 while ((c = getopt(argc, argv, ":Hpo:")) != -1) {
  switch (c) {
  case 'p':
   cb.cb_literal = B_TRUE;
   break;
  case 'H':
   cb.cb_scripted = B_TRUE;
   break;
  case 'o':
   bzero(&cb.cb_columns, sizeof (cb.cb_columns));
   i = 0;
   while (*optarg != '\0') {
    static char *col_subopts[] =
    { "name", "property", "value", "source",
    "all", ((void*)0) };

    if (i == ZFS_GET_NCOLS) {
     (void) fprintf(stderr, gettext("too "
     "many fields given to -o "
     "option\n"));
     usage(B_FALSE);
    }

    switch (getsubopt(&optarg, col_subopts,
        &value)) {
    case 0:
     cb.cb_columns[i++] = GET_COL_NAME;
     break;
    case 1:
     cb.cb_columns[i++] = GET_COL_PROPERTY;
     break;
    case 2:
     cb.cb_columns[i++] = GET_COL_VALUE;
     break;
    case 3:
     cb.cb_columns[i++] = GET_COL_SOURCE;
     break;
    case 4:
     if (i > 0) {
      (void) fprintf(stderr,
          gettext("\"all\" conflicts "
          "with specific fields "
          "given to -o option\n"));
      usage(B_FALSE);
     }
     cb.cb_columns[0] = GET_COL_NAME;
     cb.cb_columns[1] = GET_COL_PROPERTY;
     cb.cb_columns[2] = GET_COL_VALUE;
     cb.cb_columns[3] = GET_COL_SOURCE;
     i = ZFS_GET_NCOLS;
     break;
    default:
     (void) fprintf(stderr,
         gettext("invalid column name "
         "'%s'\n"), value);
     usage(B_FALSE);
    }
   }
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;

 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing property "
      "argument\n"));
  usage(B_FALSE);
 }

 if (zprop_get_list(g_zfs, argv[0], &cb.cb_proplist,
     ZFS_TYPE_POOL) != 0)
  usage(B_FALSE);

 argc--;
 argv++;

 if (cb.cb_proplist != ((void*)0)) {
  fake_name.pl_prop = ZPOOL_PROP_NAME;
  fake_name.pl_width = strlen(gettext("NAME"));
  fake_name.pl_next = cb.cb_proplist;
  cb.cb_proplist = &fake_name;
 }

 ret = for_each_pool(argc, argv, B_TRUE, &cb.cb_proplist,
     get_callback, &cb);

 if (cb.cb_proplist == &fake_name)
  zprop_free_list(fake_name.pl_next);
 else
  zprop_free_list(cb.cb_proplist);

 return (ret);
}
