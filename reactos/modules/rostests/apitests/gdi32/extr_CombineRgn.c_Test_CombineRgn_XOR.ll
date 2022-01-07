; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineRgn.c_Test_CombineRgn_XOR.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineRgn.c_Test_CombineRgn_XOR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGN_XOR = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@BLACK_PEN = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wrong error: %ld\0A\00", align 1
@COMPLEXREGION = common dso_local global i32 0, align 4
@RGN_OR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Region is not correct\0A\00", align 1
@SIMPLEREGION = common dso_local global i32 0, align 4
@NULLREGION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CombineRgn_XOR() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %5, i32** %1, align 8
  %6 = call i32* @CreateRectRgn(i32 0, i32 0, i32 5, i32 5)
  store i32* %6, i32** %2, align 8
  %7 = call i32* @CreateRectRgn(i32 5, i32 5, i32 10, i32 10)
  store i32* %7, i32** %3, align 8
  %8 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %8, i32** %4, align 8
  %9 = call i32 @SetLastError(i32 195934910)
  %10 = load i32, i32* @RGN_XOR, align 4
  %11 = call i32 @CombineRgn(i32* null, i32* null, i32* null, i32 %10)
  %12 = load i32, i32* @ERROR, align 4
  %13 = call i32 @ok_long(i32 %11, i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @RGN_XOR, align 4
  %16 = call i32 @CombineRgn(i32* %14, i32* null, i32* null, i32 %15)
  %17 = load i32, i32* @ERROR, align 4
  %18 = call i32 @ok_long(i32 %16, i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @RGN_XOR, align 4
  %22 = call i32 @CombineRgn(i32* %19, i32* %20, i32* null, i32 %21)
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 @ok_long(i32 %22, i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @RGN_XOR, align 4
  %28 = call i32 @CombineRgn(i32* %25, i32* null, i32* %26, i32 %27)
  %29 = load i32, i32* @ERROR, align 4
  %30 = call i32 @ok_long(i32 %28, i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* @BLACK_PEN, align 4
  %33 = call i32* @GetStockObject(i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @RGN_XOR, align 4
  %36 = call i32 @CombineRgn(i32* %31, i32* %33, i32* %34, i32 %35)
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 @ok_long(i32 %36, i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @BLACK_PEN, align 4
  %42 = call i32* @GetStockObject(i32 %41)
  %43 = load i32, i32* @RGN_XOR, align 4
  %44 = call i32 @CombineRgn(i32* %39, i32* %40, i32* %42, i32 %43)
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 @ok_long(i32 %44, i32 %45)
  %47 = call i32 (...) @GetLastError()
  %48 = icmp eq i32 %47, 195934910
  br i1 %48, label %53, label %49

49:                                               ; preds = %0
  %50 = call i32 (...) @GetLastError()
  %51 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %52 = icmp eq i32 %50, %51
  br label %53

53:                                               ; preds = %49, %0
  %54 = phi i1 [ true, %0 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 (...) @GetLastError()
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %1, align 8
  %59 = load i32*, i32** %2, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @RGN_XOR, align 4
  %62 = call i32 @CombineRgn(i32* %58, i32* %59, i32* %60, i32 %61)
  %63 = load i32, i32* @COMPLEXREGION, align 4
  %64 = call i32 @ok_long(i32 %62, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %2, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @RGN_OR, align 4
  %69 = call i32 @CombineRgn(i32* %65, i32* %66, i32* %67, i32 %68)
  %70 = load i32, i32* @COMPLEXREGION, align 4
  %71 = call i32 @ok_long(i32 %69, i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @EqualRgn(i32* %72, i32* %73)
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32*, i32** %1, align 8
  %77 = load i32*, i32** %1, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* @RGN_XOR, align 4
  %80 = call i32 @CombineRgn(i32* %76, i32* %77, i32* %78, i32 %79)
  %81 = load i32, i32* @SIMPLEREGION, align 4
  %82 = call i32 @ok_long(i32 %80, i32 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @EqualRgn(i32* %83, i32* %84)
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32*, i32** %1, align 8
  %88 = load i32*, i32** %1, align 8
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* @RGN_XOR, align 4
  %91 = call i32 @CombineRgn(i32* %87, i32* %88, i32* %89, i32 %90)
  %92 = load i32, i32* @NULLREGION, align 4
  %93 = call i32 @ok_long(i32 %91, i32 %92)
  ret void
}

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @CombineRgn(i32*, i32*, i32*, i32) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @EqualRgn(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
