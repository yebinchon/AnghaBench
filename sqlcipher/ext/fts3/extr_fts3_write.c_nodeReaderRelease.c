
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; } ;
struct TYPE_5__ {TYPE_1__ term; } ;
typedef TYPE_2__ NodeReader ;


 int sqlite3_free (int ) ;

__attribute__((used)) static void nodeReaderRelease(NodeReader *p){
  sqlite3_free(p->term.a);
}
