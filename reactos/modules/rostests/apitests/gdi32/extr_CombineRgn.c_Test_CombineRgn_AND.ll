; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineRgn.c_Test_CombineRgn_AND.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineRgn.c_Test_CombineRgn_AND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGN_AND = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@BLACK_PEN = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wrong error: %ld\0A\00", align 1
@SIMPLEREGION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Region is not correct\0A\00", align 1
@NULLREGION = common dso_local global i32 0, align 4
@RGN_OR = common dso_local global i32 0, align 4
@COMPLEXREGION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CombineRgn_AND() #0 {
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
  %8 = load i32, i32* @RGN_AND, align 4
  %9 = call i32 @CombineRgn(i32* null, i32* null, i32* null, i32 %8)
  %10 = load i32, i32* @ERROR, align 4
  %11 = call i32 @ok_long(i32 %9, i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @RGN_AND, align 4
  %14 = call i32 @CombineRgn(i32* %12, i32* null, i32* null, i32 %13)
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 @ok_long(i32 %14, i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @RGN_AND, align 4
  %20 = call i32 @CombineRgn(i32* %17, i32* %18, i32* null, i32 %19)
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 @ok_long(i32 %20, i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @RGN_AND, align 4
  %26 = call i32 @CombineRgn(i32* %23, i32* null, i32* %24, i32 %25)
  %27 = load i32, i32* @ERROR, align 4
  %28 = call i32 @ok_long(i32 %26, i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* @BLACK_PEN, align 4
  %31 = call i32* @GetStockObject(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @RGN_AND, align 4
  %34 = call i32 @CombineRgn(i32* %29, i32* %31, i32* %32, i32 %33)
  %35 = load i32, i32* @ERROR, align 4
  %36 = call i32 @ok_long(i32 %34, i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @BLACK_PEN, align 4
  %40 = call i32* @GetStockObject(i32 %39)
  %41 = load i32, i32* @RGN_AND, align 4
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
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = load i32*, i32** %2, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @RGN_AND, align 4
  %60 = call i32 @CombineRgn(i32* %56, i32* %57, i32* %58, i32 %59)
  %61 = load i32, i32* @SIMPLEREGION, align 4
  %62 = call i32 @ok_long(i32 %60, i32 %61)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @SetRectRgn(i32* %63, i32 5, i32 5, i32 10, i32 10)
  %65 = load i32*, i32** %1, align 8
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @EqualRgn(i32* %65, i32* %66)
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @SetRectRgn(i32* %69, i32 0, i32 0, i32 5, i32 5)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @SetRectRgn(i32* %71, i32 5, i32 0, i32 10, i32 5)
  %73 = load i32*, i32** %1, align 8
  %74 = load i32*, i32** %2, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* @RGN_AND, align 4
  %77 = call i32 @CombineRgn(i32* %73, i32* %74, i32* %75, i32 %76)
  %78 = load i32, i32* @NULLREGION, align 4
  %79 = call i32 @ok_long(i32 %77, i32 %78)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @SetRectRgn(i32* %80, i32 0, i32 0, i32 0, i32 0)
  %82 = load i32*, i32** %1, align 8
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @EqualRgn(i32* %82, i32* %83)
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @SetRectRgn(i32* %86, i32 0, i32 0, i32 20, i32 20)
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @SetRectRgn(i32* %88, i32 5, i32 5, i32 10, i32 10)
  %90 = load i32*, i32** %1, align 8
  %91 = load i32*, i32** %2, align 8
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* @RGN_AND, align 4
  %94 = call i32 @CombineRgn(i32* %90, i32* %91, i32* %92, i32 %93)
  %95 = load i32, i32* @SIMPLEREGION, align 4
  %96 = call i32 @ok_long(i32 %94, i32 %95)
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @SetRectRgn(i32* %97, i32 5, i32 5, i32 10, i32 10)
  %99 = load i32*, i32** %1, align 8
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @EqualRgn(i32* %99, i32* %100)
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @SetRectRgn(i32* %103, i32 0, i32 0, i32 30, i32 10)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @SetRectRgn(i32* %105, i32 10, i32 10, i32 20, i32 30)
  %107 = load i32*, i32** %1, align 8
  %108 = load i32*, i32** %2, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* @RGN_OR, align 4
  %111 = call i32 @CombineRgn(i32* %107, i32* %108, i32* %109, i32 %110)
  %112 = load i32, i32* @COMPLEXREGION, align 4
  %113 = call i32 @ok_long(i32 %111, i32 %112)
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @SetRectRgn(i32* %114, i32 10, i32 0, i32 30, i32 30)
  %116 = load i32*, i32** %1, align 8
  %117 = load i32*, i32** %1, align 8
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* @RGN_AND, align 4
  %120 = call i32 @CombineRgn(i32* %116, i32* %117, i32* %118, i32 %119)
  %121 = load i32, i32* @COMPLEXREGION, align 4
  %122 = call i32 @ok_long(i32 %120, i32 %121)
  %123 = load i32*, i32** %1, align 8
  %124 = load i32*, i32** %1, align 8
  %125 = load i32*, i32** %1, align 8
  %126 = load i32, i32* @RGN_AND, align 4
  %127 = call i32 @CombineRgn(i32* %123, i32* %124, i32* %125, i32 %126)
  %128 = load i32, i32* @COMPLEXREGION, align 4
  %129 = call i32 @ok_long(i32 %127, i32 %128)
  %130 = load i32*, i32** %2, align 8
  %131 = call i32 @SetRectRgn(i32* %130, i32 10, i32 10, i32 30, i32 30)
  %132 = load i32*, i32** %1, align 8
  %133 = load i32*, i32** %1, align 8
  %134 = load i32*, i32** %2, align 8
  %135 = load i32, i32* @RGN_AND, align 4
  %136 = call i32 @CombineRgn(i32* %132, i32* %133, i32* %134, i32 %135)
  %137 = load i32, i32* @SIMPLEREGION, align 4
  %138 = call i32 @ok_long(i32 %136, i32 %137)
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @SetRectRgn(i32* %139, i32 0, i32 0, i32 10, i32 10)
  %141 = load i32*, i32** %1, align 8
  %142 = load i32*, i32** %1, align 8
  %143 = load i32*, i32** %2, align 8
  %144 = load i32, i32* @RGN_AND, align 4
  %145 = call i32 @CombineRgn(i32* %141, i32* %142, i32* %143, i32 %144)
  %146 = load i32, i32* @NULLREGION, align 4
  %147 = call i32 @ok_long(i32 %145, i32 %146)
  %148 = load i32*, i32** %1, align 8
  %149 = call i32 @SetRectRgn(i32* %148, i32 0, i32 0, i32 30, i32 10)
  %150 = load i32*, i32** %1, align 8
  %151 = load i32*, i32** %1, align 8
  %152 = load i32*, i32** %1, align 8
  %153 = load i32, i32* @RGN_AND, align 4
  %154 = call i32 @CombineRgn(i32* %150, i32* %151, i32* %152, i32 %153)
  %155 = load i32, i32* @SIMPLEREGION, align 4
  %156 = call i32 @ok_long(i32 %154, i32 %155)
  ret void
}

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @CombineRgn(i32*, i32*, i32*, i32) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SetRectRgn(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @EqualRgn(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
