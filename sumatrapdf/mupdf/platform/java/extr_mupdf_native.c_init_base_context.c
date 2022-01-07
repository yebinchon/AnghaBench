
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JNIEnv ;


 int FZ_LOCK_MAX ;
 int FZ_STORE_DEFAULT ;
 int InitializeCriticalSection (int *) ;
 scalar_t__ TLS_OUT_OF_INDEXES ;
 scalar_t__ TlsAlloc () ;
 int base_context ;
 scalar_t__ context_key ;
 int drop_tls_context ;
 int fz_install_load_system_font_funcs (int ,int ,int ,int ) ;
 int fz_new_context (int *,int *,int ) ;
 int fz_register_document_handlers (int ) ;
 int load_droid_cjk_font ;
 int load_droid_fallback_font ;
 int load_droid_font ;
 int locks ;
 int * mutexes ;
 int pthread_key_create (scalar_t__*,int ) ;
 int pthread_mutex_init (int *,int *) ;

__attribute__((used)) static int init_base_context(JNIEnv *env)
{
 int i;
 pthread_key_create(&context_key, drop_tls_context);


 for (i = 0; i < FZ_LOCK_MAX; i++)



  (void)pthread_mutex_init(&mutexes[i], ((void*)0));


 base_context = fz_new_context(((void*)0), &locks, FZ_STORE_DEFAULT);
 if (!base_context)
  return -1;

 fz_register_document_handlers(base_context);
 return 0;
}
