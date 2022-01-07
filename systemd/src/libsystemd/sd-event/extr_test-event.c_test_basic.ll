; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_test_basic.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_test_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_basic.ch = internal constant i8 120, align 1
@__const.test_basic.a = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@__const.test_basic.b = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@__const.test_basic.d = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@__const.test_basic.k = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@got_unref = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@unref_handler = common dso_local global i32 0, align 4
@got_a = common dso_local global i32 0, align 4
@got_b = common dso_local global i32 0, align 4
@got_c = common dso_local global i32 0, align 4
@got_d = common dso_local global i32 0, align 4
@io_handler = common dso_local global i32 0, align 4
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@time_handler = common dso_local global i32 0, align 4
@exit_handler = common dso_local global i32 0, align 4
@prepare_handler = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIGRTMIN = common dso_local global i64 0, align 8
@do_quit = common dso_local global i32 0, align 4
@post_handler = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@got_post = common dso_local global i32 0, align 4
@got_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_basic() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %14 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([2 x i32]* @__const.test_basic.a to i8*), i64 8, i1 false)
  %15 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([2 x i32]* @__const.test_basic.b to i8*), i64 8, i1 false)
  %16 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([2 x i32]* @__const.test_basic.d to i8*), i64 8, i1 false)
  %17 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast ([2 x i32]* @__const.test_basic.k to i8*), i64 8, i1 false)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %19 = call i64 @pipe(i32* %18)
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert_se(i32 %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %24 = call i64 @pipe(i32* %23)
  %25 = icmp sge i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %29 = call i64 @pipe(i32* %28)
  %30 = icmp sge i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %34 = call i64 @pipe(i32* %33)
  %35 = icmp sge i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = call i64 @sd_event_default(i32** %1)
  %39 = icmp sge i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %44 = call i64 @sd_event_now(i32* %42, i32 %43, i64* %12)
  %45 = icmp sgt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert_se(i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i64 @sd_event_set_watchdog(i32* %48, i32 1)
  %50 = icmp sge i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert_se(i32 %51)
  store i32 0, i32* @got_unref, align 4
  %53 = load i32*, i32** %1, align 8
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @EPOLLIN, align 4
  %57 = load i32, i32* @unref_handler, align 4
  %58 = call i64 @sd_event_add_io(i32* %53, i32** %7, i32 %55, i32 %56, i32 %57, i32* null)
  %59 = icmp sge i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert_se(i32 %60)
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @write(i32 %63, i8* @test_basic.ch, i32 1)
  %65 = icmp eq i32 %64, 1
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert_se(i32 %66)
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @sd_event_run(i32* %68, i64 -1)
  %70 = icmp sge i32 %69, 1
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert_se(i32 %71)
  %73 = load i32, i32* @got_unref, align 4
  %74 = call i32 @assert_se(i32 %73)
  store i32 0, i32* @got_a, align 4
  store i32 0, i32* @got_b, align 4
  store i32 0, i32* @got_c, align 4
  store i32 0, i32* @got_d, align 4
  %75 = load i32*, i32** %1, align 8
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @EPOLLIN, align 4
  %79 = load i32, i32* @io_handler, align 4
  %80 = call i32* @INT_TO_PTR(i8 signext 100)
  %81 = call i64 @sd_event_add_io(i32* %75, i32** %2, i32 %77, i32 %78, i32 %79, i32* %80)
  %82 = icmp sge i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert_se(i32 %83)
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %87 = call i64 @sd_event_source_set_enabled(i32* %85, i32 %86)
  %88 = icmp sge i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert_se(i32 %89)
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @write(i32 %92, i8* @test_basic.ch, i32 1)
  %94 = icmp sge i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert_se(i32 %95)
  %97 = load i32*, i32** %1, align 8
  %98 = call i32 @sd_event_run(i32* %97, i64 -1)
  %99 = icmp sge i32 %98, 1
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert_se(i32 %100)
  %102 = load i32, i32* @got_d, align 4
  %103 = icmp eq i32 %102, 1
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert_se(i32 %104)
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @write(i32 %107, i8* @test_basic.ch, i32 1)
  %109 = icmp sge i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert_se(i32 %110)
  %112 = load i32*, i32** %1, align 8
  %113 = call i32 @sd_event_run(i32* %112, i64 -1)
  %114 = icmp sge i32 %113, 1
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert_se(i32 %115)
  %117 = load i32, i32* @got_d, align 4
  %118 = icmp eq i32 %117, 2
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert_se(i32 %119)
  %121 = load i32*, i32** %1, align 8
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @EPOLLIN, align 4
  %125 = load i32, i32* @io_handler, align 4
  %126 = call i32* @INT_TO_PTR(i8 signext 97)
  %127 = call i64 @sd_event_add_io(i32* %121, i32** %3, i32 %123, i32 %124, i32 %125, i32* %126)
  %128 = icmp sge i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert_se(i32 %129)
  %131 = load i32*, i32** %1, align 8
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @EPOLLIN, align 4
  %135 = load i32, i32* @io_handler, align 4
  %136 = call i32* @INT_TO_PTR(i8 signext 98)
  %137 = call i64 @sd_event_add_io(i32* %131, i32** %4, i32 %133, i32 %134, i32 %135, i32* %136)
  %138 = icmp sge i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert_se(i32 %139)
  %141 = load i32*, i32** %1, align 8
  %142 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %143 = load i32, i32* @time_handler, align 4
  %144 = call i32* @INT_TO_PTR(i8 signext 99)
  %145 = call i64 @sd_event_add_time(i32* %141, i32** %5, i32 %142, i32 0, i32 0, i32 %143, i32* %144)
  %146 = icmp sge i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert_se(i32 %147)
  %149 = load i32*, i32** %1, align 8
  %150 = load i32, i32* @exit_handler, align 4
  %151 = call i32* @INT_TO_PTR(i8 signext 103)
  %152 = call i64 @sd_event_add_exit(i32* %149, i32** %6, i32 %150, i32* %151)
  %153 = icmp sge i64 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert_se(i32 %154)
  %156 = load i32*, i32** %3, align 8
  %157 = call i64 @sd_event_source_set_priority(i32* %156, i32 99)
  %158 = icmp sge i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert_se(i32 %159)
  %161 = load i32*, i32** %3, align 8
  %162 = call i64 @sd_event_source_get_priority(i32* %161, i32* %13)
  %163 = icmp sge i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert_se(i32 %164)
  %166 = load i32, i32* %13, align 4
  %167 = icmp eq i32 %166, 99
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert_se(i32 %168)
  %170 = load i32*, i32** %4, align 8
  %171 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %172 = call i64 @sd_event_source_set_enabled(i32* %170, i32 %171)
  %173 = icmp sge i64 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert_se(i32 %174)
  %176 = load i32*, i32** %3, align 8
  %177 = load i32, i32* @prepare_handler, align 4
  %178 = call i64 @sd_event_source_set_prepare(i32* %176, i32 %177)
  %179 = icmp sge i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert_se(i32 %180)
  %182 = load i32*, i32** %5, align 8
  %183 = call i64 @sd_event_source_set_priority(i32* %182, i32 50)
  %184 = icmp sge i64 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert_se(i32 %185)
  %187 = load i32*, i32** %5, align 8
  %188 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %189 = call i64 @sd_event_source_set_enabled(i32* %187, i32 %188)
  %190 = icmp sge i64 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert_se(i32 %191)
  %193 = load i32*, i32** %5, align 8
  %194 = load i32, i32* @prepare_handler, align 4
  %195 = call i64 @sd_event_source_set_prepare(i32* %193, i32 %194)
  %196 = icmp sge i64 %195, 0
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert_se(i32 %197)
  %199 = load i32, i32* @SIG_BLOCK, align 4
  %200 = load i64, i64* @SIGRTMIN, align 8
  %201 = add nsw i64 %200, 1
  %202 = call i64 @sigprocmask_many(i32 %199, i32* null, i64 %201, i32 -1)
  %203 = icmp sge i64 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert_se(i32 %204)
  %206 = load i32*, i32** %1, align 8
  %207 = load i64, i64* @SIGRTMIN, align 8
  %208 = add nsw i64 %207, 1
  %209 = call i64 @sd_event_add_signal(i32* %206, i32* null, i64 %208, i32* null, i32* null)
  %210 = icmp sge i64 %209, 0
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert_se(i32 %211)
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @write(i32 %214, i8* @test_basic.ch, i32 1)
  %216 = icmp sge i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert_se(i32 %217)
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @write(i32 %220, i8* @test_basic.ch, i32 1)
  %222 = icmp sge i32 %221, 0
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert_se(i32 %223)
  %225 = load i32, i32* @got_a, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %0
  %228 = load i32, i32* @got_b, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* @got_c, align 4
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  br label %234

234:                                              ; preds = %230, %227, %0
  %235 = phi i1 [ false, %227 ], [ false, %0 ], [ %233, %230 ]
  %236 = zext i1 %235 to i32
  %237 = call i32 @assert_se(i32 %236)
  %238 = load i32*, i32** %1, align 8
  %239 = call i32 @sd_event_run(i32* %238, i64 -1)
  %240 = icmp sge i32 %239, 1
  %241 = zext i1 %240 to i32
  %242 = call i32 @assert_se(i32 %241)
  %243 = load i32, i32* @got_a, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %234
  %246 = load i32, i32* @got_b, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load i32, i32* @got_c, align 4
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  br label %252

252:                                              ; preds = %248, %245, %234
  %253 = phi i1 [ false, %245 ], [ false, %234 ], [ %251, %248 ]
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert_se(i32 %254)
  %256 = load i32*, i32** %1, align 8
  %257 = call i32 @sd_event_run(i32* %256, i64 -1)
  %258 = icmp sge i32 %257, 1
  %259 = zext i1 %258 to i32
  %260 = call i32 @assert_se(i32 %259)
  %261 = load i32, i32* @got_a, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %252
  %264 = load i32, i32* @got_b, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32, i32* @got_c, align 4
  %268 = icmp ne i32 %267, 0
  br label %269

269:                                              ; preds = %266, %263, %252
  %270 = phi i1 [ false, %263 ], [ false, %252 ], [ %268, %266 ]
  %271 = zext i1 %270 to i32
  %272 = call i32 @assert_se(i32 %271)
  %273 = load i32*, i32** %1, align 8
  %274 = call i32 @sd_event_run(i32* %273, i64 -1)
  %275 = icmp sge i32 %274, 1
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert_se(i32 %276)
  %278 = load i32, i32* @got_a, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %269
  %281 = load i32, i32* @got_b, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i32, i32* @got_c, align 4
  %285 = icmp ne i32 %284, 0
  br label %286

286:                                              ; preds = %283, %280, %269
  %287 = phi i1 [ false, %280 ], [ false, %269 ], [ %285, %283 ]
  %288 = zext i1 %287 to i32
  %289 = call i32 @assert_se(i32 %288)
  %290 = load i32*, i32** %3, align 8
  %291 = call i32 @sd_event_source_unref(i32* %290)
  %292 = load i32*, i32** %4, align 8
  %293 = call i32 @sd_event_source_unref(i32* %292)
  store i32 1, i32* @do_quit, align 4
  %294 = load i32*, i32** %1, align 8
  %295 = load i32, i32* @post_handler, align 4
  %296 = call i64 @sd_event_add_post(i32* %294, i32* null, i32 %295, i32* null)
  %297 = icmp sge i64 %296, 0
  %298 = zext i1 %297 to i32
  %299 = call i32 @assert_se(i32 %298)
  %300 = load i32*, i32** %1, align 8
  %301 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %302 = call i64 @sd_event_now(i32* %300, i32 %301, i64* %12)
  %303 = icmp eq i64 %302, 0
  %304 = zext i1 %303 to i32
  %305 = call i32 @assert_se(i32 %304)
  %306 = load i32*, i32** %5, align 8
  %307 = load i64, i64* %12, align 8
  %308 = load i32, i32* @USEC_PER_MSEC, align 4
  %309 = mul nsw i32 200, %308
  %310 = sext i32 %309 to i64
  %311 = add nsw i64 %307, %310
  %312 = call i64 @sd_event_source_set_time(i32* %306, i64 %311)
  %313 = icmp sge i64 %312, 0
  %314 = zext i1 %313 to i32
  %315 = call i32 @assert_se(i32 %314)
  %316 = load i32*, i32** %5, align 8
  %317 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %318 = call i64 @sd_event_source_set_enabled(i32* %316, i32 %317)
  %319 = icmp sge i64 %318, 0
  %320 = zext i1 %319 to i32
  %321 = call i32 @assert_se(i32 %320)
  %322 = load i32*, i32** %1, align 8
  %323 = call i64 @sd_event_loop(i32* %322)
  %324 = icmp sge i64 %323, 0
  %325 = zext i1 %324 to i32
  %326 = call i32 @assert_se(i32 %325)
  %327 = load i32, i32* @got_post, align 4
  %328 = call i32 @assert_se(i32 %327)
  %329 = load i32, i32* @got_exit, align 4
  %330 = call i32 @assert_se(i32 %329)
  %331 = load i32*, i32** %5, align 8
  %332 = call i32 @sd_event_source_unref(i32* %331)
  %333 = load i32*, i32** %6, align 8
  %334 = call i32 @sd_event_source_unref(i32* %333)
  %335 = load i32*, i32** %2, align 8
  %336 = call i32 @sd_event_source_unref(i32* %335)
  %337 = load i32*, i32** %1, align 8
  %338 = call i32 @sd_event_unref(i32* %337)
  %339 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %340 = call i32 @safe_close_pair(i32* %339)
  %341 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %342 = call i32 @safe_close_pair(i32* %341)
  %343 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %344 = call i32 @safe_close_pair(i32* %343)
  %345 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %346 = call i32 @safe_close_pair(i32* %345)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i64 @sd_event_default(i32**) #2

declare dso_local i64 @sd_event_now(i32*, i32, i64*) #2

declare dso_local i64 @sd_event_set_watchdog(i32*, i32) #2

declare dso_local i64 @sd_event_add_io(i32*, i32**, i32, i32, i32, i32*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @sd_event_run(i32*, i64) #2

declare dso_local i32* @INT_TO_PTR(i8 signext) #2

declare dso_local i64 @sd_event_source_set_enabled(i32*, i32) #2

declare dso_local i64 @sd_event_add_time(i32*, i32**, i32, i32, i32, i32, i32*) #2

declare dso_local i64 @sd_event_add_exit(i32*, i32**, i32, i32*) #2

declare dso_local i64 @sd_event_source_set_priority(i32*, i32) #2

declare dso_local i64 @sd_event_source_get_priority(i32*, i32*) #2

declare dso_local i64 @sd_event_source_set_prepare(i32*, i32) #2

declare dso_local i64 @sigprocmask_many(i32, i32*, i64, i32) #2

declare dso_local i64 @sd_event_add_signal(i32*, i32*, i64, i32*, i32*) #2

declare dso_local i32 @sd_event_source_unref(i32*) #2

declare dso_local i64 @sd_event_add_post(i32*, i32*, i32, i32*) #2

declare dso_local i64 @sd_event_source_set_time(i32*, i64) #2

declare dso_local i64 @sd_event_loop(i32*) #2

declare dso_local i32 @sd_event_unref(i32*) #2

declare dso_local i32 @safe_close_pair(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
