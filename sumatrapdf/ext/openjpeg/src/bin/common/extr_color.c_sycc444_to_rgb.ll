; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/common/extr_color.c_sycc444_to_rgb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/common/extr_color.c_sycc444_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i64, i64, i64 }

@OPJ_CLRSPC_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @sycc444_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sycc444_to_rgb(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = sub nsw i32 %25, 1
  %27 = shl i32 1, %26
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %17, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = mul i64 %43, %44
  store i64 %45, i64* %14, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %9, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %10, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %11, align 8
  %64 = load i64, i64* %14, align 8
  %65 = mul i64 4, %64
  %66 = trunc i64 %65 to i32
  %67 = call i64 @opj_image_data_alloc(i32 %66)
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %6, align 8
  store i32* %68, i32** %3, align 8
  %69 = load i64, i64* %14, align 8
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  %72 = call i64 @opj_image_data_alloc(i32 %71)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %7, align 8
  store i32* %73, i32** %4, align 8
  %74 = load i64, i64* %14, align 8
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  %77 = call i64 @opj_image_data_alloc(i32 %76)
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %8, align 8
  store i32* %78, i32** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %1
  %82 = load i32*, i32** %7, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32*, i32** %8, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %81, %1
  br label %164

88:                                               ; preds = %84
  store i64 0, i64* %15, align 8
  br label %89

89:                                               ; preds = %118, %88
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* %14, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %121

93:                                               ; preds = %89
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @sycc_to_rgb(i32 %94, i32 %95, i32 %97, i32 %99, i32 %101, i32* %102, i32* %103, i32* %104)
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %9, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %10, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %11, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %6, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %7, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %8, align 8
  br label %118

118:                                              ; preds = %93
  %119 = load i64, i64* %15, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %15, align 8
  br label %89

121:                                              ; preds = %89
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @opj_image_data_free(i32* %127)
  %129 = load i32*, i32** %3, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32* %129, i32** %134, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @opj_image_data_free(i32* %140)
  %142 = load i32*, i32** %4, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i32* %142, i32** %147, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @opj_image_data_free(i32* %153)
  %155 = load i32*, i32** %5, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 2
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i32* %155, i32** %160, align 8
  %161 = load i32, i32* @OPJ_CLRSPC_SRGB, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  br label %171

164:                                              ; preds = %87
  %165 = load i32*, i32** %6, align 8
  %166 = call i32 @opj_image_data_free(i32* %165)
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @opj_image_data_free(i32* %167)
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @opj_image_data_free(i32* %169)
  br label %171

171:                                              ; preds = %164, %121
  ret void
}

declare dso_local i64 @opj_image_data_alloc(i32) #1

declare dso_local i32 @sycc_to_rgb(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @opj_image_data_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
