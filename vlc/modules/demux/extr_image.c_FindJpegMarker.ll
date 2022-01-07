; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_image.c_FindJpegMarker.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_image.c_FindJpegMarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @FindJpegMarker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindJpegMarker(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %52, %3
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %11
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 0
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 255
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24, %16
  store i32 255, i32* %4, align 4
  br label %56

33:                                               ; preds = %24
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 255
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 2
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  br label %56

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %11

55:                                               ; preds = %11
  store i32 255, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %41, %32
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
