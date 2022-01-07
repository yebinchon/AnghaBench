; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_palette.c_generate_gray16_palette.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_palette.c_generate_gray16_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @generate_gray16_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_gray16_palette(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 16
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %40, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 -16777216, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 20
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 16
  %22 = or i32 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 12
  %25 = or i32 %22, %24
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %25, %27
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 %29, 4
  %31 = or i32 %28, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %31, %32
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %33
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %13
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %10

43:                                               ; preds = %10
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
