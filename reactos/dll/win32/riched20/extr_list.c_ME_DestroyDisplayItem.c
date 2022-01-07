
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int entry; } ;
struct TYPE_8__ {int style; TYPE_3__* clusters; TYPE_3__* glyphs; TYPE_6__* reobj; } ;
struct TYPE_7__ {TYPE_2__ run; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ member; } ;
typedef TYPE_3__ ME_DisplayItem ;


 int ME_DeleteReObject (TYPE_6__*) ;
 int ME_GetDITypeName (scalar_t__) ;
 int ME_ReleaseStyle (int ) ;
 int TRACE (char*,int ) ;
 scalar_t__ diRun ;
 int heap_free (TYPE_3__*) ;
 int list_remove (int *) ;

void ME_DestroyDisplayItem(ME_DisplayItem *item)
{
  if (0)
    TRACE("type=%s\n", ME_GetDITypeName(item->type));
  if (item->type==diRun)
  {
    if (item->member.run.reobj)
    {
      list_remove(&item->member.run.reobj->entry);
      ME_DeleteReObject(item->member.run.reobj);
    }
    heap_free( item->member.run.glyphs );
    heap_free( item->member.run.clusters );
    ME_ReleaseStyle(item->member.run.style);
  }
  heap_free(item);
}
