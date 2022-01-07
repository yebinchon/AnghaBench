
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;


 int MATRIX_DET_TOLERANCE ;
 int PLUS_INF ;
 int cmsUNUSED_PARAMETER (int ) ;
 int fabs (int const) ;
 int const log (int const) ;
 int const log10 (int) ;
 int const pow (int const,int const) ;

__attribute__((used)) static
cmsFloat64Number DefaultEvalParametricFn(cmsContext ContextID, cmsInt32Number Type, const cmsFloat64Number Params[], cmsFloat64Number R)
{
    cmsFloat64Number e, Val, disc;
    cmsUNUSED_PARAMETER(ContextID);

    switch (Type) {


    case 1:
        if (R < 0) {

            if (fabs(Params[0] - 1.0) < MATRIX_DET_TOLERANCE)
                Val = R;
            else
                Val = 0;
        }
        else
            Val = pow(R, Params[0]);
        break;


    case -1:
        if (R < 0) {

            if (fabs(Params[0] - 1.0) < MATRIX_DET_TOLERANCE)
                Val = R;
            else
                Val = 0;
        }
        else
        {
            if (fabs(Params[0]) < MATRIX_DET_TOLERANCE)
                Val = PLUS_INF;
            else
                Val = pow(R, 1 / Params[0]);
        }
        break;




    case 2:
    {

        if (fabs(Params[1]) < MATRIX_DET_TOLERANCE)
        {
            Val = 0;
        }
        else
        {
            disc = -Params[2] / Params[1];

            if (R >= disc) {

                e = Params[1] * R + Params[2];

                if (e > 0)
                    Val = pow(e, Params[0]);
                else
                    Val = 0;
            }
            else
                Val = 0;
        }
    }
    break;



     case -2:
     {
         if (fabs(Params[0]) < MATRIX_DET_TOLERANCE ||
             fabs(Params[1]) < MATRIX_DET_TOLERANCE)
         {
             Val = 0;
         }
         else
         {
             if (R < 0)
                 Val = 0;
             else
                 Val = (pow(R, 1.0 / Params[0]) - Params[2]) / Params[1];

             if (Val < 0)
                 Val = 0;
         }
     }
     break;





    case 3:
    {
        if (fabs(Params[1]) < MATRIX_DET_TOLERANCE)
        {
            Val = 0;
        }
        else
        {
            disc = -Params[2] / Params[1];
            if (disc < 0)
                disc = 0;

            if (R >= disc) {

                e = Params[1] * R + Params[2];

                if (e > 0)
                    Val = pow(e, Params[0]) + Params[3];
                else
                    Val = 0;
            }
            else
                Val = Params[3];
        }
    }
    break;





    case -3:
    {
        if (fabs(Params[1]) < MATRIX_DET_TOLERANCE)
        {
            Val = 0;
        }
        else
        {
            if (R >= Params[3]) {

                e = R - Params[3];

                if (e > 0)
                    Val = (pow(e, 1 / Params[0]) - Params[2]) / Params[1];
                else
                    Val = 0;
            }
            else {
                Val = -Params[2] / Params[1];
            }
        }
    }
    break;





    case 4:
        if (R >= Params[4]) {

            e = Params[1]*R + Params[2];

            if (e > 0)
                Val = pow(e, Params[0]);
            else
                Val = 0;
        }
        else
            Val = R * Params[3];
        break;




    case -4:
    {
        if (fabs(Params[0]) < MATRIX_DET_TOLERANCE ||
            fabs(Params[1]) < MATRIX_DET_TOLERANCE ||
            fabs(Params[3]) < MATRIX_DET_TOLERANCE)
        {
            Val = 0;
        }
        else
        {
            e = Params[1] * Params[4] + Params[2];
            if (e < 0)
                disc = 0;
            else
                disc = pow(e, Params[0]);

            if (R >= disc) {

                Val = (pow(R, 1.0 / Params[0]) - Params[2]) / Params[1];
            }
            else {
                Val = R / Params[3];
            }
        }
    }
    break;




    case 5:
        if (R >= Params[4]) {

            e = Params[1]*R + Params[2];

            if (e > 0)
                Val = pow(e, Params[0]) + Params[5];
            else
                Val = Params[5];
        }
        else
            Val = R*Params[3] + Params[6];
        break;





    case -5:
    {
        if (fabs(Params[1]) < MATRIX_DET_TOLERANCE ||
            fabs(Params[3]) < MATRIX_DET_TOLERANCE)
        {
            Val = 0;
        }
        else
        {
            disc = Params[3] * Params[4] + Params[6];
            if (R >= disc) {

                e = R - Params[5];
                if (e < 0)
                    Val = 0;
                else
                    Val = (pow(e, 1.0 / Params[0]) - Params[2]) / Params[1];
            }
            else {
                Val = (R - Params[6]) / Params[3];
            }
        }
    }
    break;






    case 6:
        e = Params[1]*R + Params[2];

        if (e < 0)
            Val = Params[3];
        else
            Val = pow(e, Params[0]) + Params[3];
        break;


    case -6:
    {
        if (fabs(Params[1]) < MATRIX_DET_TOLERANCE)
        {
            Val = 0;
        }
        else
        {
            e = R - Params[3];
            if (e < 0)
                Val = 0;
            else
                Val = (pow(e, 1.0 / Params[0]) - Params[2]) / Params[1];
        }
    }
    break;



    case 7:

       e = Params[2] * pow(R, Params[0]) + Params[3];
       if (e <= 0)
           Val = Params[4];
       else
           Val = Params[1]*log10(e) + Params[4];
       break;




    case -7:
    {
        if (fabs(Params[0]) < MATRIX_DET_TOLERANCE ||
            fabs(Params[1]) < MATRIX_DET_TOLERANCE ||
            fabs(Params[2]) < MATRIX_DET_TOLERANCE)
        {
            Val = 0;
        }
        else
        {
            Val = pow((pow(10.0, (R - Params[4]) / Params[1]) - Params[3]) / Params[2], 1.0 / Params[0]);
        }
    }
    break;



   case 8:
       Val = (Params[0] * pow(Params[1], Params[2] * R + Params[3]) + Params[4]);
       break;




   case -8:

       disc = R - Params[4];
       if (disc < 0) Val = 0;
       else
       {
           if (fabs(Params[0]) < MATRIX_DET_TOLERANCE ||
               fabs(Params[2]) < MATRIX_DET_TOLERANCE)
           {
               Val = 0;
           }
           else
           {
               Val = (log(disc / Params[0]) / log(Params[1]) - Params[3]) / Params[2];
           }
       }
       break;


   case 108:
       if (fabs(Params[0]) < MATRIX_DET_TOLERANCE)
           Val = 0;
       else
           Val = pow(1.0 - pow(1 - R, 1/Params[0]), 1/Params[0]);
      break;






    case -108:
        Val = 1 - pow(1 - pow(R, Params[0]), Params[0]);
        break;

    default:

        return 0;
    }

    return Val;
}
