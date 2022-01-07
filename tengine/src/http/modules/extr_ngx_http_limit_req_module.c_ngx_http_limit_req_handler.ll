; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_limit_req_module.c_ngx_http_limit_req_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_limit_req_module.c_ngx_http_limit_req_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { %struct.TYPE_45__*, i32, i32, i32, %struct.TYPE_38__* }
%struct.TYPE_45__ = type { %struct.TYPE_40__*, i32, i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_42__*, %struct.TYPE_41__*, %struct.TYPE_39__ }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_35__ = type { i64, i64, i32, i32, %struct.TYPE_37__, i32 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_44__*, %struct.TYPE_36__ }
%struct.TYPE_44__ = type { %struct.TYPE_43__, %struct.TYPE_34__* }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_36__ = type { i64, i8* }

@NGX_DECLINED = common dso_local global i64 0, align 8
@ngx_http_limit_req_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"the value of the \22%V\22 key is more than 65535 bytes: \22%V\22\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"limit_req[%ui]: %i %ui.%03ui\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"limiting requests%s, excess: %ui.%03ui by zone \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c", dry run\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"delaying request%s, excess: %ui.%03ui, by zone \22%V\22\00", align 1
@ngx_http_test_reading = common dso_local global i32 0, align 4
@ngx_http_limit_req_delay = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_47__*)* @ngx_http_limit_req_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_limit_req_handler(%struct.TYPE_47__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_47__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_46__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_47__* %0, %struct.TYPE_47__** %3, align 8
  %14 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %21, i64* %2, align 8
  br label %294

22:                                               ; preds = %1
  %23 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %24 = load i32, i32* @ngx_http_limit_req_module, align 4
  %25 = call %struct.TYPE_35__* @ngx_http_get_module_loc_conf(%struct.TYPE_47__* %23, i32 %24)
  store %struct.TYPE_35__* %25, %struct.TYPE_35__** %11, align 8
  %26 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  store %struct.TYPE_33__* %29, %struct.TYPE_33__** %13, align 8
  store i64 0, i64* %8, align 8
  %30 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %30, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %120, %22
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %123

38:                                               ; preds = %31
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i64 %40
  store %struct.TYPE_33__* %41, %struct.TYPE_33__** %12, align 8
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_44__*, %struct.TYPE_44__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %45, align 8
  store %struct.TYPE_34__* %46, %struct.TYPE_34__** %10, align 8
  %47 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 2
  %50 = call i64 @ngx_http_complex_value(%struct.TYPE_47__* %47, %struct.TYPE_39__* %49, %struct.TYPE_46__* %5)
  %51 = load i64, i64* @NGX_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %54, i64* %2, align 8
  br label %294

55:                                               ; preds = %38
  %56 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %120

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 65535
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32, i32* @NGX_LOG_ERR, align 4
  %66 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_45__*, %struct.TYPE_45__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %72, i32 0, i32 0
  %74 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %65, i32 %70, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32* %73, %struct.TYPE_46__* %5)
  br label %120

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %5, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %5, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ngx_crc32_short(i32 %77, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_41__*, %struct.TYPE_41__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %83, i32 0, i32 0
  %85 = call i32 @ngx_shmtx_lock(i32* %84)
  %86 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %92, 1
  %94 = icmp eq i64 %88, %93
  %95 = zext i1 %94 to i32
  %96 = call i64 @ngx_http_limit_req_lookup(%struct.TYPE_33__* %86, i32 %87, %struct.TYPE_46__* %5, i64* %8, i32 %95)
  store i64 %96, i64* %6, align 8
  %97 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_41__*, %struct.TYPE_41__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %99, i32 0, i32 0
  %101 = call i32 @ngx_shmtx_unlock(i32* %100)
  %102 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %103 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_45__*, %struct.TYPE_45__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* %8, align 8
  %111 = udiv i64 %110, 1000
  %112 = load i64, i64* %8, align 8
  %113 = urem i64 %112, 1000
  %114 = call i32 @ngx_log_debug4(i32 %102, i32 %107, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %108, i64 %109, i64 %111, i64 %113)
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* @NGX_AGAIN, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %75
  br label %123

119:                                              ; preds = %75
  br label %120

120:                                              ; preds = %119, %64, %59
  %121 = load i64, i64* %7, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %7, align 8
  br label %31

123:                                              ; preds = %118, %31
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* @NGX_DECLINED, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %128, i64* %2, align 8
  br label %294

129:                                              ; preds = %123
  %130 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_38__*, %struct.TYPE_38__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 4
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* @NGX_BUSY, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %129
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @NGX_ERROR, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %218

141:                                              ; preds = %137, %129
  %142 = load i64, i64* %6, align 8
  %143 = load i64, i64* @NGX_BUSY, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %170

145:                                              ; preds = %141
  %146 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_45__*, %struct.TYPE_45__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %160 = load i64, i64* %8, align 8
  %161 = udiv i64 %160, 1000
  %162 = load i64, i64* %8, align 8
  %163 = urem i64 %162, 1000
  %164 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_44__*, %struct.TYPE_44__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %167, i32 0, i32 0
  %169 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %148, i32 %153, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %159, i64 %161, i64 %163, i32* %168)
  br label %170

