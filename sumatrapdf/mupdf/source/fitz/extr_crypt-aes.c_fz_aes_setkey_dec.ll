; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-aes.c_fz_aes_setkey_dec.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_crypt-aes.c_fz_aes_setkey_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64*, i64* }

@RT0 = common dso_local global i32* null, align 8
@FSb = common dso_local global i64* null, align 8
@RT1 = common dso_local global i32* null, align 8
@RT2 = common dso_local global i32* null, align 8
@RT3 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_aes_setkey_dec(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %23 [
    i32 128, label %14
    i32 192, label %17
    i32 256, label %20
  ]

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 10, i32* %16, align 8
  br label %24

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 12, i32* %19, align 8
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 14, i32* %22, align 8
  br label %24

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %155

24:                                               ; preds = %20, %17, %14
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  store i64* %27, i64** %11, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i64* %27, i64** %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @fz_aes_setkey_enc(%struct.TYPE_5__* %10, i8* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %155

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %39, i64 %43
  store i64* %44, i64** %12, align 8
  %45 = load i64*, i64** %12, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %12, align 8
  %47 = load i64, i64* %45, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %11, align 8
  store i64 %47, i64* %48, align 8
  %50 = load i64*, i64** %12, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %12, align 8
  %52 = load i64, i64* %50, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  %55 = load i64*, i64** %12, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %12, align 8
  %57 = load i64, i64* %55, align 8
  %58 = load i64*, i64** %11, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %11, align 8
  store i64 %57, i64* %58, align 8
  %60 = load i64*, i64** %12, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %12, align 8
  %62 = load i64, i64* %60, align 8
  %63 = load i64*, i64** %11, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %11, align 8
  store i64 %62, i64* %63, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = load i64*, i64** %12, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 -8
  store i64* %70, i64** %12, align 8
  br label %71

71:                                               ; preds = %130, %37
  %72 = load i32, i32* %8, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %135

74:                                               ; preds = %71
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %124, %74
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %129

78:                                               ; preds = %75
  %79 = load i32*, i32** @RT0, align 8
  %80 = load i64*, i64** @FSb, align 8
  %81 = load i64*, i64** %12, align 8
  %82 = load i64, i64* %81, align 8
  %83 = and i64 %82, 255
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @RT1, align 8
  %89 = load i64*, i64** @FSb, align 8
  %90 = load i64*, i64** %12, align 8
  %91 = load i64, i64* %90, align 8
  %92 = lshr i64 %91, 8
  %93 = and i64 %92, 255
  %94 = getelementptr inbounds i64, i64* %89, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %88, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = xor i32 %87, %97
  %99 = load i32*, i32** @RT2, align 8
  %100 = load i64*, i64** @FSb, align 8
  %101 = load i64*, i64** %12, align 8
  %102 = load i64, i64* %101, align 8
  %103 = lshr i64 %102, 16
  %104 = and i64 %103, 255
  %105 = getelementptr inbounds i64, i64* %100, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %99, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %98, %108
  %110 = load i32*, i32** @RT3, align 8
  %111 = load i64*, i64** @FSb, align 8
  %112 = load i64*, i64** %12, align 8
  %113 = load i64, i64* %112, align 8
  %114 = lshr i64 %113, 24
  %115 = and i64 %114, 255
  %116 = getelementptr inbounds i64, i64* %111, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %110, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %109, %119
  %121 = sext i32 %120 to i64
  %122 = load i64*, i64** %11, align 8
  %123 = getelementptr inbounds i64, i64* %122, i32 1
  store i64* %123, i64** %11, align 8
  store i64 %121, i64* %122, align 8
  br label %124

124:                                              ; preds = %78
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  %127 = load i64*, i64** %12, align 8
  %128 = getelementptr inbounds i64, i64* %127, i32 1
  store i64* %128, i64** %12, align 8
  br label %75

129:                                              ; preds = %75
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %8, align 4
  %133 = load i64*, i64** %12, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 -8
  store i64* %134, i64** %12, align 8
  br label %71

135:                                              ; preds = %71
  %136 = load i64*, i64** %12, align 8
  %137 = getelementptr inbounds i64, i64* %136, i32 1
  store i64* %137, i64** %12, align 8
  %138 = load i64, i64* %136, align 8
  %139 = load i64*, i64** %11, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %11, align 8
  store i64 %138, i64* %139, align 8
  %141 = load i64*, i64** %12, align 8
  %142 = getelementptr inbounds i64, i64* %141, i32 1
  store i64* %142, i64** %12, align 8
  %143 = load i64, i64* %141, align 8
  %144 = load i64*, i64** %11, align 8
  %145 = getelementptr inbounds i64, i64* %144, i32 1
  store i64* %145, i64** %11, align 8
  store i64 %143, i64* %144, align 8
  %146 = load i64*, i64** %12, align 8
  %147 = getelementptr inbounds i64, i64* %146, i32 1
  store i64* %147, i64** %12, align 8
  %148 = load i64, i64* %146, align 8
  %149 = load i64*, i64** %11, align 8
  %150 = getelementptr inbounds i64, i64* %149, i32 1
  store i64* %150, i64** %11, align 8
  store i64 %148, i64* %149, align 8
  %151 = load i64*, i64** %12, align 8
  %152 = load i64, i64* %151, align 8
  %153 = load i64*, i64** %11, align 8
  store i64 %152, i64* %153, align 8
  %154 = call i32 @memset(%struct.TYPE_5__* %10, i32 0, i32 24)
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %135, %35, %23
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @fz_aes_setkey_enc(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
