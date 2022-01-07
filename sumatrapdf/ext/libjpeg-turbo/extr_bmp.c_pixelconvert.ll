; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_bmp.c_pixelconvert.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_bmp.c_pixelconvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tjPixelSize = common dso_local global i32* null, align 8
@tjRedOffset = common dso_local global i64* null, align 8
@tjGreenOffset = common dso_local global i64* null, align 8
@tjBlueOffset = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*, i32, i32, i32, i32)* @pixelconvert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pixelconvert(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %27 = load i8*, i8** %9, align 8
  store i8* %27, i8** %17, align 8
  %28 = load i32*, i32** @tjPixelSize, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %8
  %36 = load i32, i32* %15, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i32, i32* %19, align 4
  %39 = mul nsw i32 %37, %38
  br label %44

40:                                               ; preds = %8
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %19, align 4
  %43 = mul nsw i32 %41, %42
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %39, %35 ], [ %43, %40 ]
  store i32 %45, i32* %20, align 4
  %46 = load i8*, i8** %12, align 8
  store i8* %46, i8** %21, align 8
  %47 = load i32*, i32** @tjPixelSize, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %23, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load i32, i32* %15, align 4
  %56 = sub nsw i32 0, %55
  %57 = load i32, i32* %23, align 4
  %58 = mul nsw i32 %56, %57
  br label %63

59:                                               ; preds = %44
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %23, align 4
  %62 = mul nsw i32 %60, %61
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi i32 [ %58, %54 ], [ %62, %59 ]
  store i32 %64, i32* %24, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %19, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %16, align 4
  %73 = sub nsw i32 %72, 1
  %74 = mul nsw i32 %71, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %68, i64 %75
  store i8* %76, i8** %17, align 8
  br label %77

77:                                               ; preds = %67, %63
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %23, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %16, align 4
  %86 = sub nsw i32 %85, 1
  %87 = mul nsw i32 %84, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %81, i64 %88
  store i8* %89, i8** %21, align 8
  br label %90

90:                                               ; preds = %80, %77
  store i32 0, i32* %25, align 4
  br label %91

91:                                               ; preds = %160, %90
  %92 = load i32, i32* %25, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %171

95:                                               ; preds = %91
  store i32 0, i32* %26, align 4
  %96 = load i8*, i8** %17, align 8
  store i8* %96, i8** %18, align 8
  %97 = load i8*, i8** %21, align 8
  store i8* %97, i8** %22, align 8
  br label %98

98:                                               ; preds = %148, %95
  %99 = load i32, i32* %26, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %159

102:                                              ; preds = %98
  %103 = load i8*, i8** %18, align 8
  %104 = load i64*, i64** @tjRedOffset, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8, i8* %103, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %22, align 8
  %112 = load i64*, i64** @tjRedOffset, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i8, i8* %111, i64 %116
  store i8 %110, i8* %117, align 1
  %118 = load i8*, i8** %18, align 8
  %119 = load i64*, i64** @tjGreenOffset, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i8, i8* %118, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = load i8*, i8** %22, align 8
  %127 = load i64*, i64** @tjGreenOffset, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i8, i8* %126, i64 %131
  store i8 %125, i8* %132, align 1
  %133 = load i8*, i8** %18, align 8
  %134 = load i64*, i64** @tjBlueOffset, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i8, i8* %133, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = load i8*, i8** %22, align 8
  %142 = load i64*, i64** @tjBlueOffset, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* %141, i64 %146
  store i8 %140, i8* %147, align 1
  br label %148

148:                                              ; preds = %102
  %149 = load i32, i32* %26, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %26, align 4
  %151 = load i32, i32* %19, align 4
  %152 = load i8*, i8** %18, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %18, align 8
  %155 = load i32, i32* %23, align 4
  %156 = load i8*, i8** %22, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %22, align 8
  br label %98

159:                                              ; preds = %98
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %25, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %25, align 4
  %163 = load i32, i32* %20, align 4
  %164 = load i8*, i8** %17, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %17, align 8
  %167 = load i32, i32* %24, align 4
  %168 = load i8*, i8** %21, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8* %170, i8** %21, align 8
  br label %91

171:                                              ; preds = %91
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
