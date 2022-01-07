; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_helpers.c_TestForMotionInBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_helpers.c_TestForMotionInBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i32, i32, i32*, i32*)* @TestForMotionInBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TestForMotionInBlock(i64* %0, i64* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %22

22:                                               ; preds = %76, %6
  %23 = load i32, i32* %16, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %79

25:                                               ; preds = %22
  %26 = load i64*, i64** %8, align 8
  store i64* %26, i64** %17, align 8
  %27 = load i64*, i64** %7, align 8
  store i64* %27, i64** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %28

28:                                               ; preds = %49, %25
  %29 = load i32, i32* %20, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i64*, i64** %17, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %18, align 8
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %33, %35
  %37 = call i64 @abs(i64 %36)
  store i64 %37, i64* %21, align 8
  %38 = load i64, i64* %21, align 8
  %39 = load i64, i64* @T, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* %19, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %19, align 4
  br label %44

44:                                               ; preds = %41, %31
  %45 = load i64*, i64** %17, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %17, align 8
  %47 = load i64*, i64** %18, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %18, align 8
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %20, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %20, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %16, align 4
  %57 = srem i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %14, align 4
  br label %67

63:                                               ; preds = %52
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %10, align 4
  %69 = load i64*, i64** %8, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64* %71, i64** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i64*, i64** %7, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64* %75, i64** %7, align 8
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %16, align 4
  br label %22

79:                                               ; preds = %22
  %80 = load i32, i32* %14, align 4
  %81 = icmp sge i32 %80, 8
  %82 = zext i1 %81 to i32
  %83 = load i32*, i32** %11, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp sge i32 %84, 8
  %86 = zext i1 %85 to i32
  %87 = load i32*, i32** %12, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp sge i32 %88, 8
  %90 = zext i1 %89 to i32
  ret i32 %90
}

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
