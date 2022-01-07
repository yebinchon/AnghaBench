; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarDecFromStr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarDecFromStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCID = common dso_local global i32 0, align 4
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@in = common dso_local global i32 0, align 4
@VarDecFromStr = common dso_local global i32 0, align 4
@EXPECT_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@LOCALE_NOUSEROVERRIDE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"4294967296\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"18446744073709551616\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"4294967296.0\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"18446744073709551616.0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarDecFromStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarDecFromStr() #0 {
  %1 = alloca [128 x i32], align 16
  %2 = load i32, i32* @LCID, align 4
  %3 = call i32 @CONVVARS(i32 %2)
  %4 = load i32, i32* @LANG_ENGLISH, align 4
  %5 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %6 = call i32 @MAKELANGID(i32 %4, i32 %5)
  %7 = load i32, i32* @SORT_DEFAULT, align 4
  %8 = call i32 @MAKELCID(i32 %6, i32 %7)
  store i32 %8, i32* @in, align 4
  %9 = load i32, i32* @VarDecFromStr, align 4
  %10 = call i32 @CONVERT_STR(i32 %9, i8* null, i32 0)
  %11 = load i32, i32* @EXPECT_MISMATCH, align 4
  %12 = load i32, i32* @VarDecFromStr, align 4
  %13 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %14 = call i32 @CONVERT_STR(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @EXPECTDEC(i32 0, i32 128, i32 0, i32 1)
  %16 = load i32, i32* @VarDecFromStr, align 4
  %17 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %18 = call i32 @CONVERT_STR(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = call i32 @EXPECTDEC(i32 0, i32 0, i32 0, i32 0)
  %20 = load i32, i32* @VarDecFromStr, align 4
  %21 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %22 = call i32 @CONVERT_STR(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = call i32 @EXPECTDEC(i32 0, i32 0, i32 0, i32 1)
  %24 = load i32, i32* @VarDecFromStr, align 4
  %25 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %26 = call i32 @CONVERT_STR(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = call i32 @EXPECTDEC(i32 1, i32 0, i32 0, i32 5)
  %28 = load i32, i32* @VarDecFromStr, align 4
  %29 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %30 = call i32 @CONVERT_STR(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = call i32 @EXPECTDEC64(i32 0, i32 0, i32 0, i32 1, i32 0)
  %32 = load i32, i32* @VarDecFromStr, align 4
  %33 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %34 = call i32 @CONVERT_STR(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = call i32 @EXPECTDEC(i32 0, i32 0, i32 1, i32 0)
  %36 = load i32, i32* @VarDecFromStr, align 4
  %37 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %38 = call i32 @CONVERT_STR(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %37)
  %39 = call i32 @EXPECTDEC64(i32 0, i32 0, i32 0, i32 1, i32 0)
  %40 = load i32, i32* @VarDecFromStr, align 4
  %41 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %42 = call i32 @CONVERT_STR(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %41)
  %43 = call i32 @EXPECTDEC(i32 0, i32 0, i32 1, i32 0)
  ret void
}

declare dso_local i32 @CONVVARS(i32) #1

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @CONVERT_STR(i32, i8*, i32) #1

declare dso_local i32 @EXPECTDEC(i32, i32, i32, i32) #1

declare dso_local i32 @EXPECTDEC64(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
