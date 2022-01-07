; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_Scan_Next_DVBT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_Scan_Next_DVBT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@Scan_Next_DVBT.i_band_count = internal constant i32 2, align 4
@Scan_Next_DVBT.band = internal constant [2 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 174, i32 230 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 470, i32 862 }], align 16
@.str = private unnamed_addr constant [4 x i8] c"VHF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"UHF\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_14__*, double*)* @Scan_Next_DVBT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Scan_Next_DVBT(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_14__* %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store double* %3, double** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = load double*, double** %9, align 8
  %36 = call i32 @Scan_Next_DVB_SpectrumExhaustive(%struct.TYPE_15__* %32, %struct.TYPE_16__* %33, %struct.TYPE_14__* %34, double* %35)
  store i32 %36, i32* %5, align 4
  br label %242

37:                                               ; preds = %4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi i32 [ %47, %43 ], [ 166667, %48 ]
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  br label %62

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %56
  %63 = phi i32 [ %60, %56 ], [ 6, %61 ]
  store i32 %63, i32* %11, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  br label %75

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %69
  %76 = phi i32 [ %73, %69 ], [ 8, %74 ]
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sub i32 %77, %78
  %80 = add i32 %79, 1
  store i32 %80, i32* %13, align 4
  store i32 5, i32* %14, align 4
  store i32 1000000, i32* %15, align 4
  br label %81

81:                                               ; preds = %237, %75
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %13, align 4
  %86 = urem i32 %84, %85
  store i32 %86, i32* %16, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %13, align 4
  %91 = udiv i32 %89, %90
  %92 = urem i32 %91, 5
  store i32 %92, i32* %17, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %13, align 4
  %97 = udiv i32 %95, %96
  %98 = udiv i32 %97, 5
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %16, align 4
  %101 = add i32 %99, %100
  store i32 %101, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %102

102:                                              ; preds = %123, %81
  %103 = load i32, i32* %20, align 4
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %105, label %126

105:                                              ; preds = %102
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @Scan_Next_DVBT.band, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %106, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @Scan_Next_DVBT.band, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.anon, %struct.anon* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp sle i32 %114, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %126

122:                                              ; preds = %113, %105
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %20, align 4
  br label %102

126:                                              ; preds = %121, %102
  %127 = load i32, i32* %20, align 4
  %128 = icmp sge i32 %127, 2
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* getelementptr inbounds ([2 x %struct.anon], [2 x %struct.anon]* @Scan_Next_DVBT.band, i64 0, i64 1, i32 2), align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %138, i32* %5, align 4
  br label %242

139:                                              ; preds = %129
  br label %237

140:                                              ; preds = %126
  %141 = load i32, i32* %20, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @Scan_Next_DVBT.band, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.anon, %struct.anon* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %145, 1000000
  %147 = load i32, i32* %19, align 4
  %148 = mul nsw i32 %147, 1000000
  %149 = sdiv i32 %148, 2
  %150 = add nsw i32 %146, %149
  store i32 %150, i32* %21, align 4
  %151 = load i32, i32* %18, align 4
  %152 = mul nsw i32 %151, 1000000
  store i32 %152, i32* %22, align 4
  %153 = load i32, i32* %22, align 4
  %154 = load i32, i32* %21, align 4
  %155 = icmp uge i32 %153, %154
  br i1 %155, label %156, label %236

156:                                              ; preds = %140
  %157 = load i32, i32* %22, align 4
  %158 = load i32, i32* %21, align 4
  %159 = sub i32 %157, %158
  %160 = load i32, i32* %19, align 4
  %161 = mul nsw i32 %160, 1000000
  %162 = urem i32 %159, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %236

164:                                              ; preds = %156
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* %17, align 4
  %167 = sub nsw i32 %166, 2
  %168 = load i32, i32* %10, align 4
  %169 = mul i32 %167, %168
  %170 = add i32 %165, %169
  store i32 %170, i32* %23, align 4
  %171 = load i32, i32* %23, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %19, align 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %20, align 4
  br label %177

177:                                              ; preds = %217, %164
  %178 = load i32, i32* %20, align 4
  %179 = icmp slt i32 %178, 2
  br i1 %179, label %180, label %220

180:                                              ; preds = %177
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @Scan_Next_DVBT.band, i64 0, i64 %182
  %184 = getelementptr inbounds %struct.anon, %struct.anon* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %20, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @Scan_Next_DVBT.band, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.anon, %struct.anon* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %185, %190
  store i32 %191, i32* %26, align 4
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %20, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @Scan_Next_DVBT.band, i64 0, i64 %194
  %196 = getelementptr inbounds %struct.anon, %struct.anon* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp sge i32 %192, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %180
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @Scan_Next_DVBT.band, i64 0, i64 %202
  %204 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = sub nsw i32 %200, %205
  %207 = load i32, i32* %26, align 4
  %208 = call i64 @__MIN(i32 %206, i32 %207)
  %209 = load i32, i32* %24, align 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %210, %208
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %24, align 4
  br label %213

213:                                              ; preds = %199, %180
  %214 = load i32, i32* %26, align 4
  %215 = load i32, i32* %25, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %25, align 4
  br label %217

217:                                              ; preds = %213
  %218 = load i32, i32* %20, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %20, align 4
  br label %177

220:                                              ; preds = %177
  %221 = load i32, i32* %24, align 4
  %222 = sitofp i32 %221 to double
  %223 = load i32, i32* %17, align 4
  %224 = sitofp i32 %223 to double
  %225 = fdiv double %224, 5.000000e+00
  %226 = fadd double %222, %225
  %227 = load i32, i32* %25, align 4
  %228 = sitofp i32 %227 to double
  %229 = fdiv double %226, %228
  %230 = load double*, double** %9, align 8
  store double %229, double* %230, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %232, align 4
  %235 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %235, i32* %5, align 4
  br label %242

236:                                              ; preds = %156, %140
  br label %237

237:                                              ; preds = %236, %139
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %239, align 4
  br label %81

242:                                              ; preds = %220, %133, %31
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local i32 @Scan_Next_DVB_SpectrumExhaustive(%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_14__*, double*) #1

declare dso_local i64 @__MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
