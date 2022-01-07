; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_x.c_XDeint8x8DetectC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_x.c_XDeint8x8DetectC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @XDeint8x8DetectC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XDeint8x8DetectC(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %113, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 7
  br i1 %12, label %13, label %116

13:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %92, %13
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %95

17:                                               ; preds = %14
  %18 = load i64*, i64** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 1, %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %23, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %22, %30
  %32 = call i64 @ssd(i64 %31)
  %33 = load i64*, i64** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %33, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 2, %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %40, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %39, %47
  %49 = call i64 @ssd(i64 %48)
  %50 = add nsw i64 %32, %49
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i64*, i64** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = mul nsw i32 2, %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %60, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %59, %67
  %69 = call i64 @ssd(i64 %68)
  %70 = load i64*, i64** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %70, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = mul nsw i32 3, %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %77, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %76, %84
  %86 = call i64 @ssd(i64 %85)
  %87 = add nsw i64 %69, %86
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %17
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %14

95:                                               ; preds = %14
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 6, %97
  %99 = sdiv i32 %98, 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = icmp sgt i32 %102, 32
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %104, %101, %95
  %108 = load i32, i32* %4, align 4
  %109 = mul nsw i32 2, %108
  %110 = load i64*, i64** %3, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64* %112, i64** %3, align 8
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 2
  store i32 %115, i32* %5, align 4
  br label %10

116:                                              ; preds = %10
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 1
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 0, i32 1
  ret i32 %120
}

declare dso_local i64 @ssd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
