; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_add_char_to_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-device.c_add_char_to_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, float, %struct.TYPE_16__, i32*, %struct.TYPE_21__, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (i32*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32*, float, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32)* @add_char_to_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @add_char_to_line(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i32 %3, i32* %4, float %5, i32 %6, %struct.TYPE_21__* %7, %struct.TYPE_21__* %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_19__*, align 8
  %22 = alloca %struct.TYPE_21__, align 8
  %23 = alloca %struct.TYPE_21__, align 8
  %24 = alloca %struct.TYPE_20__, align 8
  %25 = alloca %struct.TYPE_21__, align 8
  %26 = alloca %struct.TYPE_21__, align 8
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store float %5, float* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.TYPE_21__* %7, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %8, %struct.TYPE_21__** %19, align 8
  store i32 %9, i32* %20, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_19__* @fz_pool_alloc(i32* %27, i32 %30, i32 80)
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %21, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = icmp ne %struct.TYPE_19__* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %10
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %39, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 2
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %41, align 8
  br label %51

42:                                               ; preds = %10
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 6
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %47, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  store %struct.TYPE_19__* %48, %struct.TYPE_19__** %50, align 8
  br label %51

51:                                               ; preds = %42, %36
  %52 = load i32, i32* %17, align 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %20, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %61 = bitcast %struct.TYPE_21__* %59 to i8*
  %62 = bitcast %struct.TYPE_21__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  %63 = load float, float* %16, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 2
  store float %63, float* %65, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %51
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = call i64 @fz_font_ascender(i32* %76, i32* %77)
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = call i64 @fz_font_descender(i32* %80, i32* %81)
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  br label %101

84:                                               ; preds = %51
  %85 = load i32*, i32** %11, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = call { i64, i64 } @fz_font_bbox(i32* %85, i32* %86)
  %88 = bitcast %struct.TYPE_20__* %24 to { i64, i64 }*
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %88, i32 0, i32 0
  %90 = extractvalue { i64, i64 } %87, 0
  store i64 %90, i64* %89, align 8
  %91 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %88, i32 0, i32 1
  %92 = extractvalue { i64, i64 } %87, 1
  store i64 %92, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  store i64 %94, i64* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  store i64 %97, i64* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %84, %73
  %102 = load i32, i32* %14, align 4
  %103 = bitcast %struct.TYPE_21__* %22 to { i64, i64 }*
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %103, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call { i64, i64 } @fz_transform_vector(i64 %105, i64 %107, i32 %102)
  %109 = bitcast %struct.TYPE_21__* %25 to { i64, i64 }*
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 0
  %111 = extractvalue { i64, i64 } %108, 0
  store i64 %111, i64* %110, align 8
  %112 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %109, i32 0, i32 1
  %113 = extractvalue { i64, i64 } %108, 1
  store i64 %113, i64* %112, align 8
  %114 = bitcast %struct.TYPE_21__* %22 to i8*
  %115 = bitcast %struct.TYPE_21__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 16, i1 false)
  %116 = load i32, i32* %14, align 4
  %117 = bitcast %struct.TYPE_21__* %23 to { i64, i64 }*
  %118 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %117, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call { i64, i64 } @fz_transform_vector(i64 %119, i64 %121, i32 %116)
  %123 = bitcast %struct.TYPE_21__* %26 to { i64, i64 }*
  %124 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %123, i32 0, i32 0
  %125 = extractvalue { i64, i64 } %122, 0
  store i64 %125, i64* %124, align 8
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %123, i32 0, i32 1
  %127 = extractvalue { i64, i64 } %122, 1
  store i64 %127, i64* %126, align 8
  %128 = bitcast %struct.TYPE_21__* %23 to i8*
  %129 = bitcast %struct.TYPE_21__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 16, i1 false)
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %132, %134
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %138, %140
  %142 = call i8* @fz_make_point(i64 %135, i64 %141)
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 3
  store i8* %142, i8** %145, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %148, %150
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %154, %156
  %158 = call i8* @fz_make_point(i64 %151, i64 %157)
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  store i8* %158, i8** %161, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %164, %166
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %170, %172
  %174 = call i8* @fz_make_point(i64 %167, i64 %173)
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  store i8* %174, i8** %177, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %180, %182
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %186, %188
  %190 = call i8* @fz_make_point(i64 %183, i64 %189)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  store i8* %190, i8** %193, align 8
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  ret %struct.TYPE_19__* %194
}

declare dso_local %struct.TYPE_19__* @fz_pool_alloc(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fz_font_ascender(i32*, i32*) #1

declare dso_local i64 @fz_font_descender(i32*, i32*) #1

declare dso_local { i64, i64 } @fz_font_bbox(i32*, i32*) #1

declare dso_local { i64, i64 } @fz_transform_vector(i64, i64, i32) #1

declare dso_local i8* @fz_make_point(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
