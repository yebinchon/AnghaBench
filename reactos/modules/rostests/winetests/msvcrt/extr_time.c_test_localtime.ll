; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_localtime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_localtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i64, i64, i64, i64, i32 }

@SECSPERDAY = common dso_local global i32 0, align 4
@SECSPERMIN = common dso_local global i32 0, align 4
@TIME_ZONE_ID_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"GetTimeZoneInformation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"Wrong date:Year %d mon %d yday %d mday %d wday %d hour %d min %d sec %d dst %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"TZ=%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"TZ=GMT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_localtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_localtime() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i64 @GetTimeZoneInformation(%struct.TYPE_3__* %1)
  store i64 %9, i64* %2, align 8
  %10 = call i32 @get_test_year(i64* %4)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = srem i32 %11, 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* %7, align 4
  %16 = srem i32 %15, 100
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 300
  %21 = srem i32 %20, 400
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %14
  %25 = phi i1 [ true, %14 ], [ %23, %18 ]
  br label %26

26:                                               ; preds = %24, %0
  %27 = phi i1 [ false, %0 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @SECSPERDAY, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SECSPERMIN, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %32, %37
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* @TIME_ZONE_ID_INVALID, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %44 = call %struct.tm* @localtime(i64* %3)
  store %struct.tm* %44, %struct.tm** %6, align 8
  %45 = load %struct.tm*, %struct.tm** %6, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %26
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  br label %55

52:                                               ; preds = %26
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i32 [ %51, %49 ], [ %54, %52 ]
  %57 = load i32, i32* @SECSPERMIN, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %3, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %3, align 8
  %62 = call %struct.tm* @localtime(i64* %3)
  store %struct.tm* %62, %struct.tm** %6, align 8
  %63 = load %struct.tm*, %struct.tm** %6, align 8
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %98

68:                                               ; preds = %55
  %69 = load %struct.tm*, %struct.tm** %6, align 8
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = load %struct.tm*, %struct.tm** %6, align 8
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %98

78:                                               ; preds = %73
  %79 = load %struct.tm*, %struct.tm** %6, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.tm*, %struct.tm** %6, align 8
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load %struct.tm*, %struct.tm** %6, align 8
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.tm*, %struct.tm** %6, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br label %98

98:                                               ; preds = %93, %88, %83, %78, %73, %68, %55
  %99 = phi i1 [ false, %88 ], [ false, %83 ], [ false, %78 ], [ false, %73 ], [ false, %68 ], [ false, %55 ], [ %97, %93 ]
  %100 = zext i1 %99 to i32
  %101 = load %struct.tm*, %struct.tm** %6, align 8
  %102 = getelementptr inbounds %struct.tm, %struct.tm* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.tm*, %struct.tm** %6, align 8
  %105 = getelementptr inbounds %struct.tm, %struct.tm* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.tm*, %struct.tm** %6, align 8
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.tm*, %struct.tm** %6, align 8
  %111 = getelementptr inbounds %struct.tm, %struct.tm* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.tm*, %struct.tm** %6, align 8
  %114 = getelementptr inbounds %struct.tm, %struct.tm* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.tm*, %struct.tm** %6, align 8
  %117 = getelementptr inbounds %struct.tm, %struct.tm* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.tm*, %struct.tm** %6, align 8
  %120 = getelementptr inbounds %struct.tm, %struct.tm* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.tm*, %struct.tm** %6, align 8
  %123 = getelementptr inbounds %struct.tm, %struct.tm* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.tm*, %struct.tm** %6, align 8
  %126 = getelementptr inbounds %struct.tm, %struct.tm* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106, i32 %109, i32 %112, i32 %115, i64 %118, i64 %121, i64 %124, i64 %127)
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %130 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %98
  %133 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %135

