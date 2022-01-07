; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_hqdn3d.h_deNoiseSpacial.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_hqdn3d.h_deNoiseSpacial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*, i32, i32, i32, i32, i32*, i32*)* @deNoiseSpacial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deNoiseSpacial(i8* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 16
  store i32 %30, i32* %21, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  store i32 %30, i32* %22, align 4
  %33 = load i32, i32* %22, align 4
  %34 = add i32 %33, 268468223
  %35 = lshr i32 %34, 16
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %36, i8* %38, align 1
  store i64 1, i64* %23, align 8
  br label %39

39:                                               ; preds = %64, %9
  %40 = load i64, i64* %23, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load i32, i32* %21, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %23, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 16
  %52 = load i32*, i32** %17, align 8
  %53 = call i32 @LowPassMul(i32 %45, i32 %51, i32* %52)
  %54 = load i32*, i32** %12, align 8
  %55 = load i64, i64* %23, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  store i32 %53, i32* %22, align 4
  %57 = load i32, i32* %22, align 4
  %58 = add i32 %57, 268468223
  %59 = lshr i32 %58, 16
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %23, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 %60, i8* %63, align 1
  br label %64

64:                                               ; preds = %44
  %65 = load i64, i64* %23, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %23, align 8
  br label %39

67:                                               ; preds = %39
  store i64 1, i64* %24, align 8
  br label %68

68:                                               ; preds = %143, %67
  %69 = load i64, i64* %24, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %146

73:                                               ; preds = %68
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %19, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %19, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %20, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %20, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i64, i64* %19, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 16
  store i32 %87, i32* %21, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %21, align 4
  %92 = load i32*, i32** %18, align 8
  %93 = call i32 @LowPassMul(i32 %90, i32 %91, i32* %92)
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %93, i32* %95, align 4
  store i32 %93, i32* %22, align 4
  %96 = load i32, i32* %22, align 4
  %97 = add i32 %96, 268468223
  %98 = lshr i32 %97, 16
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %11, align 8
  %101 = load i64, i64* %20, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8 %99, i8* %102, align 1
  store i64 1, i64* %25, align 8
  br label %103

103:                                              ; preds = %139, %73
  %104 = load i64, i64* %25, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %108, label %142

108:                                              ; preds = %103
  %109 = load i32, i32* %21, align 4
  %110 = load i8*, i8** %10, align 8
  %111 = load i64, i64* %19, align 8
  %112 = load i64, i64* %25, align 8
  %113 = add nsw i64 %111, %112
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 16
  %118 = load i32*, i32** %17, align 8
  %119 = call i32 @LowPassMul(i32 %109, i32 %117, i32* %118)
  store i32 %119, i32* %21, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = load i64, i64* %25, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %21, align 4
  %125 = load i32*, i32** %18, align 8
  %126 = call i32 @LowPassMul(i32 %123, i32 %124, i32* %125)
  %127 = load i32*, i32** %12, align 8
  %128 = load i64, i64* %25, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 %126, i32* %129, align 4
  store i32 %126, i32* %22, align 4
  %130 = load i32, i32* %22, align 4
  %131 = add i32 %130, 268468223
  %132 = lshr i32 %131, 16
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %11, align 8
  %135 = load i64, i64* %20, align 8
  %136 = load i64, i64* %25, align 8
  %137 = add nsw i64 %135, %136
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 %133, i8* %138, align 1
  br label %139

139:                                              ; preds = %108
  %140 = load i64, i64* %25, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %25, align 8
  br label %103

142:                                              ; preds = %103
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %24, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %24, align 8
  br label %68

146:                                              ; preds = %68
  ret void
}

declare dso_local i32 @LowPassMul(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
