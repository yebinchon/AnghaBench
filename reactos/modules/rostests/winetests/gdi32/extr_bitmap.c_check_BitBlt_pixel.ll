; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_check_BitBlt_pixel.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_check_BitBlt_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [66 x i8] c"BitBlt with dwRop %06X. Expected 0x%08X, got 0x%08X from line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, i32, i32, i32)* @check_BitBlt_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_BitBlt_pixel(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32*, i32** %11, align 8
  store i32 -19088744, i32* %15, align 4
  %16 = load i32*, i32** %10, align 8
  store i32 -1985229329, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @BitBlt(i32 %17, i32 0, i32 0, i32 1, i32 1, i32 %18, i32 0, i32 0, i32 %19)
  %21 = load i32, i32* %13, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
