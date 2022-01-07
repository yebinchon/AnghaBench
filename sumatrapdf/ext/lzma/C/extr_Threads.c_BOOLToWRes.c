
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef scalar_t__ BOOL ;


 int GetError () ;

WRes BOOLToWRes(BOOL v) { return v ? 0 : GetError(); }
