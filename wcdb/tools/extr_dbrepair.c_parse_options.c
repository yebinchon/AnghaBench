
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use_hmac; int key_len; void* key; } ;


 int LOGI (char*) ;
 int atoi (void*) ;
 int exit (int) ;
 TYPE_1__ g_cipher_conf ;
 char const** g_filter ;
 int g_filter_capacity ;
 char* g_in_path ;
 void* g_load_master ;
 int g_num_filter ;
 int g_options ;
 void* g_out_key ;
 void* g_out_path ;
 void* g_save_master ;
 int g_verbose ;
 int getopt_long (int,char**,char*,int ,int *) ;
 void* optarg ;
 int optind ;
 void* realloc (char const**,size_t) ;
 int sqlcipher_set_default_kdf_iter (int) ;
 int sqlcipher_set_default_pagesize (int) ;
 int sqlcipher_set_default_use_hmac (int) ;
 int strlen (void*) ;
 int usage (char*) ;

__attribute__((used)) static void parse_options(int argc, char *argv[])
{
 int opt;
 int value;

 if (argc < 2) usage(argv[0]);


 sqlcipher_set_default_kdf_iter(4000);
 sqlcipher_set_default_use_hmac(0);

 g_cipher_conf.use_hmac = -1;


 optind = 1;
 while ((opt = getopt_long(argc, argv, "hvo:K:k:M:m:", g_options, ((void*)0))) != -1)
 {
  switch (opt)
  {
        case 'h':
            usage(argv[0]);
            break;
  case 'v':
   g_verbose = 1;
   break;
  case 'o':
   g_out_path = optarg;
   break;
  case 'K':
   g_out_key = optarg;
   break;
  case 'k':
   g_cipher_conf.key = optarg;
   g_cipher_conf.key_len = strlen(optarg);
   break;
  case 'f':
   if (g_num_filter == g_filter_capacity)
   {
    size_t sz = g_filter_capacity ? g_filter_capacity * 2 : 64;
    void *ptr = realloc(g_filter, sz * sizeof(const char *));
    if (!ptr) exit(-5);
    g_filter = (const char **) ptr;
    g_filter_capacity = sz;
   }
   g_filter[g_num_filter++] = optarg;
   break;
  case 'M':
   g_save_master = optarg;
   break;
  case 'm':
   g_load_master = optarg;
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
    LOGI("Version must be 1, 2 or 3");
    exit(-1);
   }
   break;
  case 0x101:
   value = atoi(optarg);
   if (value != 512 && value != 1024 && value != 2048 && value != 4096 &&
     value != 8192 && value != 16384 && value != 32768 && value != 65536)
   {
    LOGI("Page size must be 512, 1024, 2048, ..., or 65536");
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
 g_in_path = argv[optind++];

 if (g_save_master && (g_load_master || g_out_path))
 {
  LOGI("--save-master must be used without --load-master or --output.");
  usage(argv[0]);
 }

 if (!g_out_path && !g_save_master)
 {
  LOGI("Output path must be specified.");
  usage(argv[0]);
 }
}
