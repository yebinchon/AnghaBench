; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_find_closest_in_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-search.c_find_closest_in_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i64 }

@FZ_STEXT_BLOCK_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i64, i64)* @find_closest_in_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_closest_in_page(%struct.TYPE_15__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = bitcast %struct.TYPE_19__* %5 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  store i64 %1, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  store i64 %2, i64* %21, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  store i32 0, i32* %10, align 4
  store float 0x46293E5940000000, float* %11, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %7, align 8
  br label %25

25:                                               ; preds = %203, %3
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %27 = icmp ne %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %207

28:                                               ; preds = %25
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FZ_STEXT_BLOCK_TEXT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %203

35:                                               ; preds = %28
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %8, align 8
  br label %41

41:                                               ; preds = %198, %35
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = icmp ne %struct.TYPE_16__* %42, null
  br i1 %43, label %44, label %202

44:                                               ; preds = %41
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = bitcast %struct.TYPE_18__* %14 to i8*
  %48 = bitcast %struct.TYPE_18__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 32, i1 false)
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %50, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %56, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %68, %70
  %72 = call float @dist2(i64 %71, i64 0)
  store float %72, float* %12, align 4
  br label %88

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %81, %83
  %85 = call float @dist2(i64 %84, i64 0)
  store float %85, float* %12, align 4
  br label %87

86:                                               ; preds = %73
  store float 0.000000e+00, float* %12, align 4
  br label %87

87:                                               ; preds = %86, %79
  br label %88

88:                                               ; preds = %87, %66
  br label %183

89:                                               ; preds = %54, %44
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %91, %93
  br i1 %94, label %95, label %130

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp sle i64 %97, %99
  br i1 %100, label %101, label %130

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %109, %111
  %113 = call float @dist2(i64 %112, i64 0)
  store float %113, float* %12, align 4
  br label %129

114:                                              ; preds = %101
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %116, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %122, %124
  %126 = call float @dist2(i64 %125, i64 0)
  store float %126, float* %12, align 4
  br label %128

127:                                              ; preds = %114
  store float 0.000000e+00, float* %12, align 4
  br label %128

128:                                              ; preds = %127, %120
  br label %129

129:                                              ; preds = %128, %107
  br label %182

130:                                              ; preds = %95, %89
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %132, %134
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %137, %139
  %141 = call float @dist2(i64 %135, i64 %140)
  store float %141, float* %15, align 4
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %143, %145
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %148, %150
  %152 = call float @dist2(i64 %146, i64 %151)
  store float %152, float* %16, align 4
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %154, %156
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %159, %161
  %163 = call float @dist2(i64 %157, i64 %162)
  store float %163, float* %17, align 4
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = sub nsw i64 %165, %167
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %170, %172
  %174 = call float @dist2(i64 %168, i64 %173)
  store float %174, float* %18, align 4
  %175 = load float, float* %15, align 4
  %176 = load float, float* %16, align 4
  %177 = call float @fz_min(float %175, float %176)
  %178 = load float, float* %17, align 4
  %179 = load float, float* %18, align 4
  %180 = call float @fz_min(float %178, float %179)
  %181 = call float @fz_min(float %177, float %180)
  store float %181, float* %12, align 4
  br label %182

182:                                              ; preds = %130, %129
  br label %183

183:                                              ; preds = %182, %88
  %184 = load float, float* %12, align 4
  %185 = load float, float* %11, align 4
  %186 = fcmp olt float %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load float, float* %12, align 4
  store float %188, float* %11, align 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %189, %struct.TYPE_16__** %9, align 8
  %190 = load i32, i32* %13, align 4
  store i32 %190, i32* %10, align 4
  br label %191

191:                                              ; preds = %187, %183
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %193 = call i64 @line_length(%struct.TYPE_16__* %192)
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %13, align 4
  br label %198

198:                                              ; preds = %191
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %200, align 8
  store %struct.TYPE_16__* %201, %struct.TYPE_16__** %8, align 8
  br label %41

202:                                              ; preds = %41
  br label %203

203:                                              ; preds = %202, %34
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %205, align 8
  store %struct.TYPE_17__* %206, %struct.TYPE_17__** %7, align 8
  br label %25

207:                                              ; preds = %25
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %209 = icmp ne %struct.TYPE_16__* %208, null
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %212 = load i32, i32* %10, align 4
  %213 = bitcast %struct.TYPE_19__* %5 to { i64, i64 }*
  %214 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %213, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @find_closest_in_line(%struct.TYPE_16__* %211, i32 %212, i64 %215, i64 %217)
  store i32 %218, i32* %4, align 4
  br label %220

219:                                              ; preds = %207
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %219, %210
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @dist2(i64, i64) #2

declare dso_local float @fz_min(float, float) #2

declare dso_local i64 @line_length(%struct.TYPE_16__*) #2

declare dso_local i32 @find_closest_in_line(%struct.TYPE_16__*, i32, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
