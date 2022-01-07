; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_desktop_colorres.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_dc.c_test_desktop_colorres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITSPIXEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Expected to get valid BITSPIXEL capability value\0A\00", align 1
@COLORRES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Expected to get valid COLORRES capability value\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Expected COLORRES to be 18, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Expected COLORRES to be 16, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Expected COLORRES to be 24, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Got unknown BITSPIXEL %d with COLORRES %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_desktop_colorres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_desktop_colorres() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @GetDC(i32* null)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @BITSPIXEL, align 4
  %7 = call i32 @GetDeviceCaps(i32 %5, i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @COLORRES, align 4
  %14 = call i32 @GetDeviceCaps(i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @broken(i32 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %17, %0
  %24 = phi i1 [ true, %0 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = load i32, i32* %2, align 4
  switch i32 %30, label %49 [
    i32 8, label %31
    i32 16, label %37
    i32 24, label %43
    i32 32, label %43
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 18
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %53

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 16
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %53

43:                                               ; preds = %29, %29
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 24
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %2, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  br label %53

49:                                               ; preds = %29
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %43, %37, %31
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @ReleaseDC(i32* null, i32 %55)
  ret void
}

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
