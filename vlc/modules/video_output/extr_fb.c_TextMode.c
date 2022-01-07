
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDSETMODE ;
 int KD_TEXT ;
 int ioctl (int,int ,int ) ;

__attribute__((used)) static void TextMode(int tty)
{

    if (-1 == ioctl(tty, KDSETMODE, KD_TEXT)) {

    }
}
