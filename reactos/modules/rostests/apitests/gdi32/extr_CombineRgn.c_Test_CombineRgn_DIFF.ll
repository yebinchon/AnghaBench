; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineRgn.c_Test_CombineRgn_DIFF.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineRgn.c_Test_CombineRgn_DIFF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGN_DIFF = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@BLACK_PEN = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wrong error: %ld\0A\00", align 1
@NULLREGION = common dso_local global i32 0, align 4
@SIMPLEREGION = common dso_local global i32 0, align 4
@COMPLEXREGION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CombineRgn_DIFF() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %4, i32** %1, align 8
  %5 = call i32* @CreateRectRgn(i32 0, i32 0, i32 10, i32 10)
  store i32* %5, i32** %2, align 8
  %6 = call i32* @CreateRectRgn(i32 5, i32 0, i32 10, i32 5)
  store i32* %6, i32** %3, align 8
  %7 = call i32 @SetLastError(i32 195934910)
  %8 = load i32, i32* @RGN_DIFF, align 4
  %9 = call i32 @CombineRgn(i32* null, i32* null, i32* null, i32 %8)
  %10 = load i32, i32* @ERROR, align 4
  %11 = call i32 @ok_long(i32 %9, i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @RGN_DIFF, align 4
  %14 = call i32 @CombineRgn(i32* %12, i32* null, i32* null, i32 %13)
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 @ok_long(i32 %14, i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @RGN_DIFF, align 4
  %20 = call i32 @CombineRgn(i32* %17, i32* %18, i32* null, i32 %19)
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 @ok_long(i32 %20, i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @RGN_DIFF, align 4
  %26 = call i32 @CombineRgn(i32* %23, i32* null, i32* %24, i32 %25)
  %27 = load i32, i32* @ERROR, align 4
  %28 = call i32 @ok_long(i32 %26, i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* @BLACK_PEN, align 4
  %31 = call i32* @GetStockObject(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @RGN_DIFF, align 4
  %34 = call i32 @CombineRgn(i32* %29, i32* %31, i32* %32, i32 %33)
  %35 = load i32, i32* @ERROR, align 4
  %36 = call i32 @ok_long(i32 %34, i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @BLACK_PEN, align 4
  %40 = call i32* @GetStockObject(i32 %39)
  %41 = load i32, i32* @RGN_DIFF, align 4
  %42 = call i32 @CombineRgn(i32* %37, i32* %38, i32* %40, i32 %41)
  %43 = load i32, i32* @ERROR, align 4
  %44 = call i32 @ok_long(i32 %42, i32 %43)
  %45 = call i32 (...) @GetLastError()
  %46 = icmp eq i32 %45, 195934910
  br i1 %46, label %51, label %47

47:                                               ; preds = %0
  %48 = call i32 (...) @GetLastError()
  %49 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %50 = icmp eq i32 %48, %49
  br label %51

51:                                               ; preds = %47, %0
  %52 = phi i1 [ true, %0 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 (...) @GetLastError()
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = load i32*, i32** %1, align 8
  %58 = load i32*, i32** %1, align 8
  %59 = load i32, i32* @RGN_DIFF, align 4
  %60 = call i32 @CombineRgn(i32* %56, i32* %57, i32* %58, i32 %59)
  %61 = load i32, i32* @NULLREGION, align 4
  %62 = call i32 @ok_long(i32 %60, i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = load i32*, i32** %2, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* @RGN_DIFF, align 4
  %67 = call i32 @CombineRgn(i32* %63, i32* %64, i32* %65, i32 %66)
  %68 = load i32, i32* @NULLREGION, align 4
  %69 = call i32 @ok_long(i32 %67, i32 %68)
  %70 = load i32*, i32** %1, align 8
  %71 = load i32*, i32** %1, align 8
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* @RGN_DIFF, align 4
  %74 = call i32 @CombineRgn(i32* %70, i32* %71, i32* %72, i32 %73)
  %75 = load i32, i32* @NULLREGION, align 4
  %76 = call i32 @ok_long(i32 %74, i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = load i32*, i32** %1, align 8
  %80 = load i32, i32* @RGN_DIFF, align 4
  %81 = call i32 @CombineRgn(i32* %77, i32* %78, i32* %79, i32 %80)
  %82 = load i32, i32* @SIMPLEREGION, align 4
  %83 = call i32 @ok_long(i32 %81, i32 %82)
  %84 = load i32*, i32** %1, align 8
  %85 = load i32*, i32** %2, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @RGN_DIFF, align 4
  %88 = call i32 @CombineRgn(i32* %84, i32* %85, i32* %86, i32 %87)
  %89 = load i32, i32* @COMPLEXREGION, align 4
  %90 = call i32 @ok_long(i32 %88, i32 %89)
  %91 = load i32*, i32** %1, align 8
  %92 = load i32*, i32** %1, align 8
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* @RGN_DIFF, align 4
  %95 = call i32 @CombineRgn(i32* %91, i32* %92, i32* %93, i32 %94)
  %96 = load i32, i32* @COMPLEXREGION, align 4
  %97 = call i32 @ok_long(i32 %95, i32 %96)
  %98 = load i32*, i32** %1, align 8
  %99 = load i32*, i32** %1, align 8
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* @RGN_DIFF, align 4
  %102 = call i32 @CombineRgn(i32* %98, i32* %99, i32* %100, i32 %101)
  %103 = load i32, i32* @NULLREGION, align 4
  %104 = call i32 @ok_long(i32 %102, i32 %103)
  ret void
}

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @CombineRgn(i32*, i32*, i32*, i32) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
