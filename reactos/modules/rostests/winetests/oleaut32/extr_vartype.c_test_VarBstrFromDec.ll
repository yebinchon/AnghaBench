; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarBstrFromDec.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarBstrFromDec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@LANG_SPANISH = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-1.5\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"4294967295\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"4294967296\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"18446744073709551616\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"79228162514264337593543950335\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"0.0000000001\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"7922816251426433759.3543950335\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"7.9228162514264337593543950335\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"0.0009\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"0,0009\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarBstrFromDec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarBstrFromDec() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @LANG_ENGLISH, align 4
  %4 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %5 = call i32 @MAKELANGID(i32 %3, i32 %4)
  %6 = load i32, i32* @SORT_DEFAULT, align 4
  %7 = call i32 @MAKELCID(i32 %5, i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @LANG_SPANISH, align 4
  %9 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %10 = call i32 @MAKELANGID(i32 %8, i32 %9)
  %11 = load i32, i32* @SORT_DEFAULT, align 4
  %12 = call i32 @MAKELCID(i32 %10, i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 0, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %13, i32 36)
  %15 = load i32, i32* %1, align 4
  %16 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 0, i32 0, i32 0, i32 0, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 38)
  %17 = load i32, i32* %1, align 4
  %18 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 1, i32 0, i32 0, i32 0, i32 10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 39)
  %19 = load i32, i32* %1, align 4
  %20 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 2, i32 0, i32 0, i32 0, i32 100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 40)
  %21 = load i32, i32* %1, align 4
  %22 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 3, i32 0, i32 0, i32 0, i32 1000, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 41)
  %23 = load i32, i32* %1, align 4
  %24 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 1, i32 0, i32 0, i32 0, i32 15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 43)
  %25 = load i32, i32* %1, align 4
  %26 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 2, i32 0, i32 0, i32 0, i32 150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 44)
  %27 = load i32, i32* %1, align 4
  %28 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 3, i32 0, i32 0, i32 0, i32 1500, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 45)
  %29 = load i32, i32* %1, align 4
  %30 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 1, i32 128, i32 0, i32 0, i32 15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 47)
  %31 = load i32, i32* %1, align 4
  %32 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 0, i32 0, i32 0, i32 0, i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 50)
  %33 = load i32, i32* %1, align 4
  %34 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %33, i32 52)
  %35 = load i32, i32* %1, align 4
  %36 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 0, i32 0, i32 0, i32 -1, i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %35, i32 54)
  %37 = load i32, i32* %1, align 4
  %38 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 0, i32 0, i32 1, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %37, i32 56)
  %39 = load i32, i32* %1, align 4
  %40 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 0, i32 0, i32 -1, i32 -1, i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %39, i32 58)
  %41 = load i32, i32* %1, align 4
  %42 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 10, i32 0, i32 0, i32 0, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %41, i32 60)
  %43 = load i32, i32* %1, align 4
  %44 = call i32 (i32, i32, i64, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i64, i32, i32, i8*, i32, i32, ...)*)(i32 10, i32 0, i64 4294967295, i32 -1, i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %43, i32 62)
  %45 = load i32, i32* %1, align 4
  %46 = call i32 (i32, i32, i64, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i64, i32, i32, i8*, i32, i32, ...)*)(i32 28, i32 0, i64 4294967295, i32 -1, i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %45, i32 64)
  %47 = load i32, i32* %1, align 4
  %48 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 4, i32 0, i32 0, i32 0, i32 9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %47, i32 67)
  %49 = load i32, i32* %1, align 4
  %50 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 5, i32 0, i32 0, i32 0, i32 90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %49, i32 68)
  %51 = load i32, i32* %1, align 4
  %52 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 6, i32 0, i32 0, i32 0, i32 900, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %51, i32 69)
  %53 = load i32, i32* %1, align 4
  %54 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 7, i32 0, i32 0, i32 0, i32 9000, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %53, i32 70)
  %55 = load i32, i32* %2, align 4
  %56 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 4, i32 0, i32 0, i32 0, i32 9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %55, i32 73)
  %57 = load i32, i32* %2, align 4
  %58 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 5, i32 0, i32 0, i32 0, i32 90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %57, i32 74)
  %59 = load i32, i32* %2, align 4
  %60 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 6, i32 0, i32 0, i32 0, i32 900, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %59, i32 75)
  %61 = load i32, i32* %2, align 4
  %62 = call i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...) bitcast (i32 (...)* @_BSTR_DEC to i32 (i32, i32, i32, i32, i32, i8*, i32, i32, ...)*)(i32 7, i32 0, i32 0, i32 0, i32 9000, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %61, i32 76)
  ret void
}

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @_BSTR_DEC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
