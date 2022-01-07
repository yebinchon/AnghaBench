; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_gmtime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test_gmtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i64, i64, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"gmt_tm != NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"_gmtime32() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"Wrong date:Year %4d mon %2d yday %3d mday %2d wday %1d hour%2d min %2d sec %2d dst %2d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"gmt = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"gmt_tm->tm_wday = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"gmt_tm->tm_yday = %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"err = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"tm_year = %d, tm_sec = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gmtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gmtime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca %struct.tm, align 8
  %5 = alloca i32, align 4
  %6 = call %struct.tm* @p_gmtime32(i32* null)
  store %struct.tm* %6, %struct.tm** %3, align 8
  %7 = load %struct.tm*, %struct.tm** %3, align 8
  %8 = icmp eq %struct.tm* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  %11 = call %struct.tm* @p_gmtime32(i32* %2)
  store %struct.tm* %11, %struct.tm** %3, align 8
  %12 = load %struct.tm*, %struct.tm** %3, align 8
  %13 = icmp eq %struct.tm* %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %0
  %15 = load %struct.tm*, %struct.tm** %3, align 8
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 70
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.tm*, %struct.tm** %3, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @broken(i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %0
  %30 = phi i1 [ true, %0 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %33 = call %struct.tm* @p_gmtime32(i32* %2)
  store %struct.tm* %33, %struct.tm** %3, align 8
  %34 = load %struct.tm*, %struct.tm** %3, align 8
  %35 = icmp ne %struct.tm* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %306

38:                                               ; preds = %29
  %39 = load %struct.tm*, %struct.tm** %3, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 70
  br i1 %42, label %43, label %83

43:                                               ; preds = %38
  %44 = load %struct.tm*, %struct.tm** %3, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %43
  %49 = load %struct.tm*, %struct.tm** %3, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = load %struct.tm*, %struct.tm** %3, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = load %struct.tm*, %struct.tm** %3, align 8
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load %struct.tm*, %struct.tm** %3, align 8
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.tm*, %struct.tm** %3, align 8
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.tm*, %struct.tm** %3, align 8
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.tm*, %struct.tm** %3, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br label %83

83:                                               ; preds = %78, %73, %68, %63, %58, %53, %48, %43, %38
  %84 = phi i1 [ false, %73 ], [ false, %68 ], [ false, %63 ], [ false, %58 ], [ false, %53 ], [ false, %48 ], [ false, %43 ], [ false, %38 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  %86 = load %struct.tm*, %struct.tm** %3, align 8
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.tm*, %struct.tm** %3, align 8
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.tm*, %struct.tm** %3, align 8
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.tm*, %struct.tm** %3, align 8
  %96 = getelementptr inbounds %struct.tm, %struct.tm* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.tm*, %struct.tm** %3, align 8
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.tm*, %struct.tm** %3, align 8
  %102 = getelementptr inbounds %struct.tm, %struct.tm* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.tm*, %struct.tm** %3, align 8
  %105 = getelementptr inbounds %struct.tm, %struct.tm* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.tm*, %struct.tm** %3, align 8
  %108 = getelementptr inbounds %struct.tm, %struct.tm* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.tm*, %struct.tm** %3, align 8
  %111 = getelementptr inbounds %struct.tm, %struct.tm* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i32 %88, i64 %91, i32 %94, i32 %97, i32 %100, i64 %103, i64 %106, i64 %109, i32 %112)
  %114 = load %struct.tm*, %struct.tm** %3, align 8
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %114, i32 0, i32 3
  store i32 0, i32* %115, align 8
  %116 = load %struct.tm*, %struct.tm** %3, align 8
  %117 = getelementptr inbounds %struct.tm, %struct.tm* %116, i32 0, i32 5
  store i32 0, i32* %117, align 8
  %118 = load %struct.tm*, %struct.tm** %3, align 8
  %119 = call i32 @p_mkgmtime32(%struct.tm* %118)
  store i32 %119, i32* %2, align 4
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* %1, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %2, align 4
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = load %struct.tm*, %struct.tm** %3, align 8
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 4
  %130 = zext i1 %129 to i32
  %131 = load %struct.tm*, %struct.tm** %3, align 8
  %132 = getelementptr inbounds %struct.tm, %struct.tm* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  %135 = load %struct.tm*, %struct.tm** %3, align 8
  %136 = getelementptr inbounds %struct.tm, %struct.tm* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = load %struct.tm*, %struct.tm** %3, align 8
  %141 = getelementptr inbounds %struct.tm, %struct.tm* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  %144 = load %struct.tm*, %struct.tm** %3, align 8
  %145 = getelementptr inbounds %struct.tm, %struct.tm* %144, i32 0, i32 3
  store i32 0, i32* %145, align 8
  %146 = load %struct.tm*, %struct.tm** %3, align 8
  %147 = getelementptr inbounds %struct.tm, %struct.tm* %146, i32 0, i32 5
  store i32 0, i32* %147, align 8
  %148 = load %struct.tm*, %struct.tm** %3, align 8
  %149 = getelementptr inbounds %struct.tm, %struct.tm* %148, i32 0, i32 8
  store i32 -1, i32* %149, align 8
  %150 = load %struct.tm*, %struct.tm** %3, align 8
  %151 = call i32 @p_mkgmtime32(%struct.tm* %150)
  store i32 %151, i32* %2, align 4
  %152 = load i32, i32* %2, align 4
  %153 = load i32, i32* %1, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %2, align 4
  %157 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load %struct.tm*, %struct.tm** %3, align 8
  %159 = getelementptr inbounds %struct.tm, %struct.tm* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 4
  %162 = zext i1 %161 to i32
  %163 = load %struct.tm*, %struct.tm** %3, align 8
  %164 = getelementptr inbounds %struct.tm, %struct.tm* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %165)
  %167 = load %struct.tm*, %struct.tm** %3, align 8
  %168 = getelementptr inbounds %struct.tm, %struct.tm* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = load %struct.tm*, %struct.tm** %3, align 8
  %173 = getelementptr inbounds %struct.tm, %struct.tm* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %174)
  %176 = load %struct.tm*, %struct.tm** %3, align 8
  %177 = getelementptr inbounds %struct.tm, %struct.tm* %176, i32 0, i32 3
  store i32 0, i32* %177, align 8
  %178 = load %struct.tm*, %struct.tm** %3, align 8
  %179 = getelementptr inbounds %struct.tm, %struct.tm* %178, i32 0, i32 5
  store i32 0, i32* %179, align 8
  %180 = load %struct.tm*, %struct.tm** %3, align 8
  %181 = getelementptr inbounds %struct.tm, %struct.tm* %180, i32 0, i32 8
  store i32 1, i32* %181, align 8
  %182 = load %struct.tm*, %struct.tm** %3, align 8
  %183 = call i32 @p_mkgmtime32(%struct.tm* %182)
  store i32 %183, i32* %2, align 4
  %184 = load i32, i32* %2, align 4
  %185 = load i32, i32* %1, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %2, align 4
  %189 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = load %struct.tm*, %struct.tm** %3, align 8
  %191 = getelementptr inbounds %struct.tm, %struct.tm* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = icmp eq i32 %192, 4
  %194 = zext i1 %193 to i32
  %195 = load %struct.tm*, %struct.tm** %3, align 8
  %196 = getelementptr inbounds %struct.tm, %struct.tm* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %197)
  %199 = load %struct.tm*, %struct.tm** %3, align 8
  %200 = getelementptr inbounds %struct.tm, %struct.tm* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 0
  %203 = zext i1 %202 to i32
  %204 = load %struct.tm*, %struct.tm** %3, align 8
  %205 = getelementptr inbounds %struct.tm, %struct.tm* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %206)
  store i32 173921, i32* %1, align 4
  store i32 173921, i32* %2, align 4
  %208 = call %struct.tm* @p_gmtime32(i32* %2)
  store %struct.tm* %208, %struct.tm** %3, align 8
  %209 = load %struct.tm*, %struct.tm** %3, align 8
  %210 = icmp ne %struct.tm* %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %83
  %212 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %306

