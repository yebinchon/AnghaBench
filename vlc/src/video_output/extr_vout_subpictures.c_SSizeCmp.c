
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;



__attribute__((used)) static int SSizeCmp(ssize_t i0, ssize_t i1)
{
    return i0 < i1 ? -1 : i0 > i1 ? 1 : 0;
}
