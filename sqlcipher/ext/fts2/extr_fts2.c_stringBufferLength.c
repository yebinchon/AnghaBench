
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nData; } ;
struct TYPE_5__ {TYPE_1__ b; } ;
typedef TYPE_2__ StringBuffer ;



__attribute__((used)) static int stringBufferLength(StringBuffer *sb){
  return sb->b.nData-1;
}
