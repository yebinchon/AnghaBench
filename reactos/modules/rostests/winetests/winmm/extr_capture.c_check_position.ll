; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_capture.c_check_position.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_capture.c_check_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@TIME_BYTES = common dso_local global i64 0, align 8
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"waveInGetPosition(%s): rc=%s\0A\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"waveInGetPosition(%s): TIME_BYTES not supported, returned %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"waveInGetPosition(%s): returned %d bytes, should be %d\0A\00", align 1
@TIME_SAMPLES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [64 x i8] c"waveInGetPosition(%s): TIME_SAMPLES not supported, returned %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"waveInGetPosition(%s): returned %d samples, should be %d\0A\00", align 1
@TIME_MS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [59 x i8] c"waveInGetPosition(%s): TIME_MS not supported, returned %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"waveInGetPosition(%s): returned %d ms, should be %d\0A\00", align 1
@TIME_SMPTE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [62 x i8] c"waveInGetPosition(%s): TIME_SMPTE not supported, returned %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"waveInGetPosition(%s): SMPTE test failed\0A\00", align 1
@TIME_MIDI = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [61 x i8] c"waveInGetPosition(%s): TIME_MIDI not supported, returned %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"waveInGetPosition(%s): MIDI test failed\0A\00", align 1
@TIME_TICKS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [62 x i8] c"waveInGetPosition(%s): TIME_TICKS not supported, returned %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"waveInGetPosition(%s): TICKS test failed\0A\00", align 1
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
  %15 = call i64 @waveInGetPosition(i32 %14, %struct.TYPE_4__* %9, i32 8)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_name(i32 %20)
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @wave_in_error(i64 %22)
  %24 = call i32 (i32, i8*, i32, ...) @ok(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TIME_BYTES, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %4
  %30 = load i32, i32* @winetest_debug, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_name(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @wave_time_format(i64 %36)
  %38 = call i32 @trace(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %32, %29, %4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @time_to_bytes(%struct.TYPE_4__* %9, i32 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_name(i32 %46)
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 (i32, i8*, i32, ...) @ok(i32 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %47, i64 %48, i64 %49)
  %51 = load i64, i64* @TIME_SAMPLES, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @waveInGetPosition(i32 %53, %struct.TYPE_4__* %9, i32 8)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @dev_name(i32 %59)
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @wave_in_error(i64 %61)
  %63 = call i32 (i32, i8*, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TIME_SAMPLES, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %39
  %69 = load i32, i32* @winetest_debug, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @dev_name(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @wave_time_format(i64 %75)
  %77 = call i32 @trace(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %71, %68, %39
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @time_to_bytes(%struct.TYPE_4__* %9, i32 %79)
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @dev_name(i32 %85)
  %87 = load i64, i64* %11, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @bytes_to_samples(i64 %87, i32 %88)
  %90 = load i64, i64* %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @bytes_to_samples(i64 %90, i32 %91)
  %93 = call i32 (i32, i8*, i32, ...) @ok(i32 %84, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %89, i32 %92)
  %94 = load i64, i64* @TIME_MS, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %94, i64* %95, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @waveInGetPosition(i32 %96, %struct.TYPE_4__* %9, i32 8)
  store i64 %97, i64* %10, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @dev_name(i32 %102)
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @wave_in_error(i64 %104)
  %106 = call i32 (i32, i8*, i32, ...) @ok(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TIME_MS, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %78
  %112 = load i32, i32* @winetest_debug, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @dev_name(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @wave_time_format(i64 %118)
  %120 = call i32 @trace(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %114, %111, %78
  %122 = load i32, i32* %8, align 4
  %123 = call i64 @time_to_bytes(%struct.TYPE_4__* %9, i32 %122)
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* %7, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @dev_name(i32 %128)
  %130 = load i64, i64* %11, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @bytes_to_ms(i64 %130, i32 %131)
  %133 = load i64, i64* %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @bytes_to_ms(i64 %133, i32 %134)
  %136 = call i32 (i32, i8*, i32, ...) @ok(i32 %127, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %129, i32 %132, i32 %135)
  %137 = load i64, i64* @TIME_SMPTE, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %137, i64* %138, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i64 @waveInGetPosition(i32 %139, %struct.TYPE_4__* %9, i32 8)
  store i64 %140, i64* %10, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @dev_name(i32 %145)
  %147 = load i64, i64* %10, align 8
  %148 = call i32 @wave_in_error(i64 %147)
  %149 = call i32 (i32, i8*, i32, ...) @ok(i32 %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @TIME_SMPTE, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %121
  %155 = load i32, i32* @winetest_debug, align 4
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @dev_name(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @wave_time_format(i64 %161)
  %163 = call i32 @trace(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %159, i32 %162)
  br label %164

164:                                              ; preds = %157, %154, %121
  %165 = load i32, i32* %8, align 4
  %166 = call i64 @time_to_bytes(%struct.TYPE_4__* %9, i32 %165)
  store i64 %166, i64* %11, align 8
  %167 = load i64, i64* %11, align 8
  %168 = load i64, i64* %7, align 8
  %169 = icmp eq i64 %167, %168
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @dev_name(i32 %171)
  %173 = call i32 (i32, i8*, i32, ...) @ok(i32 %170, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %172)
  %174 = load i64, i64* @TIME_MIDI, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %174, i64* %175, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i64 @waveInGetPosition(i32 %176, %struct.TYPE_4__* %9, i32 8)
  store i64 %177, i64* %10, align 8
  %178 = load i64, i64* %10, align 8
  %179 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @dev_name(i32 %182)
  %184 = load i64, i64* %10, align 8
  %185 = call i32 @wave_in_error(i64 %184)
  %186 = call i32 (i32, i8*, i32, ...) @ok(i32 %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %183, i32 %185)
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @TIME_MIDI, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %164
  %192 = load i32, i32* @winetest_debug, align 4
  %193 = icmp sgt i32 %192, 1
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @dev_name(i32 %195)
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @wave_time_format(i64 %198)
  %200 = call i32 @trace(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32 %196, i32 %199)
  br label %201

201:                                              ; preds = %194, %191, %164
  %202 = load i32, i32* %8, align 4
  %203 = call i64 @time_to_bytes(%struct.TYPE_4__* %9, i32 %202)
  store i64 %203, i64* %11, align 8
  %204 = load i64, i64* %11, align 8
  %205 = load i64, i64* %7, align 8
  %206 = icmp eq i64 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %5, align 4
  %209 = call i32 @dev_name(i32 %208)
  %210 = call i32 (i32, i8*, i32, ...) @ok(i32 %207, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %209)
  %211 = load i64, i64* @TIME_TICKS, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 %211, i64* %212, align 8
  %213 = load i32, i32* %6, align 4
  %214 = call i64 @waveInGetPosition(i32 %213, %struct.TYPE_4__* %9, i32 8)
  store i64 %214, i64* %10, align 8
  %215 = load i64, i64* %10, align 8
  %216 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %217 = icmp eq i64 %215, %216
  %218 = zext i1 %217 to i32
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @dev_name(i32 %219)
  %221 = load i64, i64* %10, align 8
  %222 = call i32 @wave_in_error(i64 %221)
  %223 = call i32 (i32, i8*, i32, ...) @ok(i32 %218, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %220, i32 %222)
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @TIME_TICKS, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %238

228:                                              ; preds = %201
  %229 = load i32, i32* @winetest_debug, align 4
  %230 = icmp sgt i32 %229, 1
  br i1 %230, label %231, label %238

231:                                              ; preds = %228
  %232 = load i32, i32* %5, align 4
  %233 = call i32 @dev_name(i32 %232)
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @wave_time_format(i64 %235)
  %237 = call i32 @trace(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i32 %233, i32 %236)
  br label %238

238:                                              ; preds = %231, %228, %201
  %239 = load i32, i32* %8, align 4
  %240 = call i64 @time_to_bytes(%struct.TYPE_4__* %9, i32 %239)
  store i64 %240, i64* %11, align 8
  %241 = load i64, i64* %11, align 8
  %242 = load i64, i64* %7, align 8
  %243 = icmp eq i64 %241, %242
  %244 = zext i1 %243 to i32
  %245 = load i32, i32* %5, align 4
  %246 = call i32 @dev_name(i32 %245)
  %247 = call i32 (i32, i8*, i32, ...) @ok(i32 %244, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %246)
  ret void
}

declare dso_local i64 @waveInGetPosition(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @wave_in_error(i64) #1

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
