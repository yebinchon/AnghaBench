; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_GetPrinterData.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_GetPrinterData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@on_win9x = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to open the printserver: %d\0A\00", align 1
@defaultspooldirectory = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"got %d, type %d, needed: %d and '%s' (expected ERROR_SUCCESS, REG_SZ and %d)\0A\00", align 1
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"got %d, needed: %d (expected ERROR_MORE_DATA and %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ClosePrinter error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetPrinterData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetPrinterData() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = call i32 @SetLastError(i32 -559038737)
  %15 = call i32 @OpenPrinterA(i32* null, i32* %1, i32* null)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* @on_win9x, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call i32 (...) @GetLastError()
  %23 = call i32 @win_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  store i32 1, i32* %8, align 4
  br label %103

25:                                               ; preds = %0
  %26 = mul nuw i64 8, %11
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i64* %13, i8 signext 35, i32 %27)
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %13, i64 %30
  store i64 0, i64* %31, align 8
  store i32 -559038737, i32* %3, align 4
  store i32 -559038737, i32* %6, align 4
  %32 = call i32 @SetLastError(i32 -559038737)
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @defaultspooldirectory, align 4
  %35 = bitcast i64* %13 to i32*
  %36 = mul nuw i64 8, %11
  %37 = trunc i64 %36 to i32
  %38 = call i32 @GetPrinterDataA(i32 %33, i32 %34, i32* %3, i32* %35, i32 %37, i32* %6)
  store i32 %38, i32* %2, align 4
  %39 = call i32 @lstrlenA(i64* %13)
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %25
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @REG_SZ, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = icmp eq i64 %55, %58
  br label %60

60:                                               ; preds = %53, %49
  %61 = phi i1 [ true, %49 ], [ %59, %53 ]
  br label %62

62:                                               ; preds = %60, %45, %25
  %63 = phi i1 [ false, %45 ], [ false, %25 ], [ %61, %60 ]
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i32, i8*, i32, ...) @ok(i32 %64, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66, i32 %67, i64* %13, i32 %68)
  store i32 -559038737, i32* %6, align 4
  %70 = call i32 @SetLastError(i32 -559038737)
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* @defaultspooldirectory, align 4
  %73 = call i32 @GetPrinterDataA(i32 %71, i32 %72, i32* null, i32* null, i32 0, i32* %6)
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @ERROR_MORE_DATA, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %62
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = icmp eq i64 %83, %86
  br label %88

88:                                               ; preds = %81, %77
  %89 = phi i1 [ true, %77 ], [ %87, %81 ]
  br label %90

90:                                               ; preds = %88, %62
  %91 = phi i1 [ false, %62 ], [ %89, %88 ]
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i32, i8*, i32, ...) @ok(i32 %92, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
  %97 = call i32 @SetLastError(i32 -559038737)
  %98 = load i32, i32* %1, align 4
  %99 = call i32 @ClosePrinter(i32 %98)
  store i32 %99, i32* %2, align 4
  %100 = load i32, i32* %2, align 4
  %101 = call i32 (...) @GetLastError()
  %102 = call i32 (i32, i8*, i32, ...) @ok(i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %90, %24
  %104 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %8, align 4
  switch i32 %105, label %107 [
    i32 0, label %106
    i32 1, label %106
  ]

106:                                              ; preds = %103, %103
  ret void

107:                                              ; preds = %103
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @OpenPrinterA(i32*, i32*, i32*) #2

declare dso_local i32 @win_skip(i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @memset(i64*, i8 signext, i32) #2

declare dso_local i32 @GetPrinterDataA(i32, i32, i32*, i32*, i32, i32*) #2

declare dso_local i32 @lstrlenA(i64*) #2

declare dso_local i32 @ok(i32, i8*, i32, ...) #2

declare dso_local i32 @ClosePrinter(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
