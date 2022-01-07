
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int WCHAR ;
typedef int BOOL ;


 int C1_DIGIT ;
 int CT_CTYPE1 ;
 int GetStringTypeW (int ,int *,int,int*) ;

__attribute__((used)) static inline BOOL isdigitW( WCHAR wc )
{
    WORD type;
    GetStringTypeW( CT_CTYPE1, &wc, 1, &type );
    return type & C1_DIGIT;
}
