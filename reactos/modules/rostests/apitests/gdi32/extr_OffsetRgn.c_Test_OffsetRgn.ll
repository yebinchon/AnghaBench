; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_OffsetRgn.c_Test_OffsetRgn.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_OffsetRgn.c_Test_OffsetRgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"CreateRectRgn failed\0A\00", align 1
@INT_MIN = common dso_local global i32 0, align 4
@NULLREGION = common dso_local global i32 0, align 4
@SIMPLEREGION = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@RGN_OR = common dso_local global i32 0, align 4
@COMPLEXREGION = common dso_local global i32 0, align 4
@RGN_XOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_OffsetRgn() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* @INT_MIN, align 4
  %11 = add nsw i32 %10, 10
  %12 = call i32 @OffsetRgn(i32* %9, i32 %11, i32 10)
  %13 = load i32, i32* @NULLREGION, align 4
  %14 = call i32 @ok_int(i32 %12, i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @OffsetRgn(i32* %15, i32 251658240, i32 251658240)
  %17 = load i32, i32* @NULLREGION, align 4
  %18 = call i32 @ok_int(i32 %16, i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @DeleteObject(i32* %19)
  %21 = call i32* @CreateRectRgn(i32 0, i32 0, i32 100, i32 100)
  store i32* %21, i32** %1, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @OffsetRgn(i32* %26, i32 10, i32 10)
  %28 = load i32, i32* @SIMPLEREGION, align 4
  %29 = call i32 @ok_int(i32 %27, i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @OffsetRgn(i32* %30, i32 134217618, i32 10)
  %32 = load i32, i32* @ERROR, align 4
  %33 = call i32 @ok_int(i32 %31, i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @OffsetRgn(i32* %34, i32 134217617, i32 10)
  %36 = load i32, i32* @SIMPLEREGION, align 4
  %37 = call i32 @ok_int(i32 %35, i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @DeleteObject(i32* %38)
  %40 = call i32* @CreateRectRgn(i32 0, i32 0, i32 100, i32 100)
  store i32* %40, i32** %1, align 8
  %41 = load i32*, i32** %1, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @OffsetRgn(i32* %45, i32 -10, i32 10)
  %47 = load i32, i32* @SIMPLEREGION, align 4
  %48 = call i32 @ok_int(i32 %46, i32 %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @OffsetRgn(i32* %49, i32 -134217719, i32 10)
  %51 = load i32, i32* @ERROR, align 4
  %52 = call i32 @ok_int(i32 %50, i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @OffsetRgn(i32* %53, i32 -134217718, i32 10)
  %55 = load i32, i32* @SIMPLEREGION, align 4
  %56 = call i32 @ok_int(i32 %54, i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @DeleteObject(i32* %57)
  %59 = call i32* @CreateRectRgn(i32 0, i32 0, i32 10, i32 10)
  store i32* %59, i32** %1, align 8
  %60 = call i32* @CreateRectRgn(i32 1000, i32 20, i32 1010, i32 30)
  store i32* %60, i32** %2, align 8
  %61 = load i32*, i32** %1, align 8
  %62 = load i32*, i32** %1, align 8
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @RGN_OR, align 4
  %65 = call i32 @CombineRgn(i32* %61, i32* %62, i32* %63, i32 %64)
  %66 = load i32, i32* @COMPLEXREGION, align 4
  %67 = call i32 @ok_int(i32 %65, i32 %66)
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @OffsetRgn(i32* %68, i32 134217628, i32 10)
  %70 = load i32, i32* @ERROR, align 4
  %71 = call i32 @ok_int(i32 %69, i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = load i32*, i32** %1, align 8
  %74 = load i32*, i32** %2, align 8
  %75 = load i32, i32* @RGN_XOR, align 4
  %76 = call i32 @CombineRgn(i32* %72, i32* %73, i32* %74, i32 %75)
  %77 = load i32, i32* @SIMPLEREGION, align 4
  %78 = call i32 @ok_int(i32 %76, i32 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @DeleteObject(i32* %79)
  %81 = call i32* @CreateRectRgn(i32 0, i32 0, i32 10, i32 10)
  store i32* %81, i32** %2, align 8
  %82 = load i32*, i32** %1, align 8
  %83 = load i32*, i32** %1, align 8
  %84 = load i32*, i32** %2, align 8
  %85 = load i32, i32* @RGN_XOR, align 4
  %86 = call i32 @CombineRgn(i32* %82, i32* %83, i32* %84, i32 %85)
  %87 = load i32, i32* @NULLREGION, align 4
  %88 = call i32 @ok_int(i32 %86, i32 %87)
  %89 = call i32* @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i32* %89, i32** %1, align 8
  %90 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @GetClipRgn(i32 %91, i32* %92)
  %94 = call i32 @ok_int(i32 %93, i32 0)
  %95 = load i32*, i32** %1, align 8
  %96 = call i32 @OffsetRgn(i32* %95, i32 10, i32 10)
  %97 = load i32, i32* @NULLREGION, align 4
  %98 = call i32 @ok_int(i32 %96, i32 %97)
  ret void
}

declare dso_local i32* @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @OffsetRgn(i32*, i32, i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @CombineRgn(i32*, i32*, i32*, i32) #1

declare dso_local i32 @CreateCompatibleDC(i32*) #1

declare dso_local i32 @GetClipRgn(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
