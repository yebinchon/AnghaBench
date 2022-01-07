; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarR4FromStr.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarR4FromStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCID = common dso_local global i32 0, align 4
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@in = common dso_local global i32 0, align 4
@VarR4FromStr = common dso_local global i32 0, align 4
@EXPECT_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-1.5\00", align 1
@LOCALE_NOUSEROVERRIDE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"-0.6\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-0.5\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"-0.4\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"0.4\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"0.6\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarR4FromStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarR4FromStr() #0 {
  %1 = alloca [128 x i32], align 16
  %2 = load i32, i32* @LCID, align 4
  %3 = call i32 @CONVVARS(i32 %2)
  %4 = load i32, i32* @LANG_ENGLISH, align 4
  %5 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %6 = call i32 @MAKELANGID(i32 %4, i32 %5)
  %7 = load i32, i32* @SORT_DEFAULT, align 4
  %8 = call i32 @MAKELCID(i32 %6, i32 %7)
  store i32 %8, i32* @in, align 4
  %9 = load i32, i32* @VarR4FromStr, align 4
  %10 = call i32 @CONVERT_STR(i32 %9, i8* null, i32 0)
  %11 = load i32, i32* @EXPECT_MISMATCH, align 4
  %12 = load i32, i32* @VarR4FromStr, align 4
  %13 = call i32 @CONVERT_STR(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  %14 = call i32 @EXPECT(float -1.000000e+00)
  %15 = load i32, i32* @VarR4FromStr, align 4
  %16 = call i32 @CONVERT_STR(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %17 = call i32 @EXPECT(float 0.000000e+00)
  %18 = load i32, i32* @VarR4FromStr, align 4
  %19 = call i32 @CONVERT_STR(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %20 = call i32 @EXPECT(float 1.000000e+00)
  %21 = load i32, i32* @VarR4FromStr, align 4
  %22 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %23 = call i32 @CONVERT_STR(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = call i32 @EXPECT(float -1.500000e+00)
  %25 = load i32, i32* @VarR4FromStr, align 4
  %26 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %27 = call i32 @CONVERT_STR(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = call i32 @EXPECT(float 0xBFE3333340000000)
  %29 = load i32, i32* @VarR4FromStr, align 4
  %30 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %31 = call i32 @CONVERT_STR(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  %32 = call i32 @EXPECT(float -5.000000e-01)
  %33 = load i32, i32* @VarR4FromStr, align 4
  %34 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %35 = call i32 @CONVERT_STR(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %34)
  %36 = call i32 @EXPECT(float 0xBFD99999A0000000)
  %37 = load i32, i32* @VarR4FromStr, align 4
  %38 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %39 = call i32 @CONVERT_STR(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %38)
  %40 = call i32 @EXPECT(float 0x3FD99999A0000000)
  %41 = load i32, i32* @VarR4FromStr, align 4
  %42 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %43 = call i32 @CONVERT_STR(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %42)
  %44 = call i32 @EXPECT(float 5.000000e-01)
  %45 = load i32, i32* @VarR4FromStr, align 4
  %46 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %47 = call i32 @CONVERT_STR(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %46)
  %48 = call i32 @EXPECT(float 0x3FE3333340000000)
  %49 = load i32, i32* @VarR4FromStr, align 4
  %50 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %51 = call i32 @CONVERT_STR(i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %50)
  %52 = call i32 @EXPECT(float 1.500000e+00)
  ret void
}

declare dso_local i32 @CONVVARS(i32) #1

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @CONVERT_STR(i32, i8*, i32) #1

declare dso_local i32 @EXPECT(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
