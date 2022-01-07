; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenAdjust_InitFilterParams.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_OpenAdjust_InitFilterParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.adjust_data = type { i32, %struct.adjust_params }
%struct.adjust_params = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64, i32 }

@VAProcColorBalanceCount = common dso_local global i32 0, align 4
@VAProcFilterColorBalance = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@va_adjust_modes = common dso_local global i64* null, align 8
@adjust_params_names = common dso_local global i32* null, align 8
@vlc_adjust_sigma_ranges = common dso_local global %struct.TYPE_21__* null, align 8
@VLC_ENOMEM = common dso_local global i32 0, align 4
@NUM_ADJUST_MODES = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i8**, i32*, i32*)* @OpenAdjust_InitFilterParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenAdjust_InitFilterParams(%struct.TYPE_17__* %0, i8* %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.adjust_data*, align 8
  %13 = alloca %struct.adjust_params*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca %struct.TYPE_19__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to %struct.adjust_data*
  store %struct.adjust_data* %27, %struct.adjust_data** %12, align 8
  %28 = load %struct.adjust_data*, %struct.adjust_data** %12, align 8
  %29 = getelementptr inbounds %struct.adjust_data, %struct.adjust_data* %28, i32 0, i32 1
  store %struct.adjust_params* %29, %struct.adjust_params** %13, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %14, align 8
  %33 = load i32, i32* @VAProcColorBalanceCount, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %15, align 8
  %36 = alloca %struct.TYPE_20__, i64 %34, align 16
  store i64 %34, i64* %16, align 8
  %37 = load i32, i32* @VAProcColorBalanceCount, align 4
  store i32 %37, i32* %17, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = call i32 @VLC_OBJECT(%struct.TYPE_17__* %38)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VAProcFilterColorBalance, align 4
  %49 = call i64 @vlc_vaapi_QueryVideoProcFilterCaps(i32 %39, i32 %43, i32 %47, i32 %48, %struct.TYPE_20__* %36, i32* %17)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %5
  %52 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %52, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %220

53:                                               ; preds = %5
  store i32 0, i32* %19, align 4
  br label %54

54:                                               ; preds = %160, %53
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %163

58:                                               ; preds = %54
  store i32 0, i32* %20, align 4
  br label %59

59:                                               ; preds = %156, %58
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %159

63:                                               ; preds = %59
  %64 = load i32, i32* %20, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 16
  %69 = load i64*, i64** @va_adjust_modes, align 8
  %70 = load i32, i32* %19, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %68, %73
  br i1 %74, label %75, label %155

75:                                               ; preds = %63
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %77 = load i32*, i32** @adjust_params_names, align 8
  %78 = load i32, i32* %19, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @var_InheritFloat(%struct.TYPE_17__* %76, i32 %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** @vlc_adjust_sigma_ranges, align 8
  %84 = load i32, i32* %19, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** @vlc_adjust_sigma_ranges, align 8
  %90 = load i32, i32* %19, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call float @VLC_CLIP(i32 %82, i32 %88, i32 %94)
  store float %95, float* %21, align 4
  %96 = load i32*, i32** @adjust_params_names, align 8
  %97 = load i32, i32* %19, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load float, float* %21, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** @vlc_adjust_sigma_ranges, align 8
  %103 = load i32, i32* %19, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i64 %104
  %106 = call float @adapt_adjust_sigma(i32 %100, float %101, %struct.TYPE_21__* %105)
  store float %106, float* %21, align 4
  %107 = load i32, i32* %20, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.adjust_params*, %struct.adjust_params** %13, align 8
  %113 = getelementptr inbounds %struct.adjust_params, %struct.adjust_params* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = load i32, i32* %19, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  store i32 %111, i32* %118, align 4
  %119 = load %struct.adjust_params*, %struct.adjust_params** %13, align 8
  %120 = getelementptr inbounds %struct.adjust_params, %struct.adjust_params* %119, i32 0, i32 0
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = load i32, i32* %19, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 4
  %126 = load %struct.adjust_data*, %struct.adjust_data** %12, align 8
  %127 = getelementptr inbounds %struct.adjust_data, %struct.adjust_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load float, float* %21, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** @vlc_adjust_sigma_ranges, align 8
  %132 = load i32, i32* %19, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i64 %133
  %135 = load %struct.adjust_params*, %struct.adjust_params** %13, align 8
  %136 = getelementptr inbounds %struct.adjust_params, %struct.adjust_params* %135, i32 0, i32 0
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = load i32, i32* %19, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = bitcast %struct.TYPE_21__* %134 to i64*
  %144 = load i64, i64* %143, align 4
  %145 = call float @GET_DRV_SIGMA(float %130, i64 %144, i32 %142)
  store float %145, float* %22, align 4
  %146 = load %struct.adjust_params*, %struct.adjust_params** %13, align 8
  %147 = getelementptr inbounds %struct.adjust_params, %struct.adjust_params* %146, i32 0, i32 0
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = load i32, i32* %19, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load float, float* %22, align 4
  %154 = call i32 @vlc_atomic_init_float(i32* %152, float %153)
  br label %159

155:                                              ; preds = %63
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %20, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %20, align 4
  br label %59

159:                                              ; preds = %75, %59
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %19, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %19, align 4
  br label %54

163:                                              ; preds = %54
  %164 = load i32*, i32** %10, align 8
  store i32 16, i32* %164, align 4
  %165 = load %struct.adjust_data*, %struct.adjust_data** %12, align 8
  %166 = getelementptr inbounds %struct.adjust_data, %struct.adjust_data* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32*, i32** %11, align 8
  store i32 %167, i32* %168, align 4
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %10, align 8
  %172 = load i32, i32* %171, align 4
  %173 = call %struct.TYPE_19__* @calloc(i32 %170, i32 %172)
  store %struct.TYPE_19__* %173, %struct.TYPE_19__** %23, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %175 = icmp ne %struct.TYPE_19__* %174, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %163
  %177 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %177, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %220

178:                                              ; preds = %163
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %179

179:                                              ; preds = %212, %178
  %180 = load i32, i32* %25, align 4
  %181 = load i32, i32* @NUM_ADJUST_MODES, align 4
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %183, label %215

183:                                              ; preds = %179
  %184 = load %struct.adjust_params*, %struct.adjust_params** %13, align 8
  %185 = getelementptr inbounds %struct.adjust_params, %struct.adjust_params* %184, i32 0, i32 0
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = load i32, i32* %25, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %183
  %194 = load i32, i32* @VAProcFilterColorBalance, align 4
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %196 = load i32, i32* %24, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 1
  store i32 %194, i32* %199, align 8
  %200 = load i64*, i64** @va_adjust_modes, align 8
  %201 = load i32, i32* %25, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %206 = load i32, i32* %24, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %24, align 4
  %208 = zext i32 %206 to i64
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  store i64 %204, i64* %210, align 8
  br label %211

211:                                              ; preds = %193, %183
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %25, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %25, align 4
  br label %179

215:                                              ; preds = %179
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %217 = bitcast %struct.TYPE_19__* %216 to i8*
  %218 = load i8**, i8*** %9, align 8
  store i8* %217, i8** %218, align 8
  %219 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %219, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %220

220:                                              ; preds = %215, %176, %51
  %221 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @vlc_vaapi_QueryVideoProcFilterCaps(i32, i32, i32, i32, %struct.TYPE_20__*, i32*) #2

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_17__*) #2

declare dso_local float @VLC_CLIP(i32, i32, i32) #2

declare dso_local i32 @var_InheritFloat(%struct.TYPE_17__*, i32) #2

declare dso_local float @adapt_adjust_sigma(i32, float, %struct.TYPE_21__*) #2

declare dso_local float @GET_DRV_SIGMA(float, i64, i32) #2

declare dso_local i32 @vlc_atomic_init_float(i32*, float) #2

declare dso_local %struct.TYPE_19__* @calloc(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
