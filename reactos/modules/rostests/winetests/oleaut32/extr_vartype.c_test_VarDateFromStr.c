
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wMilliseconds; scalar_t__ wSecond; scalar_t__ wMinute; scalar_t__ wHour; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef char OLECHAR ;
typedef int LCID ;
typedef scalar_t__ HRESULT ;
typedef double DATE ;


 size_t ARRAY_SIZE (char**) ;
 char** BadDateStrings ;
 int DFS (char*) ;
 int EXPECT_DBL (double) ;
 int EXPECT_MISMATCH ;
 int GetSystemTime (TYPE_1__*) ;
 int LANG_ENGLISH ;
 int LANG_GERMAN ;
 int LANG_SPANISH ;
 int LOCALE_NOUSEROVERRIDE ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int MKRELDATE (int,int) ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int SUBLANG_GERMAN ;
 int SUBLANG_SPANISH ;
 scalar_t__ S_OK ;
 scalar_t__ VarDateFromStr (char*,int ,int ,double*) ;

__attribute__((used)) static void test_VarDateFromStr(void)
{
  LCID lcid;
  DATE out, relative;
  HRESULT hres;
  SYSTEMTIME st;
  OLECHAR buff[128];
  size_t i;
  OLECHAR with_ideographic_spaceW[] = { '6','/','3','0','/','2','0','1','1',0x3000,
                                        '1',':','2','0',':','3','4',0 };

  lcid = MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);


  GetSystemTime(&st);
  st.wHour = st.wMinute = st.wSecond = st.wMilliseconds = 0;
  DFS(((void*)0)); EXPECT_MISMATCH;


  DFS("0.0");
  if (hres == S_OK)
    EXPECT_DBL(0.0);
  else
    EXPECT_MISMATCH;


  DFS("1 am"); EXPECT_DBL(0.04166666666666666);




  DFS("0.1"); EXPECT_DBL(0.0006944444444444445);
  DFS("0.40"); EXPECT_DBL(0.02777777777777778);
  DFS("2.5"); EXPECT_DBL(0.08680555555555555);

  DFS("0:1"); EXPECT_DBL(0.0006944444444444445);
  DFS("0:20"); EXPECT_DBL(0.01388888888888889);
  DFS("0:40"); EXPECT_DBL(0.02777777777777778);
  DFS("3:5"); EXPECT_DBL(0.1284722222222222);

  DFS("00:00 AM"); EXPECT_DBL(0.0);
  DFS("00:00 a"); EXPECT_DBL(0.0);
  DFS("12:59 AM"); EXPECT_DBL(0.04097222222222222);
  DFS("12:59 A"); EXPECT_DBL(0.04097222222222222);
  DFS("00:00 pm"); EXPECT_DBL(0.5);
  DFS("00:00 p"); EXPECT_DBL(0.5);
  DFS("12:59 pm"); EXPECT_DBL(0.5409722222222222);
  DFS("12:59 p"); EXPECT_DBL(0.5409722222222222);

  DFS("13:00 AM"); EXPECT_DBL(0.5416666666666666);
  DFS("13:00 PM"); EXPECT_DBL(0.5416666666666666);



  DFS("1 2"); MKRELDATE(2,1); EXPECT_DBL(relative);
  DFS("2 1"); MKRELDATE(1,2); EXPECT_DBL(relative);



  DFS("14 1"); MKRELDATE(14,1); EXPECT_DBL(relative);
  DFS("1 14"); EXPECT_DBL(relative);

  DFS("30 2"); EXPECT_DBL(10990.0);
  DFS("2 30"); EXPECT_DBL(10990.0);
  DFS("32 49"); EXPECT_MISMATCH;
  DFS("0 49"); EXPECT_MISMATCH;

  DFS("Jan 2"); MKRELDATE(2,1); EXPECT_DBL(relative);
  DFS("2 Jan"); EXPECT_DBL(relative);

  DFS("Jan 35"); EXPECT_DBL(12785.0);
  DFS("35 Jan"); EXPECT_DBL(12785.0);
  DFS("Jan-35"); EXPECT_DBL(12785.0);
  DFS("35-Jan"); EXPECT_DBL(12785.0);
  DFS("Jan/35"); EXPECT_DBL(12785.0);
  DFS("35/Jan"); EXPECT_DBL(12785.0);


  DFS("0.1.0"); EXPECT_DBL(0.0006944444444444445);
  DFS("1.5.2"); EXPECT_DBL(0.04516203703703704);

  DFS("1 2 3"); EXPECT_DBL(37623.0);
  DFS("14 2 3"); EXPECT_DBL(41673.0);
  DFS("2 14 3"); EXPECT_DBL(37666.0);
  DFS("2 3 14"); EXPECT_DBL(41673.0);
  DFS("32 2 3"); EXPECT_DBL(11722.0);
  DFS("2 3 32"); EXPECT_DBL(11722.0);
  DFS("1 2 29"); EXPECT_DBL(47120.0);

  DFS("1 2 30"); EXPECT_DBL(10960.0);
  DFS("1 2 31"); EXPECT_DBL(11325.0);
  DFS("3 am 1 2"); MKRELDATE(2,1); relative += 0.125; EXPECT_DBL(relative);
  DFS("1 2 3 am"); EXPECT_DBL(relative);


  DFS("1.2 3 4"); MKRELDATE(4,3); relative += 0.04305555556; EXPECT_DBL(relative);
  DFS("3 4 1.2"); EXPECT_DBL(relative);

  DFS("1.2.3 4 5"); MKRELDATE(5,4); relative += 0.04309027778; EXPECT_DBL(relative);
  DFS("1.2 3 4 5"); EXPECT_DBL(38415.04305555556);




  DFS("1 2 3 4.5"); EXPECT_DBL(37623.17013888889);

  DFS("1.2.3 4 5 6"); EXPECT_DBL(38812.04309027778);
  DFS("1 2 3 4.5.6"); EXPECT_DBL(37623.17020833334);

  for (i = 0; i < ARRAY_SIZE(BadDateStrings); i++)
  {
    DFS(BadDateStrings[i]); EXPECT_MISMATCH;
  }


  DFS("2 January, 1970"); EXPECT_DBL(25570.0);
  DFS("2 January 1970"); EXPECT_DBL(25570.0);
  DFS("2 Jan 1970"); EXPECT_DBL(25570.0);
  DFS("2/Jan/1970"); EXPECT_DBL(25570.0);
  DFS("2-Jan-1970"); EXPECT_DBL(25570.0);
  DFS("1 2 1970"); EXPECT_DBL(25570.0);
  DFS("1/2/1970"); EXPECT_DBL(25570.0);
  DFS("1-2-1970"); EXPECT_DBL(25570.0);
  DFS("13-1-1970"); EXPECT_DBL(25581.0);
  DFS("1970-1-13"); EXPECT_DBL(25581.0);
  DFS("6/30/2011 01:20:34"); EXPECT_DBL(40724.05594907407);
  DFS("6/30/2011 01:20:34 AM"); EXPECT_DBL(40724.05594907407);
  DFS("6/30/2011 01:20:34 PM"); EXPECT_DBL(40724.55594907407);
  DFS("2013-05-14 02:04:12"); EXPECT_DBL(41408.08625000001);
  DFS("2013-05-14 02:04:12.017000000"); EXPECT_MISMATCH;



  out = 0.0;
  hres = VarDateFromStr(with_ideographic_spaceW, lcid, LOCALE_NOUSEROVERRIDE, &out);
  EXPECT_DBL(40724.05594907407);


  DFS("02.01.1970"); EXPECT_MISMATCH;
  DFS("02.01.1970 00:00:00"); EXPECT_MISMATCH;
  lcid = MAKELCID(MAKELANGID(LANG_GERMAN,SUBLANG_GERMAN),SORT_DEFAULT);
  DFS("02.01.1970"); EXPECT_DBL(25570.0);
  DFS("02.13.1970"); EXPECT_DBL(25612.0);
  DFS("02-13-1970"); EXPECT_DBL(25612.0);
  DFS("2020-01-11"); EXPECT_DBL(43841.0);
  DFS("2173-10-14"); EXPECT_DBL(100000.0);

  DFS("02.01.1970 00:00:00"); EXPECT_DBL(25570.0);
  lcid = MAKELCID(MAKELANGID(LANG_SPANISH,SUBLANG_SPANISH),SORT_DEFAULT);
  DFS("02.01.1970"); EXPECT_MISMATCH;
  DFS("02.01.1970 00:00:00"); EXPECT_MISMATCH;
}
