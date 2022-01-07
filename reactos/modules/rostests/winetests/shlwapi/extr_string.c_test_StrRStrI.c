
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPWSTR ;
typedef int LPSTR ;
typedef char CHAR ;


 int A ;
 int W ;
 int check_strrstri (int ,char const*,int,char const*,char const*) ;

__attribute__((used)) static void test_StrRStrI(void)
{
    static const CHAR szTest[] = "yAxxxxAy";
    static const CHAR szTest2[] = "ABABABAB";
    static const WCHAR wszTest[] = {'y','A','x','x','x','x','A','y',0};
    static const WCHAR wszTest2[] = {'A','B','A','B','A','B','A','B',0};

    static const WCHAR wszPattern1[] = {'A',0};
    static const WCHAR wszPattern2[] = {'a','X',0};
    static const WCHAR wszPattern3[] = {'A','y',0};
    static const WCHAR wszPattern4[] = {'a','b',0};
    LPWSTR retW;
    LPSTR retA;

    check_strrstri(A, szTest, 4, "A", szTest+1);
    check_strrstri(A, szTest, 4, "aX", szTest+1);
    check_strrstri(A, szTest, 4, "Ay", ((void*)0));
    check_strrstri(W, wszTest, 4, wszPattern1, wszTest+1);
    check_strrstri(W, wszTest, 4, wszPattern2, wszTest+1);
    check_strrstri(W, wszTest, 4, wszPattern3, ((void*)0));

    check_strrstri(A, szTest2, 4, "ab", szTest2+2);
    check_strrstri(A, szTest2, 3, "ab", szTest2+2);
    check_strrstri(A, szTest2, 2, "ab", szTest2);
    check_strrstri(A, szTest2, 1, "ab", szTest2);
    check_strrstri(A, szTest2, 0, "ab", ((void*)0));
    check_strrstri(W, wszTest2, 4, wszPattern4, wszTest2+2);
    check_strrstri(W, wszTest2, 3, wszPattern4, wszTest2+2);
    check_strrstri(W, wszTest2, 2, wszPattern4, wszTest2);
    check_strrstri(W, wszTest2, 1, wszPattern4, wszTest2);
    check_strrstri(W, wszTest2, 0, wszPattern4, ((void*)0));

}