134:                                              ; preds = %98
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i8* [ %133, %132 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %134 ]
  %137 = call i32 @_snprintf(i8* %129, i32 255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %136)
  %138 = call i32 @putenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %139 = call %struct.tm* @localtime(i64* %3)
  store %struct.tm* %139, %struct.tm** %6, align 8
  %140 = load %struct.tm*, %struct.tm** %6, align 8
  %141 = getelementptr inbounds %struct.tm, %struct.tm* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %175

145:                                              ; preds = %135
  %146 = load %struct.tm*, %struct.tm** %6, align 8
  %147 = getelementptr inbounds %struct.tm, %struct.tm* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %175

150:                                              ; preds = %145
  %151 = load %struct.tm*, %struct.tm** %6, align 8
  %152 = getelementptr inbounds %struct.tm, %struct.tm* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %175

155:                                              ; preds = %150
  %156 = load %struct.tm*, %struct.tm** %6, align 8
  %157 = getelementptr inbounds %struct.tm, %struct.tm* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %175

160:                                              ; preds = %155
  %161 = load %struct.tm*, %struct.tm** %6, align 8
  %162 = getelementptr inbounds %struct.tm, %struct.tm* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %160
  %166 = load %struct.tm*, %struct.tm** %6, align 8
  %167 = getelementptr inbounds %struct.tm, %struct.tm* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.tm*, %struct.tm** %6, align 8
  %172 = getelementptr inbounds %struct.tm, %struct.tm* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br label %175

175:                                              ; preds = %170, %165, %160, %155, %150, %145, %135
  %176 = phi i1 [ false, %165 ], [ false, %160 ], [ false, %155 ], [ false, %150 ], [ false, %145 ], [ false, %135 ], [ %174, %170 ]
  %177 = zext i1 %176 to i32
  %178 = load %struct.tm*, %struct.tm** %6, align 8
  %179 = getelementptr inbounds %struct.tm, %struct.tm* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.tm*, %struct.tm** %6, align 8
  %182 = getelementptr inbounds %struct.tm, %struct.tm* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.tm*, %struct.tm** %6, align 8
  %185 = getelementptr inbounds %struct.tm, %struct.tm* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.tm*, %struct.tm** %6, align 8
  %188 = getelementptr inbounds %struct.tm, %struct.tm* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.tm*, %struct.tm** %6, align 8
  %191 = getelementptr inbounds %struct.tm, %struct.tm* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.tm*, %struct.tm** %6, align 8
  %194 = getelementptr inbounds %struct.tm, %struct.tm* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.tm*, %struct.tm** %6, align 8
  %197 = getelementptr inbounds %struct.tm, %struct.tm* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.tm*, %struct.tm** %6, align 8
  %200 = getelementptr inbounds %struct.tm, %struct.tm* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.tm*, %struct.tm** %6, align 8
  %203 = getelementptr inbounds %struct.tm, %struct.tm* %202, i32 0, i32 7
  %204 = load i64, i64* %203, align 8
  %205 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %180, i32 %183, i32 %186, i32 %189, i32 %192, i64 %195, i64 %198, i64 %201, i64 %204)
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %207 = call i32 @putenv(i8* %206)
  %208 = load i64, i64* %4, align 8
  %209 = load i32, i32* @SECSPERDAY, align 4
  %210 = mul nsw i32 202, %209
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %208, %211
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @SECSPERMIN, align 4
  %216 = mul nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %212, %217
  store i64 %218, i64* %3, align 8
  %219 = call %struct.tm* @localtime(i64* %3)
  store %struct.tm* %219, %struct.tm** %6, align 8
  %220 = load %struct.tm*, %struct.tm** %6, align 8
  %221 = getelementptr inbounds %struct.tm, %struct.tm* %220, i32 0, i32 7
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %175
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  br label %230

227:                                              ; preds = %175
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  br label %230

