
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sinkAspects; int sinkAdviseFlag; int * sinkInterface; } ;
typedef int LONG ;
typedef TYPE_1__ DataCache ;
typedef int DWORD ;


 int ADVF_ONLYONCE ;
 int IAdviseSink_OnViewChange (int *,int,int ) ;
 int IAdviseSink_Release (int *) ;
 int TRACE (char*,TYPE_1__*,int,int ) ;

__attribute__((used)) static void DataCache_FireOnViewChange(
  DataCache* this,
  DWORD aspect,
  LONG lindex)
{
  TRACE("(%p, %x, %d)\n", this, aspect, lindex);






  if ((this->sinkAspects & aspect) != 0)
  {
    if (this->sinkInterface != ((void*)0))
    {
      IAdviseSink_OnViewChange(this->sinkInterface,
          aspect,
          lindex);





      if ( (this->sinkAdviseFlag & ADVF_ONLYONCE) != 0)
      {
 IAdviseSink_Release(this->sinkInterface);

 this->sinkInterface = ((void*)0);
 this->sinkAspects = 0;
 this->sinkAdviseFlag = 0;
      }
    }
  }
}
