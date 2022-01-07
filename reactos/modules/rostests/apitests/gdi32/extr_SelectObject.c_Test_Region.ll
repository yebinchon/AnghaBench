; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_SelectObject.c_Test_Region.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_SelectObject.c_Test_Region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@hdc1 = common dso_local global i32 0, align 4
@NULLREGION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SIMPLEREGION = common dso_local global i64 0, align 8
@RGN_OR = common dso_local global i32 0, align 4
@COMPLEXREGION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_Region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_Region() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @ERROR_SUCCESS, align 4
  %4 = call i32 @SetLastError(i32 %3)
  %5 = call i64 @CreateRectRgn(i32 0, i32 0, i32 0, i32 0)
  store i64 %5, i64* %1, align 8
  %6 = load i32, i32* @hdc1, align 4
  %7 = load i64, i64* %1, align 8
  %8 = call i64 @SelectObject(i32 %6, i64 %7)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @NULLREGION, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @DeleteObject(i64 %14)
  %16 = call i64 @CreateRectRgn(i32 0, i32 0, i32 10, i32 10)
  store i64 %16, i64* %1, align 8
  %17 = load i32, i32* @hdc1, align 4
  %18 = load i64, i64* %1, align 8
  %19 = call i64 @SelectObject(i32 %17, i64 %18)
  %20 = load i64, i64* @SIMPLEREGION, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = call i64 @CreateRectRgn(i32 5, i32 5, i32 20, i32 20)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* %2, align 8
  %28 = load i32, i32* @RGN_OR, align 4
  %29 = call i64 @CombineRgn(i64 %25, i64 %26, i64 %27, i32 %28)
  %30 = load i64, i64* @COMPLEXREGION, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @DeleteObject(i64 %34)
  %36 = load i32, i32* @hdc1, align 4
  %37 = load i64, i64* %1, align 8
  %38 = call i64 @SelectObject(i32 %36, i64 %37)
  %39 = load i64, i64* @SIMPLEREGION, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = load i64, i64* %1, align 8
  %44 = call i32 @DeleteObject(i64 %43)
  %45 = load i32, i32* @ERROR_SUCCESS, align 4
  %46 = call i32 @ok_err(i32 %45)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i64 @CombineRgn(i64, i64, i64, i32) #1

declare dso_local i32 @ok_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
