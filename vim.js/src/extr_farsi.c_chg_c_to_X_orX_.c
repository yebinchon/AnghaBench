
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALEF_ ;

 int ALEF_U_H_ ;

 int AYN_ ;

 int GHAYN_ ;

 int IE_ ;

 int TEE_ ;


 int YEE_ ;
 int YE_ ;

 int _AYN_ ;

 int _GHAYN_ ;

 int _HE_ ;
 int gchar_cursor () ;
 int put_and_redo (int) ;

__attribute__((used)) static void
chg_c_to_X_orX_()
{
    int tempc;

    switch (gchar_cursor())
    {
 case 138:
  tempc = ALEF_;
  break;
 case 137:
  tempc = ALEF_U_H_;
  break;
 case 130:
  tempc = _AYN_;
  break;
 case 136:
  tempc = AYN_;
  break;
 case 129:
  tempc = _GHAYN_;
  break;
 case 135:
  tempc = GHAYN_;
  break;
 case 128:
  tempc = _HE_;
  break;
 case 132:
  tempc = YE_;
  break;
 case 134:
  tempc = IE_;
  break;
 case 133:
  tempc = TEE_;
  break;
 case 131:
  tempc = YEE_;
  break;
 default:
  tempc = 0;
    }

    if (tempc)
 put_and_redo(tempc);
}
