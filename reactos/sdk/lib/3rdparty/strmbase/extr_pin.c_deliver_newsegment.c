
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rate; int tStop; int tStart; } ;
typedef TYPE_1__ newsegmentargs ;
typedef TYPE_1__* LPVOID ;
typedef int IPin ;
typedef int HRESULT ;


 int IPin_NewSegment (int *,int ,int ,int ) ;

__attribute__((used)) static HRESULT deliver_newsegment(IPin *pin, LPVOID data)
{
    newsegmentargs *args = data;
    return IPin_NewSegment(pin, args->tStart, args->tStop, args->rate);
}
