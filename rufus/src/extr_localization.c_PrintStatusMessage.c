
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SBT_OWNERDRAW ;
 int SB_SECTION_LEFT ;
 int SB_SETTEXTW ;
 int SendMessageLU (int ,int ,int,char*) ;
 int hStatus ;

__attribute__((used)) static void PrintStatusMessage(char* msg) {
 SendMessageLU(hStatus, SB_SETTEXTW, SBT_OWNERDRAW | SB_SECTION_LEFT, msg);
}
