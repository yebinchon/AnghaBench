
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int B_FALSE ;







 int errno ;
 int fnvlist_add_boolean (int *,char*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int fprintf (int ,char*,...) ;
 char* gettext (char*) ;
 int lzc_redact (char*,char*,int *) ;
 int stderr ;
 char* strerror (int ) ;
 int usage (int ) ;

__attribute__((used)) static int
zfs_do_redact(int argc, char **argv)
{
 char *snap = ((void*)0);
 char *bookname = ((void*)0);
 char **rsnaps = ((void*)0);
 int numrsnaps = 0;
 argv++;
 argc--;
 if (argc < 3) {
  (void) fprintf(stderr, gettext("too few arguments\n"));
  usage(B_FALSE);
 }

 snap = argv[0];
 bookname = argv[1];
 rsnaps = argv + 2;
 numrsnaps = argc - 2;

 nvlist_t *rsnapnv = fnvlist_alloc();

 for (int i = 0; i < numrsnaps; i++) {
  fnvlist_add_boolean(rsnapnv, rsnaps[i]);
 }

 int err = lzc_redact(snap, bookname, rsnapnv);
 fnvlist_free(rsnapnv);

 switch (err) {
 case 0:
  break;
 case 129:
  (void) fprintf(stderr,
      gettext("provided snapshot %s does not exist\n"), snap);
  break;
 case 132:
  (void) fprintf(stderr, gettext("specified redaction bookmark "
      "(%s) provided already exists\n"), bookname);
  break;
 case 130:
  (void) fprintf(stderr, gettext("provided bookmark name cannot "
      "be used, final name would be too long\n"));
  break;
 case 134:
  (void) fprintf(stderr, gettext("too many redaction snapshots "
      "specified\n"));
  break;
 case 131:
  (void) fprintf(stderr, gettext("redaction snapshot must be "
      "descendent of snapshot being redacted\n"));
  break;
 case 133:
  (void) fprintf(stderr, gettext("attempted to redact redacted "
      "dataset or with respect to redacted dataset\n"));
  break;
 case 128:
  (void) fprintf(stderr, gettext("redaction bookmarks feature "
      "not enabled\n"));
  break;
 default:
  (void) fprintf(stderr, gettext("internal error: %s\n"),
      strerror(errno));
 }

 return (err);
}
