
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int HWND ;


 int CBEM_DELETEITEM ;
 int SendMessageA (int ,int ,int,int ) ;

__attribute__((used)) static LONG delItem(HWND cbex, int idx) {
    return SendMessageA(cbex, CBEM_DELETEITEM, idx, 0);
}
