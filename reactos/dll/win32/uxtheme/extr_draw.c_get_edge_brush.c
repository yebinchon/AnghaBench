
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HTHEME ;
typedef int HBRUSH ;


 int CreateSolidBrush (int ) ;
 int get_edge_color (int,int ,int,int) ;

__attribute__((used)) static inline HBRUSH get_edge_brush (int edgeType, HTHEME theme, int part, int state)
{
    return CreateSolidBrush (get_edge_color (edgeType, theme, part, state));
}
