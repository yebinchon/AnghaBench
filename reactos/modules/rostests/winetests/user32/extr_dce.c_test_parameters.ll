; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dce.c_test_parameters.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dce.c_test_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwnd_cache = common dso_local global i32 0, align 4
@hwnd_owndc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ReleaseDC with wrong window should succeed\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"ReleaseDC with wrong HDC should fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"correct ReleaseDC should succeed\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"second ReleaseDC should fail\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"second ReleaseDC should succeed\0A\00", align 1
@hwnd_classdc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parameters() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @hwnd_cache, align 4
  %3 = call i64 @GetDC(i32 %2)
  store i64 %3, i64* %1, align 8
  %4 = load i32, i32* @hwnd_owndc, align 4
  %5 = load i64, i64* %1, align 8
  %6 = call i32 @ReleaseDC(i32 %4, i64 %5)
  %7 = call i32 @ok(i32 %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @hwnd_cache, align 4
  %9 = call i64 @GetDC(i32 %8)
  store i64 %9, i64* %1, align 8
  %10 = load i32, i32* @hwnd_cache, align 4
  %11 = call i32 @ReleaseDC(i32 %10, i64 0)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @hwnd_cache, align 4
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ReleaseDC(i32 %16, i64 %17)
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @hwnd_cache, align 4
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ReleaseDC(i32 %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* @hwnd_owndc, align 4
  %28 = call i64 @GetDC(i32 %27)
  store i64 %28, i64* %1, align 8
  %29 = load i32, i32* @hwnd_cache, align 4
  %30 = load i64, i64* %1, align 8
  %31 = call i32 @ReleaseDC(i32 %29, i64 %30)
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @hwnd_owndc, align 4
  %34 = call i64 @GetDC(i32 %33)
  store i64 %34, i64* %1, align 8
  %35 = load i32, i32* @hwnd_owndc, align 4
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @ReleaseDC(i32 %35, i64 %36)
  %38 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @hwnd_owndc, align 4
  %40 = load i64, i64* %1, align 8
  %41 = call i32 @ReleaseDC(i32 %39, i64 %40)
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* @hwnd_classdc, align 4
  %44 = call i64 @GetDC(i32 %43)
  store i64 %44, i64* %1, align 8
  %45 = load i32, i32* @hwnd_cache, align 4
  %46 = load i64, i64* %1, align 8
  %47 = call i32 @ReleaseDC(i32 %45, i64 %46)
  %48 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @hwnd_classdc, align 4
  %50 = call i64 @GetDC(i32 %49)
  store i64 %50, i64* %1, align 8
  %51 = load i32, i32* @hwnd_classdc, align 4
  %52 = load i64, i64* %1, align 8
  %53 = call i32 @ReleaseDC(i32 %51, i64 %52)
  %54 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @hwnd_classdc, align 4
  %56 = load i64, i64* %1, align 8
  %57 = call i32 @ReleaseDC(i32 %55, i64 %56)
  %58 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i64 @GetDC(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @ReleaseDC(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
