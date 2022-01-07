
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 size_t* encoding_widths ;

__attribute__((used)) static unsigned char *next_text(unsigned char* prev, unsigned char encoding, size_t limit)
{
 unsigned char *text = prev;
 size_t width = encoding_widths[encoding];



 while(text-prev < (ssize_t)limit)
 {
  if(text[0] == 0)
  {
   if(width <= limit-(text-prev))
   {
    size_t i = 1;
    for(; i<width; ++i) if(text[i] != 0) break;

    if(i == width)
    {
     text += width;
     break;
    }
   }
   else return ((void*)0);
  }

  text += width;
 }
 if((size_t)(text-prev) >= limit) text = ((void*)0);

 return text;
}
