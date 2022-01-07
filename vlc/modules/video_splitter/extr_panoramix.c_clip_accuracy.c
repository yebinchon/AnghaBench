
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACCURACY ;

__attribute__((used)) static inline int clip_accuracy( int a )
{
    return (a > ACCURACY) ? ACCURACY : (a < 0) ? 0 : a;
}
