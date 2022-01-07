; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_find_closest_in_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_find_closest_in_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_23__*, %struct.TYPE_15__ }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_20__, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32, i64, i64)* @find_closest_in_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_closest_in_line(%struct.TYPE_22__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = bitcast %struct.TYPE_14__* %6 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  store i64 %2, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  store i64 %3, i64* %17, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store i32 %1, i32* %8, align 4
  store float 0x46293E5940000000, float* %10, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %22, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %5, align 4
  br label %195

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %40, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %49 = call i32 @line_length(%struct.TYPE_22__* %48)
  %50 = add nsw i32 %47, %49
  store i32 %50, i32* %5, align 4
  br label %195

51:                                               ; preds = %38
  br label %76

52:                                               ; preds = %4
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %63 = call i32 @line_length(%struct.TYPE_22__* %62)
  %64 = add nsw i32 %61, %63
  store i32 %64, i32* %5, align 4
  br label %195

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %67, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %5, align 4
  br label %195

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %51
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %78, align 8
  store %struct.TYPE_23__* %79, %struct.TYPE_23__** %9, align 8
  br label %80

80:                                               ; preds = %189, %76
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %82 = icmp ne %struct.TYPE_23__* %81, null
  br i1 %82, label %83, label %193

83:                                               ; preds = %80
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %88, %93
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %94, %99
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %100, %105
  %107 = sdiv i32 %106, 4
  %108 = sitofp i32 %107 to float
  store float %108, float* %12, align 4
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %113, %118
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %119, %124
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %125, %130
  %132 = sdiv i32 %131, 4
  %133 = sitofp i32 %132 to float
  store float %133, float* %13, align 4
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = sitofp i64 %135 to float
  %137 = load float, float* %12, align 4
  %138 = fsub float %136, %137
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sitofp i64 %140 to float
  %142 = load float, float* %13, align 4
  %143 = fsub float %141, %142
  %144 = call float @dist2(float %138, float %143)
  store float %144, float* %14, align 4
  %145 = load float, float* %14, align 4
  %146 = load float, float* %10, align 4
  %147 = fcmp olt float %145, %146
  br i1 %147, label %148, label %186

148:                                              ; preds = %83
  %149 = load float, float* %14, align 4
  store float %149, float* %10, align 4
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %153, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %148
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = sitofp i64 %161 to float
  %163 = load float, float* %12, align 4
  %164 = fcmp olt float %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %8, align 4
  br label %170

167:                                              ; preds = %159
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  br label %170

170:                                              ; preds = %167, %165
  %171 = phi i32 [ %166, %165 ], [ %169, %167 ]
  store i32 %171, i32* %11, align 4
  br label %185

172:                                              ; preds = %148
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = sitofp i64 %174 to float
  %176 = load float, float* %13, align 4
  %177 = fcmp olt float %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = load i32, i32* %8, align 4
  br label %183

180:                                              ; preds = %172
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  br label %183

183:                                              ; preds = %180, %178
  %184 = phi i32 [ %179, %178 ], [ %182, %180 ]
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %183, %170
  br label %186

186:                                              ; preds = %185, %83
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %186
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %191, align 8
  store %struct.TYPE_23__* %192, %struct.TYPE_23__** %9, align 8
  br label %80

193:                                              ; preds = %80
  %194 = load i32, i32* %11, align 4
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %193, %73, %60, %46, %36
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @line_length(%struct.TYPE_22__*) #1

declare dso_local float @dist2(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
