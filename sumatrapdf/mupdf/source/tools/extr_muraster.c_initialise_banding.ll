; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_muraster.c_initialise_banding.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_muraster.c_initialise_banding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@output_cs = common dso_local global i32 0, align 4
@output_format = common dso_local global i64 0, align 8
@min_band_height = common dso_local global i32 0, align 4
@max_band_memory = common dso_local global i64 0, align 8
@OUT_PGM = common dso_local global i64 0, align 8
@OUT_PPM = common dso_local global i64 0, align 8
@out = common dso_local global i32 0, align 4
@OUT_PAM = common dso_local global i64 0, align 8
@OUT_PBM = common dso_local global i64 0, align 8
@OUT_PKM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32)* @initialise_banding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialise_banding(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @output_cs, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i64, i64* @output_format, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %25 [
    i32 129, label %23
    i32 128, label %24
    i32 130, label %26
  ]

23:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %27

24:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %27

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %3, %25
  store i32 3, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %24, %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %31, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @min_band_height, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* @max_band_memory, align 8
  %44 = load i64, i64* %7, align 8
  %45 = udiv i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %27
  store i32 1, i32* %11, align 4
  br label %50

50:                                               ; preds = %49, %27
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %99

55:                                               ; preds = %50
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %59, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @min_band_height, align 4
  %67 = add nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* @min_band_height, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %11, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = sub nsw i64 %82, 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = sdiv i64 %83, %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = mul nsw i64 %87, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* %12, align 4
  %98 = sdiv i32 %96, %97
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %55, %50
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 6
  store i64 0, i64* %104, align 8
  %105 = load i64, i64* @output_format, align 8
  %106 = load i64, i64* @OUT_PGM, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %99
  %109 = load i64, i64* @output_format, align 8
  %110 = load i64, i64* @OUT_PPM, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %108, %99
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @out, align 4
  %115 = call i32 @fz_new_pnm_band_writer(i32* %113, i32 %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load i64, i64* @output_format, align 8
  %119 = load i64, i64* @OUT_PGM, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 1, i32 3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  br label %164

125:                                              ; preds = %108
  %126 = load i64, i64* @output_format, align 8
  %127 = load i64, i64* @OUT_PAM, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* @out, align 4
  %132 = call i32 @fz_new_pam_band_writer(i32* %130, i32 %131)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  store i32 4, i32* %136, align 4
  br label %163

137:                                              ; preds = %125
  %138 = load i64, i64* @output_format, align 8
  %139 = load i64, i64* @OUT_PBM, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* @out, align 4
  %144 = call i32 @fz_new_pbm_band_writer(i32* %142, i32 %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 4
  store i32 1, i32* %148, align 4
  br label %162

149:                                              ; preds = %137
  %150 = load i64, i64* @output_format, align 8
  %151 = load i64, i64* @OUT_PKM, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* @out, align 4
  %156 = call i32 @fz_new_pkm_band_writer(i32* %154, i32 %155)
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 4
  store i32 4, i32* %160, align 4
  br label %161

161:                                              ; preds = %153, %149
  br label %162

162:                                              ; preds = %161, %141
  br label %163

163:                                              ; preds = %162, %129
  br label %164

164:                                              ; preds = %163, %112
  ret void
}

declare dso_local i32 @fz_new_pnm_band_writer(i32*, i32) #1

declare dso_local i32 @fz_new_pam_band_writer(i32*, i32) #1

declare dso_local i32 @fz_new_pbm_band_writer(i32*, i32) #1

declare dso_local i32 @fz_new_pkm_band_writer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
