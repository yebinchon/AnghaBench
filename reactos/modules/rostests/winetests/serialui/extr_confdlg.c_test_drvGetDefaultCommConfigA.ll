; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/serialui/extr_confdlg.c_test_drvGetDefaultCommConfigA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/serialui/extr_confdlg.c_test_drvGetDefaultCommConfigA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@com1A = common dso_local global i32* null, align 8
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"*A not implemented\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"returned %u with %u and %u (expected ERROR_INSUFFICIENT_BUFFER and '>= %u')\0A\00", align 1
@fmt_comA = common dso_local global i8* null, align 8
@ERROR_BADKEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"returned %u with %u and %u for %s (expected ERROR_BADKEY)\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [76 x i8] c"returned %u with %u and %u for %s (expected ERROR_SUCCESS or ERROR_BADKEY)\0A\00", align 1
@str_colonA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"returned %u with %u and %u for %s (expected '0' with ERROR_BADKEY)\0A\00", align 1
@emptyA = common dso_local global i32* null, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [72 x i8] c"returned %u with %u and %u for NULL (expected ERROR_INVALID_PARAMETER)\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"returned %u with %u and %u (expected ERROR_INVALID_PARAMETER)\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"returned %u with %u (expected ERROR_INVALID_PARAMETER)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_drvGetDefaultCommConfigA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_drvGetDefaultCommConfigA() #0 {
  %1 = alloca [3 x i32], align 4
  %2 = alloca [16 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 4, i64* %3, align 8
  store i64 3, i64* %5, align 8
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %7 = call i32 @ZeroMemory(i32* %6, i32 12)
  %8 = call i32 @SetLastError(i32 -559038737)
  %9 = load i32*, i32** @com1A, align 8
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %11 = call i64 @pGetDefaultCommConfigA(i32* %9, i32* %10, i64* %5)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @win_skip(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %152

17:                                               ; preds = %0
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp sge i64 %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = call i32 (...) @GetLastError()
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %27, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i64 %28, i32 %29, i64 %30, i64 %31)
  store i64 0, i64* %3, align 8
  br label %33

33:                                               ; preds = %98, %25
  %34 = load i64, i64* %3, align 8
  %35 = icmp slt i64 %34, 11
  br i1 %35, label %36, label %101

36:                                               ; preds = %33
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %38 = load i8*, i8** @fmt_comA, align 8
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @sprintf(i32* %37, i8* %38, i64 %39)
  store i64 12, i64* %5, align 8
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %42 = call i32 @ZeroMemory(i32* %41, i32 12)
  %43 = call i32 @SetLastError(i32 -559038737)
  %44 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %46 = call i64 @pGetDefaultCommConfigA(i32* %44, i32* %45, i64* %5)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %36
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @ERROR_BADKEY, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %4, align 8
  %55 = call i32 (...) @GetLastError()
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %58 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %53, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %54, i32 %55, i64 %56, i32* %57)
  br label %75

59:                                               ; preds = %36
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @ERROR_BADKEY, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ true, %59 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %4, align 8
  %71 = call i32 (...) @GetLastError()
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %74 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %69, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i64 %70, i32 %71, i64 %72, i32* %73)
  br label %75

75:                                               ; preds = %67, %49
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @ERROR_SUCCESS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %81 = load i32, i32* @str_colonA, align 4
  %82 = call i32 @lstrcatA(i32* %80, i32 %81)
  store i64 12, i64* %5, align 8
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %84 = call i32 @ZeroMemory(i32* %83, i32 12)
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %87 = call i64 @pGetDefaultCommConfigA(i32* %85, i32* %86, i64* %5)
  store i64 %87, i64* %4, align 8
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* @ERROR_BADKEY, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %4, align 8
  %93 = call i32 (...) @GetLastError()
  %94 = load i64, i64* %5, align 8
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %96 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %91, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i64 %92, i32 %93, i64 %94, i32* %95)
  br label %97

97:                                               ; preds = %79, %75
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %3, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %3, align 8
  br label %33

101:                                              ; preds = %33
  store i64 12, i64* %5, align 8
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %103 = call i32 @ZeroMemory(i32* %102, i32 12)
  %104 = call i32 @SetLastError(i32 -559038737)
  %105 = load i32*, i32** @emptyA, align 8
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %107 = call i64 @pGetDefaultCommConfigA(i32* %105, i32* %106, i64* %5)
  store i64 %107, i64* %4, align 8
  %108 = load i64, i64* %4, align 8
  %109 = load i64, i64* @ERROR_BADKEY, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %4, align 8
  %113 = call i32 (...) @GetLastError()
  %114 = load i64, i64* %5, align 8
  %115 = load i32*, i32** @emptyA, align 8
  %116 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %111, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %112, i32 %113, i64 %114, i32* %115)
  store i64 12, i64* %5, align 8
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %118 = call i32 @ZeroMemory(i32* %117, i32 12)
  %119 = call i32 @SetLastError(i32 -559038737)
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %121 = call i64 @pGetDefaultCommConfigA(i32* null, i32* %120, i64* %5)
  store i64 %121, i64* %4, align 8
  %122 = load i64, i64* %4, align 8
  %123 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %4, align 8
  %127 = call i32 (...) @GetLastError()
  %128 = load i64, i64* %5, align 8
  %129 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %125, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i64 %126, i32 %127, i64 %128)
  store i64 12, i64* %5, align 8
  %130 = call i32 @SetLastError(i32 -559038737)
  %131 = load i32*, i32** @com1A, align 8
  %132 = call i64 @pGetDefaultCommConfigA(i32* %131, i32* null, i64* %5)
  store i64 %132, i64* %4, align 8
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %4, align 8
  %138 = call i32 (...) @GetLastError()
  %139 = load i64, i64* %5, align 8
  %140 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %136, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i64 %137, i32 %138, i64 %139)
  %141 = call i32 @SetLastError(i32 -559038737)
  %142 = load i32*, i32** @com1A, align 8
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %144 = call i64 @pGetDefaultCommConfigA(i32* %142, i32* %143, i64* null)
  store i64 %144, i64* %4, align 8
  %145 = load i64, i64* %4, align 8
  %146 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i64, i64* %4, align 8
  %150 = call i32 (...) @GetLastError()
  %151 = call i32 (i32, i8*, i64, i32, ...) @ok(i32 %148, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i64 %149, i32 %150)
  br label %152

152:                                              ; preds = %101, %15
  ret void
}

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @pGetDefaultCommConfigA(i32*, i32*, i64*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @sprintf(i32*, i8*, i64) #1

declare dso_local i32 @lstrcatA(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
