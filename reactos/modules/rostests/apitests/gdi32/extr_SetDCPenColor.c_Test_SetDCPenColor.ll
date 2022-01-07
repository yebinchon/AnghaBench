; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_SetDCPenColor.c_Test_SetDCPenColor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_SetDCPenColor.c_Test_SetDCPenColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@CLR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"GetDC failed, skipping tests\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"CreateCompatibleDC failed, skipping tests\0A\00", align 1
@DC_PEN = common dso_local global i32 0, align 4
@BLACK_PEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"CreateBitmap failed, skipping tests\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_SetDCPenColor() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @ERROR_SUCCESS, align 4
  %6 = call i32 @SetLastError(i32 %5)
  %7 = call i32 @RGB(i32 0, i32 0, i32 0)
  %8 = call i32 @SetDCPenColor(i32* null, i32 %7)
  %9 = load i32, i32* @CLR_INVALID, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 (...) @GetLastError()
  %14 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = call i32* @GetDC(i32* null)
  store i32* %18, i32** %1, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32*, i32** %1, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  br label %97

26:                                               ; preds = %0
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @RGB(i32 1, i32 2, i32 3)
  %29 = call i32 @SetDCPenColor(i32* %27, i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @RGB(i32 4, i32 5, i32 6)
  %32 = call i32 @SetDCPenColor(i32* %30, i32 %31)
  %33 = call i32 @RGB(i32 1, i32 2, i32 3)
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = load i32*, i32** %1, align 8
  %38 = call i32* @CreateCompatibleDC(i32* %37)
  store i32* %38, i32** %2, align 8
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @ReleaseDC(i32 0, i32* %39)
  %41 = load i32*, i32** %2, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32*, i32** %2, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %26
  br label %97

48:                                               ; preds = %26
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @DC_PEN, align 4
  %51 = call i64 @GetStockObject(i32 %50)
  %52 = call i64 @SelectObject(i32* %49, i64 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @BLACK_PEN, align 4
  %55 = call i64 @GetStockObject(i32 %54)
  %56 = call i64 @SelectObject(i32* %53, i64 %55)
  %57 = load i32, i32* @DC_PEN, align 4
  %58 = call i64 @GetStockObject(i32 %57)
  %59 = icmp eq i64 %56, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @SetDCPenColor(i32* %62, i32 554841174)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @RGB(i32 0, i32 0, i32 0)
  %66 = call i32 @SetDCPenColor(i32* %64, i32 %65)
  %67 = icmp eq i32 %66, 554841174
  %68 = zext i1 %67 to i32
  %69 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* @CLR_INVALID, align 4
  %72 = call i32 @SetDCPenColor(i32* %70, i32 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @RGB(i32 0, i32 0, i32 0)
  %75 = call i32 @SetDCPenColor(i32* %73, i32 %74)
  %76 = load i32, i32* @CLR_INVALID, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %80 = call i64 @CreateBitmap(i32 10, i32 10, i32 1, i32 32, i32* null)
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i64, i64* %3, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %48
  br label %97

88:                                               ; preds = %48
  %89 = load i32*, i32** %2, align 8
  %90 = load i64, i64* %3, align 8
  %91 = call i64 @SelectObject(i32* %89, i64 %90)
  store i64 %91, i64* %4, align 8
  %92 = load i32*, i32** %2, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i64 @SelectObject(i32* %92, i64 %93)
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @DeleteDC(i32* %95)
  br label %97

97:                                               ; preds = %88, %87, %47, %25
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SetDCPenColor(i32*, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @GetDC(i32*) #1

declare dso_local i32* @CreateCompatibleDC(i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32*) #1

declare dso_local i64 @SelectObject(i32*, i64) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i64 @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DeleteDC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
