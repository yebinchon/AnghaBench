; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_mktime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_mktime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i64, i64 }

@SECSPERDAY = common dso_local global i32 0, align 4
@TIME_ZONE_ID_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"GetTimeZoneInformation failed\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"bias %d std %d dst %d zone %s\0A\00", align 1
@SECSPERMIN = common dso_local global i32 0, align 4
@SECSPERHOUR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"mktime returned %u, expected %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Unnormalized mktime returned %u, expected %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"mktime returned %2d-%02d-%02d %02d:%02d expected %2d-%02d-%02d %02d:%02d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"(bad time) mktime returned %d, expected -1\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"TZ=%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"TZ=GMT\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"mktime returned 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mktime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mktime() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.tm, align 8
  %4 = alloca %struct.tm, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = call i64 @GetTimeZoneInformation(%struct.TYPE_3__* %1)
  store i64 %12, i64* %2, align 8
  %13 = call i32 @get_test_year(i32* %10)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @SECSPERDAY, align 4
  %15 = load i32, i32* %10, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @TIME_ZONE_ID_INVALID, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @CP_ACP, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %26 = call i32 @WideCharToMultiByte(i32 %22, i32 0, i32 %24, i32 -1, i8* %25, i32 64, i32* null, i32* null)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %34 = call i32 @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %30, i32 %32, i8* %33)
  %35 = call %struct.tm* @localtime(i32* %10)
  %36 = bitcast %struct.tm* %3 to i8*
  %37 = bitcast %struct.tm* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 40, i1 false)
  %38 = load i32, i32* @SECSPERDAY, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SECSPERMIN, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sub nsw i32 %38, %42
  store i32 %43, i32* %11, align 4
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  br label %53

50:                                               ; preds = %0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ]
  %55 = load i32, i32* @SECSPERMIN, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @SECSPERDAY, align 4
  %61 = sdiv i32 %59, %60
  %62 = add nsw i32 1, %61
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @SECSPERDAY, align 4
  %66 = srem i32 %64, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @SECSPERHOUR, align 4
  %69 = sdiv i32 %67, %68
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @SECSPERHOUR, align 4
  %73 = srem i32 %71, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @SECSPERMIN, align 4
  %76 = sdiv i32 %74, %75
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @SECSPERMIN, align 4
  %80 = srem i32 %78, %79
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  store i32 %83, i32* %84, align 8
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  store i64 0, i64* %85, align 8
  %86 = bitcast %struct.tm* %4 to i8*
  %87 = bitcast %struct.tm* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 40, i1 false)
  %88 = call i32 @mktime(%struct.tm* %3)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %94, i64 %96)
  %98 = bitcast %struct.tm* %3 to i8*
  %99 = bitcast %struct.tm* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 40, i1 false)
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 60
  store i32 %102, i32* %100, align 4
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = call i32 @mktime(%struct.tm* %3)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %112, i64 %114)
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %53
  %122 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %127, label %145

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %141, %143
  br label %145

145:                                              ; preds = %139, %133, %127, %121, %53
  %146 = phi i1 [ false, %133 ], [ false, %127 ], [ false, %121 ], [ false, %53 ], [ %144, %139 ]
  %147 = zext i1 %146 to i32
  %148 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %149, i64 %151, i32 %153, i32 %155, i32 %157, i32 %159, i64 %161, i32 %163, i32 %165, i32 %167)
  %169 = bitcast %struct.tm* %3 to i8*
  %170 = bitcast %struct.tm* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 %170, i64 40, i1 false)
  %171 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sub nsw i32 %172, 60
  store i32 %173, i32* %171, align 8
  %174 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  %177 = call i32 @mktime(%struct.tm* %3)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %183, i64 %185)
  %187 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %188, %190
  br i1 %191, label %192, label %216

192:                                              ; preds = %145
  %193 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %194, %196
  br i1 %197, label %198, label %216

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %206, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %212, %214
  br label %216

216:                                              ; preds = %210, %204, %198, %192, %145
  %217 = phi i1 [ false, %204 ], [ false, %198 ], [ false, %192 ], [ false, %145 ], [ %215, %210 ]
  %218 = zext i1 %217 to i32
  %219 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (i32, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %220, i64 %222, i32 %224, i32 %226, i32 %228, i32 %230, i64 %232, i32 %234, i32 %236, i32 %238)
  %240 = bitcast %struct.tm* %3 to i8*
  %241 = bitcast %struct.tm* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %240, i8* align 8 %241, i64 40, i1 false)
  %242 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %243 = load i64, i64* %242, align 8
  %244 = sub nsw i64 %243, 12
  store i64 %244, i64* %242, align 8
  %245 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 8
  %248 = call i32 @mktime(%struct.tm* %3)
  store i32 %248, i32* %6, align 4
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp eq i32 %249, %250
  %252 = zext i1 %251 to i32
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %254, i64 %256)
  %258 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = icmp eq i32 %259, %261
  br i1 %262, label %263, label %287

