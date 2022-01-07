; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_Scan_GetNextTunerConfig.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_Scan_GetNextTunerConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { double, double, i32, %struct.TYPE_17__**, i32, %struct.TYPE_13__, i32*, %struct.TYPE_12__, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32 }

@SCAN_DVB_T = common dso_local global i32 0, align 4
@SCAN_DVB_S = common dso_local global i32 0, align 4
@SCAN_DVB_C = common dso_local global i32 0, align 4
@SCAN_NONE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_ENOITEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, double*)* @Scan_GetNextTunerConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Scan_GetNextTunerConfig(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca double*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store double* %2, double** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %117

15:                                               ; preds = %3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = icmp ne %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %117

20:                                               ; preds = %15
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %8, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sdiv i32 %31, 1000000
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %93 [
    i32 128, label %43
    i32 129, label %44
    i32 130, label %58
    i32 131, label %78
  ]

43:                                               ; preds = %20
  br label %97

44:                                               ; preds = %20
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @SCAN_DVB_T, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %97

58:                                               ; preds = %20
  %59 = load i32, i32* @SCAN_DVB_S, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %69, 1000
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  br label %97

78:                                               ; preds = %20
  %79 = load i32, i32* @SCAN_DVB_C, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sdiv i32 %84, 1000
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  br label %97

93:                                               ; preds = %20
  %94 = load i32, i32* @SCAN_NONE, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %78, %58, %44, %43
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 8
  store %struct.TYPE_16__* %102, %struct.TYPE_16__** %104, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 7
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = sitofp i32 %108 to double
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load double, double* %112, align 8
  %114 = fdiv double %110, %113
  %115 = load double*, double** %7, align 8
  store double %114, double* %115, align 8
  %116 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %116, i32* %4, align 4
  br label %209

117:                                              ; preds = %15, %3
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %149

122:                                              ; preds = %117
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load double, double* %124, align 8
  %126 = fcmp oeq double %125, 0.000000e+00
  br i1 %126, label %138, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %127
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %133, %122
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %141 = load double*, double** %7, align 8
  %142 = call i32 @Scan_GetNextSpectrumTunerConfig(%struct.TYPE_15__* %139, %struct.TYPE_14__* %140, double* %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @VLC_SUCCESS, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %4, align 4
  br label %209

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %133, %127, %117
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %207

154:                                              ; preds = %149
  store i64 0, i64* %10, align 8
  br label %155

155:                                              ; preds = %203, %154
  %156 = load i64, i64* %10, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = icmp ult i64 %156, %160
  br i1 %161, label %162, label %206

162:                                              ; preds = %155
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %165, i64 %166
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %202, label %172

172:                                              ; preds = %162
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %175, align 8
  %177 = load i64, i64* %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %176, i64 %177
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = call i32 @scan_SetMultiplexScanStatus(%struct.TYPE_15__* %173, %struct.TYPE_17__* %179, i32 1)
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %183, align 8
  %185 = load i64, i64* %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %184, i64 %185
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = bitcast %struct.TYPE_14__* %181 to i8*
  %190 = bitcast %struct.TYPE_14__* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %189, i8* align 4 %190, i64 36, i1 false)
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load double, double* %192, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = sitofp i32 %196 to double
  %198 = fdiv double %193, %197
  %199 = fsub double 1.000000e+00, %198
  %200 = load double*, double** %7, align 8
  store double %199, double* %200, align 8
  %201 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %201, i32* %4, align 4
  br label %209

202:                                              ; preds = %162
  br label %203

203:                                              ; preds = %202
  %204 = load i64, i64* %10, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %10, align 8
  br label %155

206:                                              ; preds = %155
  br label %207

207:                                              ; preds = %206, %149
  %208 = load i32, i32* @VLC_ENOITEM, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %207, %172, %146, %97
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @Scan_GetNextSpectrumTunerConfig(%struct.TYPE_15__*, %struct.TYPE_14__*, double*) #1

declare dso_local i32 @scan_SetMultiplexScanStatus(%struct.TYPE_15__*, %struct.TYPE_17__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
