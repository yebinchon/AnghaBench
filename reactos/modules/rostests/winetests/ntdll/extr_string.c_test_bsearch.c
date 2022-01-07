
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arr ;


 int intcomparefunc ;
 int ok (int,char*,int,...) ;
 int* p_bsearch (int*,int*,int,int,int ) ;

__attribute__((used)) static void test_bsearch(void)
{
    int arr[7] = { 1, 3, 4, 8, 16, 23, 42 };
    int *x, l, i, j;


    for (j=1;j<sizeof(arr)/sizeof(arr[0]);j++) {
        for (i=0;i<j;i++) {
            l = arr[i];
            x = p_bsearch (&l, arr, j, sizeof(arr[0]), intcomparefunc);
            ok (x == &arr[i], "bsearch did not find %d entry in loopsize %d.\n", i, j);
        }
        l = 4242;
        x = p_bsearch (&l, arr, j, sizeof(arr[0]), intcomparefunc);
        ok (x == ((void*)0), "bsearch did find 4242 entry in loopsize %d.\n", j);
    }
}
