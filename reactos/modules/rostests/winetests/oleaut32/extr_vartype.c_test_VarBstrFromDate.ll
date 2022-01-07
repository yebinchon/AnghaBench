; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarBstrFromDate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarBstrFromDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"12:00:00 AM\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"1/2/1900 8:09:36 AM\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"2/20/1909 8:09:36 AM\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"12/30/1900\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"12/30/1900 6:00:00 AM\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"12/31/1903\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"12/31/1903 12:00:00 PM\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"4/24/1765 5:45:36 AM\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"1/1/100\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"12/31/9999\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarBstrFromDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarBstrFromDate() #0 {
  %1 = call i32 (double, i8*, i32, ...) bitcast (i32 (...)* @_BSTR_DATE to i32 (double, i8*, i32, ...)*)(double 0.000000e+00, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 21)
  %2 = call i32 (double, i8*, i32, ...) bitcast (i32 (...)* @_BSTR_DATE to i32 (double, i8*, i32, ...)*)(double 3.340000e+00, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 22)
  %3 = call i32 (double, i8*, i32, ...) bitcast (i32 (...)* @_BSTR_DATE to i32 (double, i8*, i32, ...)*)(double 3.339340e+03, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 23)
  %4 = call i32 (double, i8*, i32, ...) bitcast (i32 (...)* @_BSTR_DATE to i32 (double, i8*, i32, ...)*)(double 3.650000e+02, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 24)
  %5 = call i32 (double, i8*, i32, ...) bitcast (i32 (...)* @_BSTR_DATE to i32 (double, i8*, i32, ...)*)(double 3.652500e+02, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 25)
  %6 = call i32 (double, i8*, i32, ...) bitcast (i32 (...)* @_BSTR_DATE to i32 (double, i8*, i32, ...)*)(double 1.461000e+03, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 26)
  %7 = call i32 (double, i8*, i32, ...) bitcast (i32 (...)* @_BSTR_DATE to i32 (double, i8*, i32, ...)*)(double 1.461500e+03, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 27)
  %8 = call i32 (double, i8*, i32, ...) bitcast (i32 (...)* @_BSTR_DATE to i32 (double, i8*, i32, ...)*)(double 0xC0E80507AE147AE1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 28)
  %9 = call i32 (double, i8*, i32, ...) bitcast (i32 (...)* @_BSTR_DATE to i32 (double, i8*, i32, ...)*)(double -6.574340e+05, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 29)
  %10 = call i32 (double, i8*, i32, ...) bitcast (i32 (...)* @_BSTR_DATE to i32 (double, i8*, i32, ...)*)(double 0x4146924080000000, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 30)
  ret void
}

declare dso_local i32 @_BSTR_DATE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