170:                                              ; preds = %145, %141
  br label %171

171:                                              ; preds = %188, %187, %170
  %172 = load i64, i64* %7, align 8
  %173 = add i64 %172, -1
  store i64 %173, i64* %7, align 8
  %174 = icmp ne i64 %172, 0
  br i1 %174, label %175, label %207

175:                                              ; preds = %171
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_44__*, %struct.TYPE_44__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %181, align 8
  store %struct.TYPE_34__* %182, %struct.TYPE_34__** %10, align 8
  %183 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_42__*, %struct.TYPE_42__** %184, align 8
  %186 = icmp eq %struct.TYPE_42__* %185, null
  br i1 %186, label %187, label %188

187:                                              ; preds = %175
  br label %171

188:                                              ; preds = %175
  %189 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_41__*, %struct.TYPE_41__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %191, i32 0, i32 0
  %193 = call i32 @ngx_shmtx_lock(i32* %192)
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_42__*, %struct.TYPE_42__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %197, align 4
  %200 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_41__*, %struct.TYPE_41__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %202, i32 0, i32 0
  %204 = call i32 @ngx_shmtx_unlock(i32* %203)
  %205 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %205, i32 0, i32 0
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %206, align 8
  br label %171

207:                                              ; preds = %171
  %208 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %213, i64* %2, align 8
  br label %294

214:                                              ; preds = %207
  %215 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  store i64 %217, i64* %2, align 8
  br label %294

218:                                              ; preds = %137
  %219 = load i64, i64* %6, align 8
  %220 = load i64, i64* @NGX_AGAIN, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  store i64 0, i64* %8, align 8
  br label %223

223:                                              ; preds = %222, %218
  %224 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %225 = load i64, i64* %7, align 8
  %226 = call i32 @ngx_http_limit_req_account(%struct.TYPE_33__* %224, i64 %225, i64* %8, %struct.TYPE_33__** %12)
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %223
  %230 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %230, i64* %2, align 8
  br label %294

231:                                              ; preds = %223
  %232 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_45__*, %struct.TYPE_45__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %246 = load i64, i64* %8, align 8
  %247 = udiv i64 %246, 1000
  %248 = load i64, i64* %8, align 8
  %249 = urem i64 %248, 1000
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_44__*, %struct.TYPE_44__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %253, i32 0, i32 0
  %255 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %234, i32 %239, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %245, i64 %247, i64 %249, i32* %254)
  %256 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %231
  %261 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %261, i64* %2, align 8
  br label %294

262:                                              ; preds = %231
  %263 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_45__*, %struct.TYPE_45__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @ngx_handle_read_event(i32 %267, i32 0)
  %269 = load i64, i64* @NGX_OK, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %262
  %272 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %272, i64* %2, align 8
  br label %294

273:                                              ; preds = %262
  %274 = load i32, i32* @ngx_http_test_reading, align 4
  %275 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* @ngx_http_limit_req_delay, align 4
  %278 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 8
  %280 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_45__*, %struct.TYPE_45__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_40__*, %struct.TYPE_40__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %284, i32 0, i32 0
  store i32 1, i32* %285, align 4
  %286 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_45__*, %struct.TYPE_45__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_40__*, %struct.TYPE_40__** %289, align 8
  %291 = load i32, i32* %9, align 4
  %292 = call i32 @ngx_add_timer(%struct.TYPE_40__* %290, i32 %291)
  %293 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %293, i64* %2, align 8
  br label %294

294:                                              ; preds = %273, %271, %260, %229, %214, %212, %127, %53, %20
  %295 = load i64, i64* %2, align 8
  ret i64 %295
}

declare dso_local %struct.TYPE_35__* @ngx_http_get_module_loc_conf(%struct.TYPE_47__*, i32) #1

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_47__*, %struct.TYPE_39__*, %struct.TYPE_46__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_crc32_short(i32, i32) #1

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i64 @ngx_http_limit_req_lookup(%struct.TYPE_33__*, i32, %struct.TYPE_46__*, i64*, i32) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @ngx_http_limit_req_account(%struct.TYPE_33__*, i64, i64*, %struct.TYPE_33__**) #1

declare dso_local i64 @ngx_handle_read_event(i32, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_40__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
