
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_4__ {char xferType; char xferMode; int isUnix; scalar_t__ deleted; scalar_t__ lastCall; void* hasPASV; void* hasUTIME; void* hasMDTM; void* hasSIZE; } ;
typedef TYPE_1__* BookmarkPtr ;
typedef int Bookmark ;


 void* kCommandAvailabilityUnknown ;
 int memset (TYPE_1__*,int ,int) ;

void
SetBookmarkDefaults(BookmarkPtr bmp)
{
 (void) memset(bmp, 0, sizeof(Bookmark));

 bmp->xferType = 'I';
 bmp->xferMode = 'S';
 bmp->hasSIZE = kCommandAvailabilityUnknown;
 bmp->hasMDTM = kCommandAvailabilityUnknown;
 bmp->hasUTIME = kCommandAvailabilityUnknown;
 bmp->hasPASV = kCommandAvailabilityUnknown;
 bmp->isUnix = 1;
 bmp->lastCall = (time_t) 0;
 bmp->deleted = 0;
}
