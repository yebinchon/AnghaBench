
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * End; int * Execute; int * Launch; int * Sync; int * Reset; int * Init; } ;
typedef TYPE_1__ WebPWorkerInterface ;


 TYPE_1__ g_worker_interface ;

int WebPSetWorkerInterface(const WebPWorkerInterface* const winterface) {
  if (winterface == ((void*)0) ||
      winterface->Init == ((void*)0) || winterface->Reset == ((void*)0) ||
      winterface->Sync == ((void*)0) || winterface->Launch == ((void*)0) ||
      winterface->Execute == ((void*)0) || winterface->End == ((void*)0)) {
    return 0;
  }
  g_worker_interface = *winterface;
  return 1;
}
