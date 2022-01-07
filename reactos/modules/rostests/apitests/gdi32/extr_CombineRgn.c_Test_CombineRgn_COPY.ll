; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineRgn.c_Test_CombineRgn_COPY.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineRgn.c_Test_CombineRgn_COPY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGN_COPY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wrong error: %ld\0A\00", align 1
@SIMPLEREGION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Region is not correct\0A\00", align 1
@BLACK_PEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CombineRgn_COPY() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %4, i32** %1, align 8
  %5 = call i32* @CreateRectRgn(i32 0, i32 0, i32 10, i32 10)
  store i32* %5, i32** %2, align 8
  %6 = call i32* @CreateRectRgn(i32 5, i32 5, i32 20, i32 20)
  store i32* %6, i32** %3, align 8
  %7 = call i32 @SetLastError(i32 195934910)
  %8 = load i32, i32* @RGN_COPY, align 4
  %9 = call i32 @CombineRgn(i32* null, i32* null, i32* null, i32 %8)
  %10 = load i32, i32* @ERROR, align 4
  %11 = call i32 @ok_long(i32 %9, i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @RGN_COPY, align 4
  %14 = call i32 @CombineRgn(i32* null, i32* %12, i32* null, i32 %13)
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 @ok_long(i32 %14, i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @RGN_COPY, align 4
  %19 = call i32 @CombineRgn(i32* null, i32* null, i32* %17, i32 %18)
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 @ok_long(i32 %19, i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @RGN_COPY, align 4
  %25 = call i32 @CombineRgn(i32* null, i32* %22, i32* %23, i32 %24)
  %26 = load i32, i32* @ERROR, align 4
  %27 = call i32 @ok_long(i32 %25, i32 %26)
  %28 = call i32 (...) @GetLastError()
  %29 = icmp eq i32 %28, 195934910
  br i1 %29, label %34, label %30

30:                                               ; preds = %0
  %31 = call i32 (...) @GetLastError()
  %32 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %0
  %35 = phi i1 [ true, %0 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 (...) @GetLastError()
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @RGN_COPY, align 4
  %43 = call i32 @CombineRgn(i32* %39, i32* %40, i32* %41, i32 %42)
  %44 = load i32, i32* @SIMPLEREGION, align 4
  %45 = call i32 @ok_long(i32 %43, i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @EqualRgn(i32* %46, i32* %47)
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32*, i32** %1, align 8
  %51 = load i32*, i32** %1, align 8
  %52 = load i32, i32* @RGN_COPY, align 4
  %53 = call i32 @CombineRgn(i32* %50, i32* %51, i32* null, i32 %52)
  %54 = load i32, i32* @SIMPLEREGION, align 4
  %55 = call i32 @ok_long(i32 %53, i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @EqualRgn(i32* %56, i32* %57)
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32*, i32** %1, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @BLACK_PEN, align 4
  %63 = call i32* @GetStockObject(i32 %62)
  %64 = load i32, i32* @RGN_COPY, align 4
  %65 = call i32 @CombineRgn(i32* %60, i32* %61, i32* %63, i32 %64)
  %66 = load i32, i32* @SIMPLEREGION, align 4
  %67 = call i32 @ok_long(i32 %65, i32 %66)
  %68 = load i32*, i32** %1, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @EqualRgn(i32* %68, i32* %69)
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32*, i32** %1, align 8
  %73 = load i32, i32* @BLACK_PEN, align 4
  %74 = call i32* @GetStockObject(i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = load i32, i32* @RGN_COPY, align 4
  %77 = call i32 @CombineRgn(i32* %72, i32* %74, i32* %75, i32 %76)
  %78 = load i32, i32* @ERROR, align 4
  %79 = call i32 @ok_long(i32 %77, i32 %78)
  %80 = load i32*, i32** %1, align 8
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @EqualRgn(i32* %80, i32* %81)
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32*, i32** %1, align 8
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* @RGN_COPY, align 4
  %87 = call i32 @CombineRgn(i32* %84, i32* null, i32* %85, i32 %86)
  %88 = load i32, i32* @ERROR, align 4
  %89 = call i32 @ok_long(i32 %87, i32 %88)
  %90 = load i32*, i32** %1, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @EqualRgn(i32* %90, i32* %91)
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32*, i32** %1, align 8
  %95 = load i32, i32* @RGN_COPY, align 4
  %96 = call i32 @CombineRgn(i32* %94, i32* null, i32* null, i32 %95)
  %97 = load i32, i32* @ERROR, align 4
  %98 = call i32 @ok_long(i32 %96, i32 %97)
  %99 = load i32*, i32** %1, align 8
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @EqualRgn(i32* %99, i32* %100)
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %103 = call i32 (...) @GetLastError()
  %104 = icmp eq i32 %103, 195934910
  br i1 %104, label %109, label %105

105:                                              ; preds = %34
  %106 = call i32 (...) @GetLastError()
  %107 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %108 = icmp eq i32 %106, %107
  br label %109

109:                                              ; preds = %105, %34
  %110 = phi i1 [ true, %34 ], [ %108, %105 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 (...) @GetLastError()
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %112)
  ret void
}

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @CombineRgn(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @EqualRgn(i32*, i32*) #1

declare dso_local i32* @GetStockObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
