
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_10__ {int Year; int Month; int Day; scalar_t__ Minute; scalar_t__ Second; int Hour; } ;
struct TYPE_9__ {int QuadPart; } ;
struct TYPE_8__ {int Year; int Month; int Day; scalar_t__ Minute; scalar_t__ Second; int Hour; } ;
typedef TYPE_1__ TIME_FIELDS ;
typedef int LONGLONG ;
typedef TYPE_2__ LARGE_INTEGER ;


 size_t IsLeapYear (int) ;
 int** MonthLengths ;
 int SECSPERDAY ;
 int TICKSPERSEC ;
 int ok (int,char*,int,int,int,int,scalar_t__,scalar_t__,int,...) ;
 int pRtlTimeFieldsToTime (TYPE_1__*,TYPE_2__*) ;
 int pRtlTimeToTimeFields (TYPE_2__*,TYPE_1__*) ;
 TYPE_3__ tftest ;

__attribute__((used)) static void test_pRtlTimeToTimeFields(void)
{
    LARGE_INTEGER litime , liresult;
    TIME_FIELDS tfresult;
    int i=0;
    litime.QuadPart = ((ULONGLONG)0x0144017a << 32) | 0xf0b0a980;
    while( tftest.Year < 2110 ) {

        pRtlTimeToTimeFields( &litime, &tfresult);
        ok( tfresult.Year == tftest.Year && tfresult.Month == tftest.Month &&
            tfresult.Day == tftest.Day && tfresult.Hour == tftest.Hour &&
            tfresult.Minute == tftest.Minute && tfresult.Second == tftest.Second,
            "#%d expected: %d-%d-%d %d:%d:%d  got:  %d-%d-%d %d:%d:%d\n", ++i,
            tftest.Year, tftest.Month, tftest.Day,
            tftest.Hour, tftest.Minute,tftest.Second,
            tfresult.Year, tfresult.Month, tfresult.Day,
            tfresult.Hour, tfresult.Minute, tfresult.Second);

        pRtlTimeFieldsToTime( &tfresult, &liresult);
        ok( liresult.QuadPart == litime.QuadPart," TimeFieldsToTime failed on %d-%d-%d %d:%d:%d. Error is %d ticks\n",
            tfresult.Year, tfresult.Month, tfresult.Day,
            tfresult.Hour, tfresult.Minute, tfresult.Second,
            (int) (liresult.QuadPart - litime.QuadPart) );

        litime.QuadPart += TICKSPERSEC ;
        pRtlTimeToTimeFields( &litime, &tfresult);
        ok( tfresult.Year == tftest.Year + (tftest.Month ==12) &&
            tfresult.Month == tftest.Month % 12 + 1 &&
            tfresult.Day == 1 && tfresult.Hour == 0 &&
            tfresult.Minute == 0 && tfresult.Second == 0,
            "#%d expected: %d-%d-%d %d:%d:%d  got:  %d-%d-%d %d:%d:%d\n", ++i,
            tftest.Year + (tftest.Month ==12),
            tftest.Month % 12 + 1, 1, 0, 0, 0,
            tfresult.Year, tfresult.Month, tfresult.Day,
            tfresult.Hour, tfresult.Minute, tfresult.Second);

        pRtlTimeFieldsToTime( &tfresult, &liresult);
        ok( liresult.QuadPart == litime.QuadPart," TimeFieldsToTime failed on %d-%d-%d %d:%d:%d. Error is %d ticks\n",
            tfresult.Year, tfresult.Month, tfresult.Day,
            tfresult.Hour, tfresult.Minute, tfresult.Second,
            (int) (liresult.QuadPart - litime.QuadPart) );

        litime.QuadPart -= TICKSPERSEC ;
        if( tftest.Month == 12) {
            tftest.Month = 1;
            tftest.Year += 1;
        } else
            tftest.Month += 1;
        tftest.Day = MonthLengths[IsLeapYear(tftest.Year)][tftest.Month - 1];
        litime.QuadPart += (LONGLONG) tftest.Day * TICKSPERSEC * SECSPERDAY;
    }
}
