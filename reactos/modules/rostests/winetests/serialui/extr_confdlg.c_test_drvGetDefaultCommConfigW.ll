; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/serialui/extr_confdlg.c_test_drvGetDefaultCommConfigW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/serialui/extr_confdlg.c_test_drvGetDefaultCommConfigW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@com1W = common dso_local global i32* null, align 8
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"*W not implemented\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"returned %u with %u and %u (expected ERROR_INSUFFICIENT_BUFFER and '>= %u')\0A\00", align 1
@fmt_comA = common dso_local global i8* null, align 8
@CP_ACP = common dso_local global i32 0, align 4
@ERROR_BADKEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"returned %u with %u and %u for %s (expected ERROR_BADKEY)\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [76 x i8] c"returned %u with %u and %u for %s (expected ERROR_SUCCESS or ERROR_BADKEY)\0A\00", align 1
@str_colonA = common dso_local global i32 0, align 4
@str_colonW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"returned %u with %u and %u for %s (expected '0' with ERROR_BADKEY)\0A\00", align 1
@emptyW = common dso_local global i32* null, align 8
@emptyA = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [72 x i8] c"returned %u with %u and %u for NULL (expected ERROR_INVALID_PARAMETER)\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"returned %u with %u and %u (expected ERROR_INVALID_PARAMETER)\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"returned %u with %u (expected ERROR_INVALID_PARAMETER)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_drvGetDefaultCommConfigW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_drvGetDefaultCommConfigW() #0 {
  %1 = alloca [3 x i32], align 4
  %2 = alloca [16 x i32], align 16
  %3 = alloca [16 x i32], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 4, i64* %4, align 8
  store i64 3, i64* %6, align 8
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %8 = call i32 @ZeroMemory(i32* %7, i32 12)
  %9 = call i32 @SetLastError(i32 -559038737)
  %10 = load i32*, i32** @com1W, align 8
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %12 = call i64 @pGetDefaultCommConfigW(i32* %10, i32* %11, i64* %6)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @win_skip(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %162

18:                                               ; preds = %0
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp sge i64 %23, %24
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %5, align 8
  %30 = call i32 (...) @GetLastError()
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %28, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i64 %29, i32 %30, i64 %31, i64 %32)
  store i64 0, i64* %4, align 8
  br label %34

34:                                               ; preds = %108, %26
  %35 = load i64, i64* %4, align 8
  %36 = icmp slt i64 %35, 11
  br i1 %36, label %37, label %111

37:                                               ; preds = %34
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %39 = load i8*, i8** @fmt_comA, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @sprintf(i32* %38, i8* %39, i64 %40)
  %42 = load i32, i32* @CP_ACP, align 4
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = call i32 @MultiByteToWideChar(i32 %42, i32 0, i32* %43, i32 -1, i32* %44, i32 %46)
  store i64 12, i64* %6, align 8
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %49 = call i32 @ZeroMemory(i32* %48, i32 12)
  %50 = call i32 @SetLastError(i32 -559038737)
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %53 = call i64 @pGetDefaultCommConfigW(i32* %51, i32* %52, i64* %6)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %37
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @ERROR_BADKEY, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %5, align 8
  %62 = call i32 (...) @GetLastError()
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %65 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %60, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %61, i32 %62, i64 %63, i32* %64)
  br label %82

66:                                               ; preds = %37
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @ERROR_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @ERROR_BADKEY, align 8
  %73 = icmp eq i64 %71, %72
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ true, %66 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %5, align 8
  %78 = call i32 (...) @GetLastError()
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %81 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %76, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i64 %77, i32 %78, i64 %79, i32* %80)
  br label %82

82:                                               ; preds = %74, %56
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @ERROR_SUCCESS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %82
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %88 = load i32, i32* @str_colonA, align 4
  %89 = call i32 @lstrcatA(i32* %87, i32 %88)
  %90 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %91 = load i32, i32* @str_colonW, align 4
  %92 = call i32 @lstrcatW(i32* %90, i32 %91)
  store i64 12, i64* %6, align 8
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %94 = call i32 @ZeroMemory(i32* %93, i32 12)
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %97 = call i64 @pGetDefaultCommConfigW(i32* %95, i32* %96, i64* %6)
  store i64 %97, i64* %5, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @ERROR_BADKEY, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %5, align 8
  %103 = call i32 (...) @GetLastError()
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %106 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %101, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i64 %102, i32 %103, i64 %104, i32* %105)
  br label %107

107:                                              ; preds = %86, %82
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %4, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %4, align 8
  br label %34

111:                                              ; preds = %34
  store i64 12, i64* %6, align 8
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %113 = call i32 @ZeroMemory(i32* %112, i32 12)
  %114 = call i32 @SetLastError(i32 -559038737)
  %115 = load i32*, i32** @emptyW, align 8
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %117 = call i64 @pGetDefaultCommConfigW(i32* %115, i32* %116, i64* %6)
  store i64 %117, i64* %5, align 8
  %118 = load i64, i64* %5, align 8
  %119 = load i64, i64* @ERROR_BADKEY, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i64, i64* %5, align 8
  %123 = call i32 (...) @GetLastError()
  %124 = load i64, i64* %6, align 8
  %125 = load i32, i32* @emptyA, align 4
  %126 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %121, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %122, i32 %123, i64 %124, i32 %125)
  store i64 12, i64* %6, align 8
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %128 = call i32 @ZeroMemory(i32* %127, i32 12)
  %129 = call i32 @SetLastError(i32 -559038737)
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %131 = call i64 @pGetDefaultCommConfigW(i32* null, i32* %130, i64* %6)
  store i64 %131, i64* %5, align 8
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %5, align 8
  %137 = call i32 (...) @GetLastError()
  %138 = load i64, i64* %6, align 8
  %139 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %135, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i64 %136, i32 %137, i64 %138)
  store i64 12, i64* %6, align 8
  %140 = call i32 @SetLastError(i32 -559038737)
  %141 = load i32*, i32** @com1W, align 8
  %142 = call i64 @pGetDefaultCommConfigW(i32* %141, i32* null, i64* %6)
  store i64 %142, i64* %5, align 8
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %5, align 8
  %148 = call i32 (...) @GetLastError()
  %149 = load i64, i64* %6, align 8
  %150 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %146, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i64 %147, i32 %148, i64 %149)
  %151 = call i32 @SetLastError(i32 -559038737)
  %152 = load i32*, i32** @com1W, align 8
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %154 = call i64 @pGetDefaultCommConfigW(i32* %152, i32* %153, i64* null)
  store i64 %154, i64* %5, align 8
  %155 = load i64, i64* %5, align 8
  %156 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i64, i64* %5, align 8
  %160 = call i32 (...) @GetLastError()
  %161 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %158, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i64 %159, i32 %160)
  br label %162

162:                                              ; preds = %111, %16
  ret void
}

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @pGetDefaultCommConfigW(i32*, i32*, i64*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @sprintf(i32*, i8*, i64) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @lstrcatA(i32*, i32) #1

declare dso_local i32 @lstrcatW(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
