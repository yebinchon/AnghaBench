; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_magnify.c_DrawRectangle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_magnify.c_DrawRectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32, i32)* @DrawRectangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawRectangle(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %15, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* %11, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %16, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %8
  br label %88

30:                                               ; preds = %23
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @memset(i32* %38, i32 255, i32 %39)
  store i32 1, i32* %17, align 4
  br label %41

41:                                               ; preds = %71, %30
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %16, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %41
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %52, %53
  %55 = add nsw i32 %54, 0
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %47, i64 %56
  store i32 255, i32* %57, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %58, i64 %69
  store i32 255, i32* %70, align 4
  br label %71

71:                                               ; preds = %46
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %41

74:                                               ; preds = %41
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %76, %77
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %10, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %75, i64 %84
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @memset(i32* %85, i32 255, i32 %86)
  br label %88

88:                                               ; preds = %74, %29
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
