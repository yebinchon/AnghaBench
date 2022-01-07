; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_x.c_XDeint8x8MergeC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_x.c_XDeint8x8MergeC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @XDeint8x8MergeC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XDeint8x8MergeC(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %72, %6
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %75

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @memcpy(i32* %19, i32* %20, i32 8)
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %7, align 8
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %56, %18
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 6, %39
  %41 = add nsw i32 %34, %40
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %41, %48
  %50 = add nsw i32 %49, 4
  %51 = ashr i32 %50, 3
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %29
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %26

59:                                               ; preds = %26
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %9, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %11, align 8
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 2
  store i32 %74, i32* %13, align 4
  br label %15

75:                                               ; preds = %15
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
