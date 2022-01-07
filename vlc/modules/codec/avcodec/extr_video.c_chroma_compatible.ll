; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_chroma_compatible.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_chroma_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chroma_compatible.compat_lists = internal constant [4 x [2 x i64]] [[2 x i64] [i64 131, i64 135], [2 x i64] [i64 130, i64 134], [2 x i64] [i64 129, i64 133], [2 x i64] [i64 128, i64 132]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @chroma_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chroma_compatible(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %50

11:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %46, %11
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @ARRAY_SIZE(i64** bitcast ([4 x [2 x i64]]* @chroma_compatible.compat_lists to i64**))
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds [4 x [2 x i64]], [4 x [2 x i64]]* @chroma_compatible.compat_lists, i64 0, i64 %18
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %21 = load i64, i64* %20, align 16
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds [4 x [2 x i64]], [4 x [2 x i64]]* @chroma_compatible.compat_lists, i64 0, i64 %25
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %26, i64 0, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %23, %16
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds [4 x [2 x i64]], [4 x [2 x i64]]* @chroma_compatible.compat_lists, i64 0, i64 %32
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %33, i64 0, i64 0
  %35 = load i64, i64* %34, align 16
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds [4 x [2 x i64]], [4 x [2 x i64]]* @chroma_compatible.compat_lists, i64 0, i64 %39
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %40, i64 0, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %30
  store i32 1, i32* %3, align 4
  br label %50

45:                                               ; preds = %37, %23
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %12

49:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %44, %10
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @ARRAY_SIZE(i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
