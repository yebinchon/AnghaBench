; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_wave.c_check_position.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_wave.c_check_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@TIME_BYTES = common dso_local global i64 0, align 8
@MMSYSERR_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"waveOutGetPosition(%s): rc=%s\0A\00", align 1
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@winetest_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"waveOutGetPosition(%s): TIME_BYTES not supported, returned %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"waveOutGetPosition(%s): returned %d bytes, should be %d\0A\00", align 1
@TIME_SAMPLES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [65 x i8] c"waveOutGetPosition(%s): TIME_SAMPLES not supported, returned %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"waveOutGetPosition(%s): returned %d samples (%d bytes), should be %d (%d bytes)\0A\00", align 1
@TIME_MS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [60 x i8] c"waveOutGetPosition(%s): TIME_MS not supported, returned %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [77 x i8] c"waveOutGetPosition(%s): returned %d ms, (%d bytes), should be %d (%d bytes)\0A\00", align 1
@TIME_SMPTE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [63 x i8] c"waveOutGetPosition(%s): TIME_SMPTE not supported, returned %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"waveOutGetPosition(%s): SMPTE test failed\0A\00", align 1
@TIME_MIDI = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [62 x i8] c"waveOutGetPosition(%s): TIME_MIDI not supported, returned %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"waveOutGetPosition(%s): MIDI test failed\0A\00", align 1
@TIME_TICKS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [63 x i8] c"waveOutGetPosition(%s): TIME_TICKS not supported, returned %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"waveOutGetPosition(%s): TICKS test failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i32)* @check_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_position(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* @TIME_BYTES, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @waveOutGetPosition(i32 %14, %struct.TYPE_4__* %9, i32 7)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @MMSYSERR_ERROR, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_name(i32 %20)
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @wave_out_error(i64 %22)
  %24 = call i32 (i32, i8*, i32, ...) @ok(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = load i64, i64* @TIME_BYTES, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @waveOutGetPosition(i32 %27, %struct.TYPE_4__* %9, i32 9)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_name(i32 %33)
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @wave_out_error(i64 %35)
  %37 = call i32 (i32, i8*, i32, ...) @ok(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TIME_BYTES, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %4
  %43 = load i32, i32* @winetest_debug, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_name(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @wave_time_format(i64 %49)
  %51 = call i32 @trace(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %45, %42, %4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @time_to_bytes(%struct.TYPE_4__* %9, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @dev_name(i32 %59)
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 (i32, i8*, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %60, i64 %61, i64 %62)
  %64 = load i64, i64* @TIME_SAMPLES, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @waveOutGetPosition(i32 %66, %struct.TYPE_4__* %9, i32 8)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @dev_name(i32 %72)
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @wave_out_error(i64 %74)
  %76 = call i32 (i32, i8*, i32, ...) @ok(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TIME_SAMPLES, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %52
  %82 = load i32, i32* @winetest_debug, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @dev_name(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @wave_time_format(i64 %88)
  %90 = call i32 @trace(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %84, %81, %52
  %92 = load i32, i32* %8, align 4
  %93 = call i64 @time_to_bytes(%struct.TYPE_4__* %9, i32 %92)
  store i64 %93, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %7, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @dev_name(i32 %98)
  %100 = load i64, i64* %11, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @bytes_to_samples(i64 %100, i32 %101)
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @bytes_to_samples(i64 %104, i32 %105)
  %107 = load i64, i64* %7, align 8
  %108 = call i32 (i32, i8*, i32, ...) @ok(i32 %97, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %102, i64 %103, i32 %106, i64 %107)
  %109 = load i64, i64* @TIME_MS, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %109, i64* %110, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i64 @waveOutGetPosition(i32 %111, %struct.TYPE_4__* %9, i32 8)
  store i64 %112, i64* %10, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @dev_name(i32 %117)
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @wave_out_error(i64 %119)
  %121 = call i32 (i32, i8*, i32, ...) @ok(i32 %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TIME_MS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %91
  %127 = load i32, i32* @winetest_debug, align 4
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @dev_name(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @wave_time_format(i64 %133)
  %135 = call i32 @trace(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %129, %126, %91
  %137 = load i32, i32* %8, align 4
  %138 = call i64 @time_to_bytes(%struct.TYPE_4__* %9, i32 %137)
  store i64 %138, i64* %11, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %7, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @dev_name(i32 %143)
  %145 = load i64, i64* %11, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @bytes_to_ms(i64 %145, i32 %146)
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @bytes_to_ms(i64 %149, i32 %150)
  %152 = load i64, i64* %7, align 8
  %153 = call i32 (i32, i8*, i32, ...) @ok(i32 %142, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.6, i64 0, i64 0), i32 %144, i32 %147, i64 %148, i32 %151, i64 %152)
  %154 = load i64, i64* @TIME_SMPTE, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %154, i64* %155, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i64 @waveOutGetPosition(i32 %156, %struct.TYPE_4__* %9, i32 8)
  store i64 %157, i64* %10, align 8
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @dev_name(i32 %162)
  %164 = load i64, i64* %10, align 8
  %165 = call i32 @wave_out_error(i64 %164)
  %166 = call i32 (i32, i8*, i32, ...) @ok(i32 %161, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %163, i32 %165)
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @TIME_SMPTE, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %136
  %172 = load i32, i32* @winetest_debug, align 4
  %173 = icmp sgt i32 %172, 1
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @dev_name(i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @wave_time_format(i64 %178)
  %180 = call i32 @trace(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %176, i32 %179)
  br label %181

181:                                              ; preds = %174, %171, %136
  %182 = load i32, i32* %8, align 4
  %183 = call i64 @time_to_bytes(%struct.TYPE_4__* %9, i32 %182)
  store i64 %183, i64* %11, align 8
  %184 = load i64, i64* %11, align 8
  %185 = load i64, i64* %7, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @dev_name(i32 %188)
  %190 = call i32 (i32, i8*, i32, ...) @ok(i32 %187, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %189)
  %191 = load i64, i64* @TIME_MIDI, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %191, i64* %192, align 8
  %193 = load i32, i32* %6, align 4
  %194 = call i64 @waveOutGetPosition(i32 %193, %struct.TYPE_4__* %9, i32 8)
  store i64 %194, i64* %10, align 8
  %195 = load i64, i64* %10, align 8
  %196 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %197 = icmp eq i64 %195, %196
  %198 = zext i1 %197 to i32
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @dev_name(i32 %199)
  %201 = load i64, i64* %10, align 8
  %202 = call i32 @wave_out_error(i64 %201)
  %203 = call i32 (i32, i8*, i32, ...) @ok(i32 %198, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %200, i32 %202)
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @TIME_MIDI, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %181
  %209 = load i32, i32* @winetest_debug, align 4
  %210 = icmp sgt i32 %209, 1
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @dev_name(i32 %212)
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @wave_time_format(i64 %215)
  %217 = call i32 @trace(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 %213, i32 %216)
  br label %218

218:                                              ; preds = %211, %208, %181
  %219 = load i32, i32* %8, align 4
  %220 = call i64 @time_to_bytes(%struct.TYPE_4__* %9, i32 %219)
  store i64 %220, i64* %11, align 8
  %221 = load i64, i64* %11, align 8
  %222 = load i64, i64* %7, align 8
  %223 = icmp eq i64 %221, %222
  %224 = zext i1 %223 to i32
  %225 = load i32, i32* %5, align 4
  %226 = call i32 @dev_name(i32 %225)
  %227 = call i32 (i32, i8*, i32, ...) @ok(i32 %224, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %226)
  %228 = load i64, i64* @TIME_TICKS, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %228, i64* %229, align 8
  %230 = load i32, i32* %6, align 4
  %231 = call i64 @waveOutGetPosition(i32 %230, %struct.TYPE_4__* %9, i32 8)
  store i64 %231, i64* %10, align 8
  %232 = load i64, i64* %10, align 8
  %233 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %234 = icmp eq i64 %232, %233
  %235 = zext i1 %234 to i32
  %236 = load i32, i32* %5, align 4
  %237 = call i32 @dev_name(i32 %236)
  %238 = load i64, i64* %10, align 8
  %239 = call i32 @wave_out_error(i64 %238)
  %240 = call i32 (i32, i8*, i32, ...) @ok(i32 %235, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %237, i32 %239)
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @TIME_TICKS, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %255

245:                                              ; preds = %218
  %246 = load i32, i32* @winetest_debug, align 4
  %247 = icmp sgt i32 %246, 1
  br i1 %247, label %248, label %255

248:                                              ; preds = %245
  %249 = load i32, i32* %5, align 4
  %250 = call i32 @dev_name(i32 %249)
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = call i32 @wave_time_format(i64 %252)
  %254 = call i32 @trace(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i32 %250, i32 %253)
  br label %255

255:                                              ; preds = %248, %245, %218
  %256 = load i32, i32* %8, align 4
  %257 = call i64 @time_to_bytes(%struct.TYPE_4__* %9, i32 %256)
  store i64 %257, i64* %11, align 8
  %258 = load i64, i64* %11, align 8
  %259 = load i64, i64* %7, align 8
  %260 = icmp eq i64 %258, %259
  %261 = zext i1 %260 to i32
  %262 = load i32, i32* %5, align 4
  %263 = call i32 @dev_name(i32 %262)
  %264 = call i32 (i32, i8*, i32, ...) @ok(i32 %261, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %263)
  ret void
}

declare dso_local i64 @waveOutGetPosition(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @wave_out_error(i64) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @wave_time_format(i64) #1

declare dso_local i64 @time_to_bytes(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bytes_to_samples(i64, i32) #1

declare dso_local i32 @bytes_to_ms(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
