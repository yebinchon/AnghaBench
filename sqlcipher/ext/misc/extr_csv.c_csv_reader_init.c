
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* zErr; scalar_t__ zIn; scalar_t__ nIn; scalar_t__ bNotFirst; scalar_t__ nLine; scalar_t__ nAlloc; scalar_t__ n; scalar_t__ z; scalar_t__ in; } ;
typedef TYPE_1__ CsvReader ;



__attribute__((used)) static void csv_reader_init(CsvReader *p){
  p->in = 0;
  p->z = 0;
  p->n = 0;
  p->nAlloc = 0;
  p->nLine = 0;
  p->bNotFirst = 0;
  p->nIn = 0;
  p->zIn = 0;
  p->zErr[0] = 0;
}
