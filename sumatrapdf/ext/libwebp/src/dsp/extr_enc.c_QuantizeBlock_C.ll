; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_enc.c_QuantizeBlock_C.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_enc.c_QuantizeBlock_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64*, i64*, i64*, i64* }

@kZigzag = common dso_local global i32* null, align 8
@MAX_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, %struct.TYPE_3__*)* @QuantizeBlock_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QuantizeBlock_C(i64* %0, i64* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %134, %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %137

19:                                               ; preds = %16
  %20 = load i32*, i32** @kZigzag, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i64*, i64** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = load i64*, i64** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 0, %39
  br label %47

41:                                               ; preds = %19
  %42 = load i64*, i64** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  br label %47

47:                                               ; preds = %41, %34
  %48 = phi i64 [ %40, %34 ], [ %46, %41 ]
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %48, %55
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %57, %64
  br i1 %65, label %66, label %124

66:                                               ; preds = %47
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %12, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %13, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %14, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @QUANTDIV(i64 %88, i64 %89, i64 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @MAX_LEVEL, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %66
  %96 = load i32, i32* @MAX_LEVEL, align 4
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %95, %66
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %15, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %15, align 4
  %105 = load i64, i64* %12, align 8
  %106 = trunc i64 %105 to i32
  %107 = mul nsw i32 %104, %106
  %108 = sext i32 %107 to i64
  %109 = load i64*, i64** %4, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 %108, i64* %112, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64*, i64** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 %114, i64* %118, align 8
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %103
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %121, %103
  br label %133

124:                                              ; preds = %47
  %125 = load i64*, i64** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  store i64 0, i64* %128, align 8
  %129 = load i64*, i64** %4, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %124, %123
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %16

137:                                              ; preds = %16
  %138 = load i32, i32* %7, align 4
  %139 = icmp sge i32 %138, 0
  %140 = zext i1 %139 to i32
  ret i32 %140
}

declare dso_local i32 @QUANTDIV(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
