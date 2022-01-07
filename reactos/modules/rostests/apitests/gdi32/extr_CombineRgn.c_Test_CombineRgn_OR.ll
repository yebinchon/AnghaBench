; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineRgn.c_Test_CombineRgn_OR.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CombineRgn.c_Test_CombineRgn_OR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGN_OR = common dso_local global i32 0, align 4
@SIMPLEREGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Region is not correct\0A\00", align 1
@COMPLEXREGION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CombineRgn_OR() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32 %4, i32* %1, align 4
  %5 = call i32 @CreateRectRgn(i32 0, i32 0, i32 5, i32 5)
  store i32 %5, i32* %2, align 4
  %6 = call i32 @CreateRectRgn(i32 5, i32 0, i32 10, i32 5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @RGN_OR, align 4
  %11 = call i32 @CombineRgn(i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* @SIMPLEREGION, align 4
  %13 = call i32 @ok_long(i32 %11, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @SetRectRgn(i32 %14, i32 0, i32 0, i32 10, i32 5)
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @EqualRgn(i32 %16, i32 %17)
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @SetRectRgn(i32 %20, i32 0, i32 0, i32 10, i32 10)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @SetRectRgn(i32 %22, i32 10, i32 10, i32 20, i32 20)
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @RGN_OR, align 4
  %28 = call i32 @CombineRgn(i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @COMPLEXREGION, align 4
  %30 = call i32 @ok_long(i32 %28, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @SetRectRgn(i32 %31, i32 10, i32 0, i32 20, i32 10)
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @RGN_OR, align 4
  %37 = call i32 @CombineRgn(i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @COMPLEXREGION, align 4
  %39 = call i32 @ok_long(i32 %37, i32 %38)
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @RGN_OR, align 4
  %44 = call i32 @CombineRgn(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @COMPLEXREGION, align 4
  %46 = call i32 @ok_long(i32 %44, i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @SetRectRgn(i32 %47, i32 0, i32 10, i32 10, i32 20)
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @RGN_OR, align 4
  %53 = call i32 @CombineRgn(i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @SIMPLEREGION, align 4
  %55 = call i32 @ok_long(i32 %53, i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @SetRectRgn(i32 %56, i32 0, i32 0, i32 20, i32 20)
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @EqualRgn(i32 %58, i32 %59)
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @CombineRgn(i32, i32, i32, i32) #1

declare dso_local i32 @SetRectRgn(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @EqualRgn(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
