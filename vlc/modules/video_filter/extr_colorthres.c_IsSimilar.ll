; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_colorthres.c_IsSimilar.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_colorthres.c_IsSimilar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32)* @IsSimilar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsSimilar(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %23, %24
  %26 = add nsw i32 %22, %25
  %27 = call i32 @sqrt(i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %15, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %15, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %12, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %12, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = mul nsw i32 %53, %52
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %7
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %14, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %19, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %58, %7
  %65 = phi i1 [ false, %7 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  ret i32 %66
}

declare dso_local i32 @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