230:                                              ; preds = %227, %224
  %231 = phi i32 [ %226, %224 ], [ %229, %227 ]
  %232 = load i32, i32* @SECSPERMIN, align 4
  %233 = mul nsw i32 %231, %232
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* %3, align 8
  %236 = add nsw i64 %235, %234
  store i64 %236, i64* %3, align 8
  %237 = call %struct.tm* @localtime(i64* %3)
  store %struct.tm* %237, %struct.tm** %6, align 8
  %238 = load %struct.tm*, %struct.tm** %6, align 8
  %239 = getelementptr inbounds %struct.tm, %struct.tm* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %275

243:                                              ; preds = %230
  %244 = load %struct.tm*, %struct.tm** %6, align 8
  %245 = getelementptr inbounds %struct.tm, %struct.tm* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %246, 6
  br i1 %247, label %248, label %275

248:                                              ; preds = %243
  %249 = load %struct.tm*, %struct.tm** %6, align 8
  %250 = getelementptr inbounds %struct.tm, %struct.tm* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp eq i32 %251, 202
  br i1 %252, label %253, label %275

253:                                              ; preds = %248
  %254 = load %struct.tm*, %struct.tm** %6, align 8
  %255 = getelementptr inbounds %struct.tm, %struct.tm* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %8, align 4
  %258 = sub nsw i32 22, %257
  %259 = icmp eq i32 %256, %258
  br i1 %259, label %260, label %275

260:                                              ; preds = %253
  %261 = load %struct.tm*, %struct.tm** %6, align 8
  %262 = getelementptr inbounds %struct.tm, %struct.tm* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %260
  %266 = load %struct.tm*, %struct.tm** %6, align 8
  %267 = getelementptr inbounds %struct.tm, %struct.tm* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load %struct.tm*, %struct.tm** %6, align 8
  %272 = getelementptr inbounds %struct.tm, %struct.tm* %271, i32 0, i32 6
  %273 = load i64, i64* %272, align 8
  %274 = icmp eq i64 %273, 0
  br label %275

275:                                              ; preds = %270, %265, %260, %253, %248, %243, %230
  %276 = phi i1 [ false, %265 ], [ false, %260 ], [ false, %253 ], [ false, %248 ], [ false, %243 ], [ false, %230 ], [ %274, %270 ]
  %277 = zext i1 %276 to i32
  %278 = load %struct.tm*, %struct.tm** %6, align 8
  %279 = getelementptr inbounds %struct.tm, %struct.tm* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.tm*, %struct.tm** %6, align 8
  %282 = getelementptr inbounds %struct.tm, %struct.tm* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.tm*, %struct.tm** %6, align 8
  %285 = getelementptr inbounds %struct.tm, %struct.tm* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.tm*, %struct.tm** %6, align 8
  %288 = getelementptr inbounds %struct.tm, %struct.tm* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.tm*, %struct.tm** %6, align 8
  %291 = getelementptr inbounds %struct.tm, %struct.tm* %290, i32 0, i32 8
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.tm*, %struct.tm** %6, align 8
  %294 = getelementptr inbounds %struct.tm, %struct.tm* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.tm*, %struct.tm** %6, align 8
  %297 = getelementptr inbounds %struct.tm, %struct.tm* %296, i32 0, i32 5
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.tm*, %struct.tm** %6, align 8
  %300 = getelementptr inbounds %struct.tm, %struct.tm* %299, i32 0, i32 6
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.tm*, %struct.tm** %6, align 8
  %303 = getelementptr inbounds %struct.tm, %struct.tm* %302, i32 0, i32 7
  %304 = load i64, i64* %303, align 8
  %305 = call i32 (i32, i8*, ...) @ok(i32 %277, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %280, i32 %283, i32 %286, i32 %289, i32 %292, i64 %295, i64 %298, i64 %301, i64 %304)
  ret void
}

declare dso_local i64 @GetTimeZoneInformation(%struct.TYPE_3__*) #1

declare dso_local i32 @get_test_year(i64*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @putenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
