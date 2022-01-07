; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineRgn.c_Test_CombineRgn_Params.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineRgn.c_Test_CombineRgn_Params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wrong error: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CombineRgn_Params() #0 {
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
  %8 = call i32 @CombineRgn(i32* null, i32* null, i32* null, i32 0)
  %9 = load i32, i32* @ERROR, align 4
  %10 = call i32 @ok_long(i32 %8, i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @CombineRgn(i32* %11, i32* %12, i32* %13, i32 0)
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 @ok_long(i32 %14, i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @CombineRgn(i32* %17, i32* %18, i32* %19, i32 6)
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 @ok_long(i32 %20, i32 %21)
  %23 = call i32 (...) @GetLastError()
  %24 = icmp eq i32 %23, 195934910
  br i1 %24, label %29, label %25

25:                                               ; preds = %0
  %26 = call i32 (...) @GetLastError()
  %27 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %0
  %30 = phi i1 [ true, %0 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32)
  ret void
}

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @CombineRgn(i32*, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
