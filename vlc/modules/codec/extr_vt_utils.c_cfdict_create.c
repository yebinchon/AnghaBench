
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CFMutableDictionaryRef ;
typedef int CFIndex ;


 int CFDictionaryCreateMutable (int ,int ,int *,int *) ;
 int kCFAllocatorDefault ;
 int kCFTypeDictionaryKeyCallBacks ;
 int kCFTypeDictionaryValueCallBacks ;

CFMutableDictionaryRef
cfdict_create(CFIndex capacity)
{
    return CFDictionaryCreateMutable(kCFAllocatorDefault, capacity,
                                     &kCFTypeDictionaryKeyCallBacks,
                                     &kCFTypeDictionaryValueCallBacks);
}
