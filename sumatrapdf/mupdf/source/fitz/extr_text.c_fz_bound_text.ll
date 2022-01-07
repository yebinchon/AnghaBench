; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_text.c_fz_bound_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_text.c_fz_bound_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__*, i32, %struct.TYPE_26__, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i64, i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }

@fz_empty_rect = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @fz_bound_text(i32* %0, %struct.TYPE_24__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_25__, align 4
  %6 = alloca %struct.TYPE_26__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_26__, align 4
  %12 = alloca %struct.TYPE_26__, align 4
  %13 = alloca %struct.TYPE_25__, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_26__, align 4
  %16 = alloca %struct.TYPE_25__, align 4
  %17 = alloca %struct.TYPE_25__, align 4
  %18 = alloca %struct.TYPE_25__, align 4
  %19 = bitcast %struct.TYPE_26__* %6 to i64*
  store i64 %3, i64* %19, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %8, align 8
  store i32* %2, i32** %9, align 8
  %20 = bitcast %struct.TYPE_25__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.TYPE_25__* @fz_empty_rect to i8*), i64 16, i1 false)
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %10, align 8
  br label %24

24:                                               ; preds = %126, %4
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %26 = icmp ne %struct.TYPE_23__* %25, null
  br i1 %26, label %27, label %130

27:                                               ; preds = %24
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %125

32:                                               ; preds = %27
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 3
  %35 = bitcast %struct.TYPE_26__* %11 to i8*
  %36 = bitcast %struct.TYPE_26__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 8, i1 false)
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %121, %32
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %124

43:                                               ; preds = %37
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %120

53:                                               ; preds = %43
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = bitcast %struct.TYPE_26__* %11 to i64*
  %73 = load i64, i64* %72, align 4
  %74 = bitcast %struct.TYPE_26__* %6 to i64*
  %75 = load i64, i64* %74, align 4
  %76 = call i64 @fz_concat(i64 %73, i64 %75)
  %77 = bitcast %struct.TYPE_26__* %15 to i64*
  store i64 %76, i64* %77, align 4
  %78 = bitcast %struct.TYPE_26__* %12 to i8*
  %79 = bitcast %struct.TYPE_26__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 8, i1 false)
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = bitcast %struct.TYPE_26__* %12 to i64*
  %93 = load i64, i64* %92, align 4
  %94 = call { i64, i64 } @fz_bound_glyph(i32* %80, i32 %83, i64 %91, i64 %93)
  %95 = bitcast %struct.TYPE_25__* %16 to { i64, i64 }*
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %95, i32 0, i32 0
  %97 = extractvalue { i64, i64 } %94, 0
  store i64 %97, i64* %96, align 4
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %95, i32 0, i32 1
  %99 = extractvalue { i64, i64 } %94, 1
  store i64 %99, i64* %98, align 4
  %100 = bitcast %struct.TYPE_25__* %13 to i8*
  %101 = bitcast %struct.TYPE_25__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 16, i1 false)
  %102 = bitcast %struct.TYPE_25__* %5 to { i64, i64 }*
  %103 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 4
  %105 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %102, i32 0, i32 1
  %106 = load i64, i64* %105, align 4
  %107 = bitcast %struct.TYPE_25__* %13 to { i64, i64 }*
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 1
  %111 = load i64, i64* %110, align 4
  %112 = call { i64, i64 } @fz_union_rect(i64 %104, i64 %106, i64 %109, i64 %111)
  %113 = bitcast %struct.TYPE_25__* %17 to { i64, i64 }*
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %113, i32 0, i32 0
  %115 = extractvalue { i64, i64 } %112, 0
  store i64 %115, i64* %114, align 4
  %116 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %113, i32 0, i32 1
  %117 = extractvalue { i64, i64 } %112, 1
  store i64 %117, i64* %116, align 4
  %118 = bitcast %struct.TYPE_25__* %5 to i8*
  %119 = bitcast %struct.TYPE_25__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 16, i1 false)
  br label %120

120:                                              ; preds = %53, %43
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %37

124:                                              ; preds = %37
  br label %125

125:                                              ; preds = %124, %27
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %128, align 8
  store %struct.TYPE_23__* %129, %struct.TYPE_23__** %10, align 8
  br label %24

130:                                              ; preds = %24
  %131 = bitcast %struct.TYPE_25__* %5 to { i64, i64 }*
  %132 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 4
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %131, i32 0, i32 1
  %135 = load i64, i64* %134, align 4
  %136 = call i32 @fz_is_empty_rect(i64 %133, i64 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %172, label %138

138:                                              ; preds = %130
  %139 = load i32*, i32** %9, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %159

141:                                              ; preds = %138
  %142 = load i32*, i32** %7, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = bitcast %struct.TYPE_25__* %5 to { i64, i64 }*
  %145 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 4
  %147 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %144, i32 0, i32 1
  %148 = load i64, i64* %147, align 4
  %149 = bitcast %struct.TYPE_26__* %6 to i64*
  %150 = load i64, i64* %149, align 4
  %151 = call { i64, i64 } @fz_adjust_rect_for_stroke(i32* %142, i64 %146, i64 %148, i32* %143, i64 %150)
  %152 = bitcast %struct.TYPE_25__* %18 to { i64, i64 }*
  %153 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %152, i32 0, i32 0
  %154 = extractvalue { i64, i64 } %151, 0
  store i64 %154, i64* %153, align 4
  %155 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %152, i32 0, i32 1
  %156 = extractvalue { i64, i64 } %151, 1
  store i64 %156, i64* %155, align 4
  %157 = bitcast %struct.TYPE_25__* %5 to i8*
  %158 = bitcast %struct.TYPE_25__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %157, i8* align 4 %158, i64 16, i1 false)
  br label %159

159:                                              ; preds = %141, %138
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %159, %130
  %173 = bitcast %struct.TYPE_25__* %5 to { i64, i64 }*
  %174 = load { i64, i64 }, { i64, i64 }* %173, align 4
  ret { i64, i64 } %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @fz_concat(i64, i64) #2

declare dso_local { i64, i64 } @fz_bound_glyph(i32*, i32, i64, i64) #2

declare dso_local { i64, i64 } @fz_union_rect(i64, i64, i64, i64) #2

declare dso_local i32 @fz_is_empty_rect(i64, i64) #2

declare dso_local { i64, i64 } @fz_adjust_rect_for_stroke(i32*, i64, i64, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
