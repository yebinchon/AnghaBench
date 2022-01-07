; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_encode_tile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_encode_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i64, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_22__* }
%struct.TYPE_25__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64*, i64* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_25__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_26__*, i64, i64 }
%struct.TYPE_26__ = type { i32*, i32*, i32*, i32*, i32* }

@OPJ_FALSE = common dso_local global i32 0, align 4
@OPJ_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_tcd_encode_tile(%struct.TYPE_28__* %0, i64 %1, i32* %2, i64* %3, i64 %4, %struct.TYPE_21__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca %struct.TYPE_30__*, align 8
  %20 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_21__* %5, %struct.TYPE_21__** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %200

25:                                               ; preds = %7
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i64 %34
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 2
  store %struct.TYPE_25__* %35, %struct.TYPE_25__** %37, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %39 = icmp ne %struct.TYPE_21__* %38, null
  br i1 %39, label %40, label %165

40:                                               ; preds = %25
  store i64 0, i64* %16, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i64 0
  store %struct.TYPE_27__* %48, %struct.TYPE_27__** %18, align 8
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %52, align 8
  store %struct.TYPE_30__* %53, %struct.TYPE_30__** %19, align 8
  store i64 0, i64* %17, align 8
  br label %54

54:                                               ; preds = %133, %40
  %55 = load i64, i64* %17, align 8
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %136

60:                                               ; preds = %54
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %62, align 8
  %64 = load i64, i64* %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i64 %64
  store %struct.TYPE_29__* %65, %struct.TYPE_29__** %20, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %17, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %69, i32* %78, align 4
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %17, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %82, i32* %91, align 4
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = mul i64 %94, %97
  %99 = load i64, i64* %16, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %16, align 8
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* %17, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %109, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* %17, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %107, i32* %116, align 4
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %17, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %17, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %123, i32* %132, align 4
  br label %133

133:                                              ; preds = %60
  %134 = load i64, i64* %17, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %17, align 8
  br label %54

136:                                              ; preds = %54
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = mul i64 %139, %142
  %144 = load i64, i64* %16, align 8
  %145 = mul i64 %143, %144
  %146 = call i64 @opj_calloc(i64 %145, i32 4)
  %147 = inttoptr i64 %146 to i32*
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %149, align 8
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 4
  store i32* %147, i32** %153, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %155, align 8
  %157 = load i64, i64* %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %136
  %163 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %163, i32* %8, align 4
  br label %219

164:                                              ; preds = %136
  br label %165

165:                                              ; preds = %164, %25
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %167 = call i32 @opj_tcd_dc_level_shift_encode(%struct.TYPE_28__* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %170, i32* %8, align 4
  br label %219

171:                                              ; preds = %165
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %173 = call i32 @opj_tcd_mct_encode(%struct.TYPE_28__* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %176, i32* %8, align 4
  br label %219

177:                                              ; preds = %171
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %179 = call i32 @opj_tcd_dwt_encode(%struct.TYPE_28__* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  %182 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %182, i32* %8, align 4
  br label %219

183:                                              ; preds = %177
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %185 = call i32 @opj_tcd_t1_encode(%struct.TYPE_28__* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %188, i32* %8, align 4
  br label %219

189:                                              ; preds = %183
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %191 = load i32*, i32** %11, align 8
  %192 = load i64, i64* %13, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %194 = load i32*, i32** %15, align 8
  %195 = call i32 @opj_tcd_rate_allocate_encode(%struct.TYPE_28__* %190, i32* %191, i64 %192, %struct.TYPE_21__* %193, i32* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %189
  %198 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %198, i32* %8, align 4
  br label %219

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199, %7
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %202 = icmp ne %struct.TYPE_21__* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 0
  store i32 1, i32* %205, align 8
  br label %206

206:                                              ; preds = %203, %200
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %208 = load i32*, i32** %11, align 8
  %209 = load i64*, i64** %12, align 8
  %210 = load i64, i64* %13, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %212 = load i32*, i32** %15, align 8
  %213 = call i32 @opj_tcd_t2_encode(%struct.TYPE_28__* %207, i32* %208, i64* %209, i64 %210, %struct.TYPE_21__* %211, i32* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %206
  %216 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %216, i32* %8, align 4
  br label %219

217:                                              ; preds = %206
  %218 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %217, %215, %197, %187, %181, %175, %169, %162
  %220 = load i32, i32* %8, align 4
  ret i32 %220
}

declare dso_local i64 @opj_calloc(i64, i32) #1

declare dso_local i32 @opj_tcd_dc_level_shift_encode(%struct.TYPE_28__*) #1

declare dso_local i32 @opj_tcd_mct_encode(%struct.TYPE_28__*) #1

declare dso_local i32 @opj_tcd_dwt_encode(%struct.TYPE_28__*) #1

declare dso_local i32 @opj_tcd_t1_encode(%struct.TYPE_28__*) #1

declare dso_local i32 @opj_tcd_rate_allocate_encode(%struct.TYPE_28__*, i32*, i64, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @opj_tcd_t2_encode(%struct.TYPE_28__*, i32*, i64*, i64, %struct.TYPE_21__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