213:                                              ; preds = %83
  %214 = load %struct.tm*, %struct.tm** %3, align 8
  %215 = getelementptr inbounds %struct.tm, %struct.tm* %214, i32 0, i32 8
  store i32 -1, i32* %215, align 8
  %216 = load %struct.tm*, %struct.tm** %3, align 8
  %217 = call i32 @p_mkgmtime32(%struct.tm* %216)
  store i32 %217, i32* %2, align 4
  %218 = load i32, i32* %2, align 4
  %219 = load i32, i32* %1, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %2, align 4
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %222)
  %224 = load %struct.tm*, %struct.tm** %3, align 8
  %225 = getelementptr inbounds %struct.tm, %struct.tm* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 6
  %228 = zext i1 %227 to i32
  %229 = load %struct.tm*, %struct.tm** %3, align 8
  %230 = getelementptr inbounds %struct.tm, %struct.tm* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %231)
  %233 = load %struct.tm*, %struct.tm** %3, align 8
  %234 = getelementptr inbounds %struct.tm, %struct.tm* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %235, 2
  %237 = zext i1 %236 to i32
  %238 = load %struct.tm*, %struct.tm** %3, align 8
  %239 = getelementptr inbounds %struct.tm, %struct.tm* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = call i32 (i32, i8*, ...) @ok(i32 %237, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %240)
  %242 = load %struct.tm*, %struct.tm** %3, align 8
  %243 = getelementptr inbounds %struct.tm, %struct.tm* %242, i32 0, i32 8
  store i32 1, i32* %243, align 8
  %244 = load %struct.tm*, %struct.tm** %3, align 8
  %245 = call i32 @p_mkgmtime32(%struct.tm* %244)
  store i32 %245, i32* %2, align 4
  %246 = load i32, i32* %2, align 4
  %247 = load i32, i32* %1, align 4
  %248 = icmp eq i32 %246, %247
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %2, align 4
  %251 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %250)
  store i32 0, i32* @errno, align 4
  store i32 0, i32* %2, align 4
  %252 = call i32 @p_gmtime32_s(%struct.tm* null, i32* %2)
  store i32 %252, i32* %5, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* @EINVAL, align 4
  %255 = icmp eq i32 %253, %254
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %5, align 4
  %258 = call i32 (i32, i8*, ...) @ok(i32 %256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* @errno, align 4
  %260 = load i32, i32* @EINVAL, align 4
  %261 = icmp eq i32 %259, %260
  %262 = zext i1 %261 to i32
  %263 = load i32, i32* @errno, align 4
  %264 = call i32 (i32, i8*, ...) @ok(i32 %262, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %263)
  store i32 0, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  %265 = call i32 @p_gmtime32_s(%struct.tm* %4, i32* %2)
  store i32 %265, i32* %5, align 4
  %266 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp eq i32 %267, -1
  br i1 %268, label %282, label %269

269:                                              ; preds = %213
  %270 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp eq i32 %271, 70
  br i1 %272, label %273, label %277

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = icmp slt i64 %275, 0
  br label %277

277:                                              ; preds = %273, %269
  %278 = phi i1 [ false, %269 ], [ %276, %273 ]
  %279 = zext i1 %278 to i32
  %280 = call i64 @broken(i32 %279)
  %281 = icmp ne i64 %280, 0
  br label %282

282:                                              ; preds = %277, %213
  %283 = phi i1 [ true, %213 ], [ %281, %277 ]
  %284 = zext i1 %283 to i32
  %285 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = call i32 (i32, i8*, ...) @ok(i32 %284, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %286, i64 %288)
  %290 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp eq i32 %291, -1
  br i1 %292, label %293, label %306

293:                                              ; preds = %282
  %294 = load i32, i32* %5, align 4
  %295 = load i32, i32* @EINVAL, align 4
  %296 = icmp eq i32 %294, %295
  %297 = zext i1 %296 to i32
  %298 = load i32, i32* %5, align 4
  %299 = call i32 (i32, i8*, ...) @ok(i32 %297, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %298)
  %300 = load i32, i32* @errno, align 4
  %301 = load i32, i32* @EINVAL, align 4
  %302 = icmp eq i32 %300, %301
  %303 = zext i1 %302 to i32
  %304 = load i32, i32* @errno, align 4
  %305 = call i32 (i32, i8*, ...) @ok(i32 %303, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %304)
  br label %306

306:                                              ; preds = %36, %211, %293, %282
  ret void
}

declare dso_local %struct.tm* @p_gmtime32(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @p_mkgmtime32(%struct.tm*) #1

declare dso_local i32 @p_gmtime32_s(%struct.tm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
