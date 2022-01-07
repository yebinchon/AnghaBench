; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_halftone.c_jbig2_decode_pattern_dict.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_halftone.c_jbig2_decode_pattern_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_24__ = type { i32*, i64, i64, i32, i64 }

@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"failed to allocate collective bitmap for halftone dictionary\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"failed to allocate arithmetic coding state when handling halftone dictionary\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"failed to allocate word stream when handling halftone dictionary\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to decode immediate generic region\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_25__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i64, i32*)* @jbig2_decode_pattern_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @jbig2_decode_pattern_dict(%struct.TYPE_25__* %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_24__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %17, align 4
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = mul nsw i32 %23, %27
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @jbig2_image_new(%struct.TYPE_25__* %20, i32 %28, i32 %31)
  store i32* %32, i32** %15, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %6
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %37 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @jbig2_error(%struct.TYPE_25__* %36, i32 %37, i32 %40, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %7, align 8
  br label %156

42:                                               ; preds = %6
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 4
  store i64 %45, i64* %46, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 3
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 0, %55
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %56, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 -3, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 -1, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32 2, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  store i32 -2, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  store i32 -2, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 7
  store i32 -2, i32* %80, align 4
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %42
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @jbig2_decode_generic_mmr(%struct.TYPE_25__* %86, %struct.TYPE_22__* %87, %struct.TYPE_24__* %16, i32* %88, i64 %89, i32* %90)
  store i32 %91, i32* %17, align 4
  br label %136

92:                                               ; preds = %42
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call i32* @jbig2_word_stream_buf_new(%struct.TYPE_25__* %93, i32* %94, i64 %95)
  store i32* %96, i32** %18, align 8
  %97 = load i32*, i32** %18, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %128

99:                                               ; preds = %92
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = call i32* @jbig2_arith_new(%struct.TYPE_25__* %100, i32* %101)
  store i32* %102, i32** %19, align 8
  %103 = load i32*, i32** %19, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %108 = load i32*, i32** %19, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @jbig2_decode_generic_region(%struct.TYPE_25__* %106, %struct.TYPE_22__* %107, %struct.TYPE_24__* %16, i32* %108, i32* %109, i32* %110)
  store i32 %111, i32* %17, align 4
  br label %119

112:                                              ; preds = %99
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %114 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @jbig2_error(%struct.TYPE_25__* %113, i32 %114, i32 %117, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %112, %105
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %19, align 8
  %124 = call i32 @jbig2_free(i32 %122, i32* %123)
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = call i32 @jbig2_word_stream_buf_free(%struct.TYPE_25__* %125, i32* %126)
  br label %135

128:                                              ; preds = %92
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %130 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @jbig2_error(%struct.TYPE_25__* %129, i32 %130, i32 %133, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %128, %119
  br label %136

136:                                              ; preds = %135, %85
  %137 = load i32, i32* %17, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = call i32* @jbig2_hd_new(%struct.TYPE_25__* %140, %struct.TYPE_23__* %141, i32* %142)
  store i32* %143, i32** %14, align 8
  br label %151

144:                                              ; preds = %136
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %146 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @jbig2_error(%struct.TYPE_25__* %145, i32 %146, i32 %149, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %151

151:                                              ; preds = %144, %139
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %153 = load i32*, i32** %15, align 8
  %154 = call i32 @jbig2_image_release(%struct.TYPE_25__* %152, i32* %153)
  %155 = load i32*, i32** %14, align 8
  store i32* %155, i32** %7, align 8
  br label %156

156:                                              ; preds = %151, %35
  %157 = load i32*, i32** %7, align 8
  ret i32* %157
}

declare dso_local i32* @jbig2_image_new(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @jbig2_error(%struct.TYPE_25__*, i32, i32, i8*) #1

declare dso_local i32 @jbig2_decode_generic_mmr(%struct.TYPE_25__*, %struct.TYPE_22__*, %struct.TYPE_24__*, i32*, i64, i32*) #1

declare dso_local i32* @jbig2_word_stream_buf_new(%struct.TYPE_25__*, i32*, i64) #1

declare dso_local i32* @jbig2_arith_new(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @jbig2_decode_generic_region(%struct.TYPE_25__*, %struct.TYPE_22__*, %struct.TYPE_24__*, i32*, i32*, i32*) #1

declare dso_local i32 @jbig2_free(i32, i32*) #1

declare dso_local i32 @jbig2_word_stream_buf_free(%struct.TYPE_25__*, i32*) #1

declare dso_local i32* @jbig2_hd_new(%struct.TYPE_25__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @jbig2_image_release(%struct.TYPE_25__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
