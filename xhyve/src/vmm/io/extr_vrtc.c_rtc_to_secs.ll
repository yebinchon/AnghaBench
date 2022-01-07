; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_rtc_to_secs.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_rtc_to_secs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrtc = type { %struct.vm*, %struct.rtcdev }
%struct.vm = type { i32 }
%struct.rtcdev = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid RTC sec %#x/%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid RTC min %#x/%d\00", align 1
@RTCSB_24HR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Invalid RTC 12-hour format %#x/%d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid RTC hour %#x/%d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Invalid RTC mday %#x/%d\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Invalid RTC month %#x/%d\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Invalid RTC year %#x/%d\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Invalid RTC century %#x/%d\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Invalid RTC clocktime.date %04d-%02d-%02d\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Invalid RTC clocktime.time %02d:%02d:%02d\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Invalid RTC date/time programming detected\00", align 1
@VRTC_BROKEN_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vrtc*)* @rtc_to_secs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtc_to_secs(%struct.vrtc* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vrtc*, align 8
  %4 = alloca %struct.clocktime, align 4
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.rtcdev*, align 8
  %7 = alloca %struct.vm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vrtc* %0, %struct.vrtc** %3, align 8
  %13 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %14 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %13, i32 0, i32 0
  %15 = load %struct.vm*, %struct.vm** %14, align 8
  store %struct.vm* %15, %struct.vm** %7, align 8
  %16 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %17 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %16, i32 0, i32 1
  store %struct.rtcdev* %17, %struct.rtcdev** %6, align 8
  %18 = call i32 @bzero(%struct.clocktime* %4, i32 28)
  %19 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %20 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %21 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 0
  %24 = call i32 @rtcget(%struct.rtcdev* %19, i32 %22, i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 59
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %27, %1
  %36 = load %struct.vm*, %struct.vm** %7, align 8
  %37 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %38 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @VM_CTR2(%struct.vm* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41)
  br label %272

43:                                               ; preds = %31
  %44 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %45 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %46 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 1
  %49 = call i32 @rtcget(%struct.rtcdev* %44, i32 %47, i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 59
  br i1 %59, label %60, label %68

60:                                               ; preds = %56, %52, %43
  %61 = load %struct.vm*, %struct.vm** %7, align 8
  %62 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %63 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @VM_CTR2(%struct.vm* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %66)
  br label %272

68:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  %69 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %70 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %73 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RTCSB_24HR, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %68
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 128
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, -129
  store i32 %84, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %85

85:                                               ; preds = %82, %78
  br label %86

86:                                               ; preds = %85, %68
  %87 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  %90 = call i32 @rtcget(%struct.rtcdev* %87, i32 %88, i32* %89)
  store i32 %90, i32* %9, align 4
  %91 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %92 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @RTCSB_24HR, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 1
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %103, 12
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 12
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %109, %105
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 12
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %114, %111
  br label %127

119:                                              ; preds = %101, %97
  %120 = load %struct.vm*, %struct.vm** %7, align 8
  %121 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %122 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @VM_CTR2(%struct.vm* %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %125)
  br label %272

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %86
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 23
  br i1 %138, label %139, label %147

139:                                              ; preds = %135, %131, %128
  %140 = load %struct.vm*, %struct.vm** %7, align 8
  %141 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %142 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @VM_CTR2(%struct.vm* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %143, i32 %145)
  br label %272

147:                                              ; preds = %135
  %148 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 3
  store i32 -1, i32* %148, align 4
  %149 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %150 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %151 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 4
  %154 = call i32 @rtcget(%struct.rtcdev* %149, i32 %152, i32* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %147
  %158 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %163, 31
  br i1 %164, label %165, label %173

165:                                              ; preds = %161, %157, %147
  %166 = load %struct.vm*, %struct.vm** %7, align 8
  %167 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %168 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @VM_CTR2(%struct.vm* %166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %169, i32 %171)
  br label %272

173:                                              ; preds = %161
  %174 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %175 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %176 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 5
  %179 = call i32 @rtcget(%struct.rtcdev* %174, i32 %177, i32* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %184, 1
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, 12
  br i1 %189, label %190, label %198

190:                                              ; preds = %186, %182, %173
  %191 = load %struct.vm*, %struct.vm** %7, align 8
  %192 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %193 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @VM_CTR2(%struct.vm* %191, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %194, i32 %196)
  br label %272

198:                                              ; preds = %186
  %199 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %200 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %201 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @rtcget(%struct.rtcdev* %199, i32 %202, i32* %12)
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %198
  %207 = load i32, i32* %12, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %12, align 4
  %211 = icmp sgt i32 %210, 99
  br i1 %211, label %212, label %219

212:                                              ; preds = %209, %206, %198
  %213 = load %struct.vm*, %struct.vm** %7, align 8
  %214 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %215 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %12, align 4
  %218 = call i32 @VM_CTR2(%struct.vm* %213, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %216, i32 %217)
  br label %272

219:                                              ; preds = %209
  %220 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %221 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %222 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @rtcget(%struct.rtcdev* %220, i32 %223, i32* %8)
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %8, align 4
  %226 = mul nsw i32 %225, 100
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %226, %227
  %229 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 6
  store i32 %228, i32* %229, align 4
  %230 = load i32, i32* %9, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %219
  %233 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = icmp slt i32 %234, 1900
  br i1 %235, label %236, label %244

236:                                              ; preds = %232, %219
  %237 = load %struct.vm*, %struct.vm** %7, align 8
  %238 = load %struct.rtcdev*, %struct.rtcdev** %6, align 8
  %239 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @VM_CTR2(%struct.vm* %237, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %240, i32 %242)
  br label %272

244:                                              ; preds = %232
  %245 = call i32 @clock_ct_to_ts(%struct.clocktime* %4, %struct.timespec* %5)
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp slt i64 %250, 0
  br i1 %251, label %252, label %269

252:                                              ; preds = %248, %244
  %253 = load %struct.vm*, %struct.vm** %7, align 8
  %254 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 6
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @VM_CTR3(%struct.vm* %253, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %255, i32 %257, i32 %259)
  %261 = load %struct.vm*, %struct.vm** %7, align 8
  %262 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @VM_CTR3(%struct.vm* %261, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %263, i32 %265, i32 %267)
  br label %272

269:                                              ; preds = %248
  %270 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %2, align 8
  br label %278

272:                                              ; preds = %252, %236, %212, %190, %165, %139, %119, %60, %35
  %273 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %274 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %273, i32 0, i32 0
  %275 = load %struct.vm*, %struct.vm** %274, align 8
  %276 = call i32 @VM_CTR0(%struct.vm* %275, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %277 = load i64, i64* @VRTC_BROKEN_TIME, align 8
  store i64 %277, i64* %2, align 8
  br label %278

278:                                              ; preds = %272, %269
  %279 = load i64, i64* %2, align 8
  ret i64 %279
}

declare dso_local i32 @bzero(%struct.clocktime*, i32) #1

declare dso_local i32 @rtcget(%struct.rtcdev*, i32, i32*) #1

declare dso_local i32 @VM_CTR2(%struct.vm*, i8*, i32, i32) #1

declare dso_local i32 @clock_ct_to_ts(%struct.clocktime*, %struct.timespec*) #1

declare dso_local i32 @VM_CTR3(%struct.vm*, i8*, i32, i32, i32) #1

declare dso_local i32 @VM_CTR0(%struct.vm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
