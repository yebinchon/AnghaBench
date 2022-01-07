; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_OpenCommon.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_OpenCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32, double*, double*, i32*, %struct.TYPE_19__*, %struct.TYPE_25__, i32, i32, %struct.TYPE_20__, i32, i64, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32*, double*, i32*, double* }
%struct.TYPE_25__ = type { i32, i32, i64 (%struct.TYPE_23__*)* }
%struct.TYPE_20__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"es-fps\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"detected format %4.4s\00", align 1
@AUDIO_REPLAY_GAIN_MAX = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32, %struct.TYPE_25__*, i32)* @OpenCommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenCommon(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_25__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = call i32 (...) @DEMUX_INIT_COMMON()
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %10, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %19 = call i32 @memset(%struct.TYPE_24__* %18, i32 0, i32 112)
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 7
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %23 = bitcast %struct.TYPE_25__* %21 to i8*
  %24 = bitcast %struct.TYPE_25__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 13
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 12
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 2
  store i32 0, i32* %37, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %39 = call i32 @var_InheritFloat(%struct.TYPE_23__* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 5
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 10
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 10
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 10
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @TAB_INIT(i32 %50, i32 %54)
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @vlc_stream_Seek(i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %4
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %66 = call i32 @free(%struct.TYPE_24__* %65)
  %67 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %67, i32* %5, align 4
  br label %205

68:                                               ; preds = %4
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 2
  %72 = load i64 (%struct.TYPE_23__*)*, i64 (%struct.TYPE_23__*)** %71, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %74 = call i64 %72(%struct.TYPE_23__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %78 = call i32 @free(%struct.TYPE_24__* %77)
  %79 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %79, i32* %5, align 4
  br label %205

80:                                               ; preds = %68
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = bitcast i32* %84 to i8*
  %86 = call i32 @msg_Dbg(%struct.TYPE_23__* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @es_format_Init(%struct.TYPE_22__* %11, i32 %87, i32 %91)
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  store i32 %95, i32* %96, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call %struct.TYPE_19__* @demux_PacketizerNew(%struct.TYPE_23__* %97, %struct.TYPE_22__* %11, i32 %101)
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 6
  store %struct.TYPE_19__* %102, %struct.TYPE_19__** %104, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 6
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = icmp ne %struct.TYPE_19__* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %80
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %111 = call i32 @free(%struct.TYPE_24__* %110)
  %112 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %112, i32* %5, align 4
  br label %205

113:                                              ; preds = %80
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 6
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  store %struct.TYPE_22__* %117, %struct.TYPE_22__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %185, %113
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @AUDIO_REPLAY_GAIN_MAX, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %188

122:                                              ; preds = %118
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 3
  %125 = load double*, double** %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double, double* %125, i64 %127
  %129 = load double, double* %128, align 8
  %130 = fcmp une double %129, 0.000000e+00
  br i1 %130, label %131, label %153

131:                                              ; preds = %122
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 1, i32* %138, align 4
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 3
  %141 = load double*, double** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  %145 = load double, double* %144, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = load double*, double** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, double* %149, i64 %151
  store double %145, double* %152, align 8
  br label %153

153:                                              ; preds = %131, %122
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 4
  %156 = load double*, double** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %156, i64 %158
  %160 = load double, double* %159, align 8
  %161 = fcmp une double %160, 0.000000e+00
  br i1 %161, label %162, label %184

162:                                              ; preds = %153
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 1, i32* %169, align 4
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 4
  %172 = load double*, double** %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds double, double* %172, i64 %174
  %176 = load double, double* %175, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 3
  %180 = load double*, double** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds double, double* %180, i64 %182
  store double %176, double* %183, align 8
  br label %184

184:                                              ; preds = %162, %153
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %13, align 4
  br label %118

188:                                              ; preds = %118
  br label %189

189:                                              ; preds = %202, %188
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 5
  %193 = call i64 @Parse(%struct.TYPE_23__* %190, i32** %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %203

196:                                              ; preds = %189
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 5
  %199 = load i32*, i32** %198, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %203

202:                                              ; preds = %196
  br label %189

203:                                              ; preds = %201, %195
  %204 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %203, %109, %76, %64
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @DEMUX_INIT_COMMON(...) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @var_InheritFloat(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @TAB_INIT(i32, i32) #1

declare dso_local i64 @vlc_stream_Seek(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_24__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_23__*, i8*, i8*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_22__*, i32, i32) #1

declare dso_local %struct.TYPE_19__* @demux_PacketizerNew(%struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @Parse(%struct.TYPE_23__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