263:                                              ; preds = %216
  %264 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %267 = load i64, i64* %266, align 8
  %268 = icmp eq i64 %265, %267
  br i1 %268, label %269, label %287

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp eq i32 %271, %273
  br i1 %274, label %275, label %287

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %277, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = icmp eq i32 %283, %285
  br label %287

287:                                              ; preds = %281, %275, %269, %263, %216
  %288 = phi i1 [ false, %275 ], [ false, %269 ], [ false, %263 ], [ false, %216 ], [ %286, %281 ]
  %289 = zext i1 %288 to i32
  %290 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %303 = load i64, i64* %302, align 8
  %304 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (i32, i8*, ...) @ok(i32 %289, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %291, i64 %293, i32 %295, i32 %297, i32 %299, i32 %301, i64 %303, i32 %305, i32 %307, i32 %309)
  %311 = bitcast %struct.tm* %3 to i8*
  %312 = bitcast %struct.tm* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %311, i8* align 8 %312, i64 40, i1 false)
  %313 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %314 = load i64, i64* %313, align 8
  %315 = add nsw i64 %314, 12
  store i64 %315, i64* %313, align 8
  %316 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = sub nsw i32 %317, 1
  store i32 %318, i32* %316, align 8
  %319 = call i32 @mktime(%struct.tm* %3)
  store i32 %319, i32* %6, align 4
  %320 = load i32, i32* %6, align 4
  %321 = load i32, i32* %10, align 4
  %322 = icmp eq i32 %320, %321
  %323 = zext i1 %322 to i32
  %324 = load i32, i32* %6, align 4
  %325 = sext i32 %324 to i64
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = call i32 (i32, i8*, ...) @ok(i32 %323, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %325, i64 %327)
  %329 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %332 = load i32, i32* %331, align 8
  %333 = icmp eq i32 %330, %332
  br i1 %333, label %334, label %358

334:                                              ; preds = %287
  %335 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %338 = load i64, i64* %337, align 8
  %339 = icmp eq i64 %336, %338
  br i1 %339, label %340, label %358

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp eq i32 %342, %344
  br i1 %345, label %346, label %358

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = icmp eq i32 %348, %350
  br i1 %351, label %352, label %358

352:                                              ; preds = %346
  %353 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = icmp eq i32 %354, %356
  br label %358

358:                                              ; preds = %352, %346, %340, %334, %287
  %359 = phi i1 [ false, %346 ], [ false, %340 ], [ false, %334 ], [ false, %287 ], [ %357, %352 ]
  %360 = zext i1 %359 to i32
  %361 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %364 = load i64, i64* %363, align 8
  %365 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  %371 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %372 = load i32, i32* %371, align 8
  %373 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = call i32 (i32, i8*, ...) @ok(i32 %360, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %362, i64 %364, i32 %366, i32 %368, i32 %370, i32 %372, i64 %374, i32 %376, i32 %378, i32 %380)
  %382 = bitcast %struct.tm* %3 to i8*
  %383 = bitcast %struct.tm* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %382, i8* align 8 %383, i64 40, i1 false)
  %384 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  store i32 69, i32* %384, align 8
  %385 = call i32 @mktime(%struct.tm* %3)
  store i32 %385, i32* %6, align 4
  %386 = load i32, i32* %6, align 4
  %387 = icmp eq i32 %386, -1
  %388 = zext i1 %387 to i32
  %389 = load i32, i32* %6, align 4
  %390 = call i32 (i32, i8*, ...) @ok(i32 %388, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %389)
  %391 = bitcast %struct.tm* %3 to i8*
  %392 = bitcast %struct.tm* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %391, i8* align 8 %392, i64 40, i1 false)
  %393 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %394 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %395 = icmp ne i8* %394, null
  br i1 %395, label %396, label %398

396:                                              ; preds = %358
  %397 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %399

398:                                              ; preds = %358
  br label %399

399:                                              ; preds = %398, %396
  %400 = phi i8* [ %397, %396 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %398 ]
  %401 = call i32 @_snprintf(i8* %393, i32 255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %400)
  %402 = call i32 @putenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %403 = call i32 @mktime(%struct.tm* %3)
  store i32 %403, i32* %5, align 4
  %404 = load i32, i32* %5, align 4
  %405 = load i32, i32* %10, align 4
  %406 = icmp eq i32 %404, %405
  %407 = zext i1 %406 to i32
  %408 = load i32, i32* %5, align 4
  %409 = sext i32 %408 to i64
  %410 = call i32 (i32, i8*, ...) @ok(i32 %407, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i64 %409)
  %411 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %412 = call i32 @putenv(i8* %411)
  ret void
}

declare dso_local i64 @GetTimeZoneInformation(%struct.TYPE_3__*) #1

declare dso_local i32 @get_test_year(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @trace(i8*, i32, i32, i32, i8*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @putenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
