
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBBAK_OP_BACKUP ;
 int DBBAK_OP_RECOVER ;
 int MMBAK_FLAG_FIX_CORRUPTION ;
 int MMBAK_FLAG_INCREMENTAL ;
 int MMBAK_FLAG_NO_CIPHER ;
 int MMBAK_FLAG_NO_COMPRESS ;
 int MMBAK_FLAG_NO_CREATE_TABLE ;
 int MMBAK_LOG_ERROR ;
 int atoi (void*) ;
 int exit (int) ;
 char* g_db_path ;
 void* g_dbkey ;
 void* g_dump_path ;
 int g_flags ;
 int * g_key ;
 int g_operation ;
 int g_options ;
 void* g_tabdesc_path ;
 int g_verbose ;
 int getopt_long (int,char**,char*,int ,int *) ;
 void* optarg ;
 int optind ;
 int print_log (int ,char*) ;
 int sqlcipher_set_default_kdf_iter (int) ;
 int sqlcipher_set_default_pagesize (int) ;
 int sqlcipher_set_default_use_hmac (int) ;
 int strcmp (char const*,char*) ;
 int usage (char*) ;

__attribute__((used)) static void parse_options(int argc, char *argv[])
{
 int opt;
 int value;


 if (argc < 2) usage(argv[0]);

 const char *opstr = argv[1];
 if (!strcmp(opstr, "backup"))
  g_operation = DBBAK_OP_BACKUP;
 else if (!strcmp(opstr, "recover"))
  g_operation = DBBAK_OP_RECOVER;
 else usage(argv[0]);


 sqlcipher_set_default_kdf_iter(4000);
 sqlcipher_set_default_use_hmac(0);


 optind = 2;
 while ((opt = getopt_long(argc, argv, "vzZfFtTio:d:K:k:", g_options, ((void*)0))) != -1)
 {
  switch (opt)
  {
  case 'v':
   g_verbose = 1;
   break;
  case 'z':
   g_flags &= (~MMBAK_FLAG_NO_COMPRESS);
   break;
  case 'Z':
   g_flags |= MMBAK_FLAG_NO_COMPRESS;
   break;
  case 'f':
   g_flags |= MMBAK_FLAG_FIX_CORRUPTION;
   break;
  case 'F':
   g_flags &= (~MMBAK_FLAG_FIX_CORRUPTION);
   break;
  case 't':
   g_flags &= (~MMBAK_FLAG_NO_CREATE_TABLE);
   break;
  case 'T':
   g_flags |= MMBAK_FLAG_NO_CREATE_TABLE;
   break;
  case 'i':
   g_flags |= MMBAK_FLAG_INCREMENTAL;
   break;
  case 'o':
   g_dump_path = optarg;
   break;
  case 'd':
   g_tabdesc_path = optarg;
   break;
  case 'K':
   g_dbkey = optarg;
   break;
  case 'k':
   g_key = optarg;
   break;
  case 0x100:
   value = atoi(optarg);
   if (value == 1)
   {
    sqlcipher_set_default_kdf_iter(4000);
    sqlcipher_set_default_use_hmac(0);
   }
   else if (value == 2)
   {
    sqlcipher_set_default_kdf_iter(4000);
    sqlcipher_set_default_use_hmac(1);
   }
   else if (value == 3)
   {
    sqlcipher_set_default_kdf_iter(64000);
    sqlcipher_set_default_use_hmac(1);
   }
   else
   {
    print_log(MMBAK_LOG_ERROR, "Version must be 1, 2 or 3");
    exit(-1);
   }
   break;
  case 0x101:
   value = atoi(optarg);
   if (value != 512 && value != 1024 && value != 2048 && value != 4096 &&
     value != 8192 && value != 16384 && value != 32768 && value != 65536)
   {
    print_log(MMBAK_LOG_ERROR, "Page size must be 512, 1024, 2048, ..., 65536");
    exit(-1);
   }
   sqlcipher_set_default_pagesize(value);
   break;
  default:
   usage(argv[0]);
  }
 }

 if (optind != argc - 1)
  usage(argv[0]);
 g_db_path = argv[optind++];

 if (!g_dump_path)
 {
  print_log(MMBAK_LOG_ERROR, "Output path must be specified.");
  usage(argv[0]);
 }

 if (g_key == ((void*)0))
  g_flags |= MMBAK_FLAG_NO_CIPHER;
}
