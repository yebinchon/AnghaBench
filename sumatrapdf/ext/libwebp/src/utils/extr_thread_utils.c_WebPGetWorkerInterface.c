
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPWorkerInterface ;


 int const g_worker_interface ;

const WebPWorkerInterface* WebPGetWorkerInterface(void) {
  return &g_worker_interface;
}
