
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDPCLIENT ;


 unsigned int seamless_send (int *,char*,char*,unsigned long,int,int,int,int,unsigned long) ;

unsigned int
seamless_send_position(RDPCLIENT * This, unsigned long id, int x, int y, int width, int height, unsigned long flags)
{
 return seamless_send(This, "POSITION", "0x%08lx,%d,%d,%d,%d,0x%lx", id, x, y, width, height,
        flags);
}
