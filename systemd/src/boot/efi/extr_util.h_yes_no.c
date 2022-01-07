
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char CHAR16 ;
typedef scalar_t__ BOOLEAN ;



__attribute__((used)) static inline const CHAR16 *yes_no(BOOLEAN b) {
        return b ? L"yes" : L"no";
}
