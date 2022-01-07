
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
typedef size_t cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_7__ {int (* Seek ) (int ,TYPE_1__*,scalar_t__) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_8__ {scalar_t__* Offsets; int* Sizes; } ;
typedef TYPE_2__ _cmsDICelem ;


 int FALSE ;
 int TRUE ;
 int _cmsFree (int ,scalar_t__*) ;
 scalar_t__ _cmsMallocZero (int ,size_t) ;
 int _cmsReadWCharArray (int ,TYPE_1__*,size_t,scalar_t__*) ;
 int stub1 (int ,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static
cmsBool ReadOneWChar(cmsContext ContextID, cmsIOHANDLER* io, _cmsDICelem* e, cmsUInt32Number i, wchar_t ** wcstr)
{

    cmsUInt32Number nChars;



      if (e -> Offsets[i] == 0) {

          *wcstr = ((void*)0);
          return TRUE;
      }

      if (!io -> Seek(ContextID, io, e -> Offsets[i])) return FALSE;

      nChars = e ->Sizes[i] / sizeof(cmsUInt16Number);


      *wcstr = (wchar_t*) _cmsMallocZero(ContextID, (nChars + 1) * sizeof(wchar_t));
      if (*wcstr == ((void*)0)) return FALSE;

      if (!_cmsReadWCharArray(ContextID, io, nChars, *wcstr)) {
          _cmsFree(ContextID, *wcstr);
          return FALSE;
      }


      (*wcstr)[nChars] = 0;
      return TRUE;
}
