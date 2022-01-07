
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPARE_CACHE (int ) ;
 int EXPECT_CHAIN (int,int,int,int) ;
 int FlushMessages () ;
 int OwnerZOrder1A_chain ;
 int OwnerZOrder1B_chain ;
 int OwnerZOrder2A_chain ;
 int OwnerZOrder2B_chain ;
 int OwnerZOrder3A_chain ;
 int OwnerZOrder3B_chain ;
 int OwnerZOrder4A_chain ;
 int OwnerZOrder4B_chain ;
 int OwnerZOrder5A_chain ;
 int OwnerZOrder5B_chain ;
 int OwnerZOrderAParams ;
 int OwnerZOrderBParams ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int ) ;
 int hWnd1 ;
 int hWnd2 ;
 int hWnd3 ;
 int hWnd4 ;
 int set_default_pos () ;

__attribute__((used)) static void Test_DWP_OwnerZOrder()
{
    EXPECT_CHAIN(4,3,1,2);




    SetWindowPos(hWnd1, 0, 0,0,0,0, OwnerZOrderAParams);
    FlushMessages();
    COMPARE_CACHE(OwnerZOrder1A_chain);
    EXPECT_CHAIN(4,3,1,2);

    SetWindowPos(hWnd2, 0, 0,0,0,0, OwnerZOrderAParams);
    FlushMessages();
    COMPARE_CACHE(OwnerZOrder2A_chain);
    EXPECT_CHAIN(2,4,3,1);

    SetWindowPos(hWnd3, 0, 0,0,0,0, OwnerZOrderAParams);
    FlushMessages();
    COMPARE_CACHE(OwnerZOrder3A_chain);
    EXPECT_CHAIN(3,4,1,2);

    SetWindowPos(hWnd1, 0, 0,0,0,0, OwnerZOrderAParams);
    FlushMessages();
    COMPARE_CACHE(OwnerZOrder4A_chain);
    EXPECT_CHAIN(3,4,1,2);

    SetWindowPos(hWnd4, 0, 0,0,0,0, OwnerZOrderAParams);
    FlushMessages();
    COMPARE_CACHE(OwnerZOrder5A_chain);
    EXPECT_CHAIN(4,3,1,2);







    set_default_pos();
    EXPECT_CHAIN(4,3,2,1);

    SetWindowPos(hWnd1, 0, 0,0,0,0, OwnerZOrderBParams);
    FlushMessages();
    COMPARE_CACHE(OwnerZOrder1B_chain);
    EXPECT_CHAIN(1,4,3,2);

    SetWindowPos(hWnd2, 0, 0,0,0,0, OwnerZOrderBParams);
    FlushMessages();
    COMPARE_CACHE(OwnerZOrder2B_chain);
    EXPECT_CHAIN(2,1,4,3);

    SetWindowPos(hWnd3, 0, 0,0,0,0, OwnerZOrderBParams);
    FlushMessages();
    COMPARE_CACHE(OwnerZOrder3B_chain);
    EXPECT_CHAIN(3,2,1,4);

    SetWindowPos(hWnd1, 0, 0,0,0,0, OwnerZOrderBParams);
    FlushMessages();
    COMPARE_CACHE(OwnerZOrder4B_chain);
    EXPECT_CHAIN(1,3,2,4);

    SetWindowPos(hWnd4, 0, 0,0,0,0, OwnerZOrderBParams);
    FlushMessages();
    COMPARE_CACHE(OwnerZOrder5B_chain);
    EXPECT_CHAIN(4,1,3,2);

}
