
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread; } ;
typedef TYPE_1__ MuOfficeDoc ;


 int mu_destroy_thread (int *) ;

__attribute__((used)) static void
ensure_doc_loaded(MuOfficeDoc *doc)
{
 if (doc == ((void*)0))
  return;

 mu_destroy_thread(&doc->thread);
}
