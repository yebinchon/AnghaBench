; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_transition.c_blind_horiz.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_transition.c_blind_horiz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32)* @blind_horiz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blind_horiz(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %76

22:                                               ; preds = %4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %76

25:                                               ; preds = %22
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %76

28:                                               ; preds = %25
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %76, label %36

36:                                               ; preds = %28
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %76, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %76, label %52

52:                                               ; preds = %44
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %76, label %60

60:                                               ; preds = %52
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68, %60, %52, %44, %36, %28, %25, %22, %4
  store i32 0, i32* %5, align 4
  br label %152

77:                                               ; preds = %68
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = mul nsw i64 %80, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %14, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 7
  %90 = sdiv i64 %89, 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sdiv i32 %94, 256
  store i32 %95, i32* %15, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %18, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %19, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %17, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %10, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %11, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 4
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %12, align 8
  store i32 0, i32* %16, align 4
  br label %114

114:                                              ; preds = %148, %77
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %116, %119
  br i1 %120, label %121, label %151

121:                                              ; preds = %114
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %13, align 4
  %125 = srem i32 %123, %124
  %126 = load i32, i32* %15, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i8*, i8** %12, align 8
  br label %132

130:                                              ; preds = %121
  %131 = load i8*, i8** %11, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i8* [ %129, %128 ], [ %131, %130 ]
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @memcpy(i8* %122, i8* %133, i32 %134)
  %136 = load i32, i32* %17, align 4
  %137 = load i8*, i8** %10, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %10, align 8
  %140 = load i32, i32* %18, align 4
  %141 = load i8*, i8** %11, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %11, align 8
  %144 = load i32, i32* %19, align 4
  %145 = load i8*, i8** %12, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8* %147, i8** %12, align 8
  br label %148

148:                                              ; preds = %132
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %114

151:                                              ; preds = %114
  store i32 1, i32* %5, align 4
  br label %152

152:                                              ; preds = %151, %76
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
