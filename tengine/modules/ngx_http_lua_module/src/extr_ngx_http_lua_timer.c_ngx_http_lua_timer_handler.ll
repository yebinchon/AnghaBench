; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_timer.c_ngx_http_lua_timer_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_timer.c_ngx_http_lua_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_44__*, i32, i32 }
%struct.TYPE_44__ = type { i32, i32, %struct.TYPE_41__*, i32 }
%struct.TYPE_48__ = type { %struct.TYPE_42__*, i32, i32, i32, i32, i32 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_51__ = type { i32, %struct.TYPE_45__*, i32, i32*, %struct.TYPE_45__, i64 }
%struct.TYPE_45__ = type { i32, i32, i32, i64 }
%struct.TYPE_53__ = type { i32, %struct.TYPE_51__* }
%struct.TYPE_47__ = type { i64, i32 (i64)* }
%struct.TYPE_49__ = type { i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i64, i64, i32 }
%struct.TYPE_52__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_46__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"lua ngx.timer expired\00", align 1
@ngx_exiting = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to create the next timer of delay %ud ms\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%i lua_max_running_timers are not enough\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"failed to create fake connection to run timer (co: %p)\00", align 1
@ngx_http_lua_log_timer_error = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"failed to create fake request to run timer (co: %p)\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_CONNECTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"lmcf: %p\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"failed to create ctx to run timer (co: %p)\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"failed to add vm cleanup to run timer (co: %p)\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"failed to add request cleanup to run timer (co: %p)\00", align 1
@ngx_http_lua_request_cleanup_handler = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CONTEXT_TIMER = common dso_local global i32 0, align 4
@ngx_http_block_reading = common dso_local global i32 0, align 4
@NGX_HTTP_LUA_CO_RUNNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"r connection: %p, log %p\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"timer lua run thread: %d\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@coroutines_key = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_40__*)* @ngx_http_lua_timer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_timer_handler(%struct.TYPE_40__* %0) #0 {
  %2 = alloca %struct.TYPE_40__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_41__*, align 8
  %7 = alloca %struct.TYPE_48__*, align 8
  %8 = alloca %struct.TYPE_51__*, align 8
  %9 = alloca %struct.TYPE_53__*, align 8
  %10 = alloca %struct.TYPE_47__*, align 8
  %11 = alloca %struct.TYPE_49__, align 8
  %12 = alloca %struct.TYPE_50__*, align 8
  %13 = alloca %struct.TYPE_52__*, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %2, align 8
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %6, align 8
  store %struct.TYPE_48__* null, %struct.TYPE_48__** %7, align 8
  %14 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %15 = load %struct.TYPE_46__*, %struct.TYPE_46__** @ngx_cycle, align 8
  %16 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ngx_log_debug0(i32 %14, i32 %17, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ngx_memcpy(%struct.TYPE_49__* %11, i32 %21, i32 72)
  %23 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %24 = call i32 @ngx_free(%struct.TYPE_40__* %23)
  %25 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 11
  %26 = load %struct.TYPE_50__*, %struct.TYPE_50__** %25, align 8
  store %struct.TYPE_50__* %26, %struct.TYPE_50__** %12, align 8
  %27 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @ngx_exiting, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = call i64 @ngx_http_lua_timer_copy(%struct.TYPE_49__* %11)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @NGX_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i32, i32* @NGX_LOG_ALERT, align 4
  %44 = load %struct.TYPE_46__*, %struct.TYPE_46__** @ngx_cycle, align 8
  %45 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @ngx_log_error(i32 %43, i32 %46, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %42, %37
  br label %52

52:                                               ; preds = %51, %33, %1
  %53 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load i32, i32* @NGX_LOG_ALERT, align 4
  %62 = load %struct.TYPE_46__*, %struct.TYPE_46__** @ngx_cycle, align 8
  %63 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @ngx_log_error(i32 %61, i32 %64, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %334

70:                                               ; preds = %52
  %71 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.TYPE_41__* @ngx_http_lua_create_fake_connection(i64 %72)
  store %struct.TYPE_41__* %73, %struct.TYPE_41__** %6, align 8
  %74 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %75 = icmp eq %struct.TYPE_41__* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load i32, i32* @NGX_LOG_ALERT, align 4
  %78 = load %struct.TYPE_46__*, %struct.TYPE_46__** @ngx_cycle, align 8
  %79 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ngx_log_error(i32 %77, i32 %80, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %334

84:                                               ; preds = %70
  %85 = load i32, i32* @ngx_http_lua_log_timer_error, align 4
  %86 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_44__*, %struct.TYPE_44__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %88, i32 0, i32 3
  store i32 %85, i32* %89, align 8
  %90 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %91 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_44__*, %struct.TYPE_44__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %93, i32 0, i32 2
  store %struct.TYPE_41__* %90, %struct.TYPE_41__** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 10
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 9
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %104 = call %struct.TYPE_48__* @ngx_http_lua_create_fake_request(%struct.TYPE_41__* %103)
  store %struct.TYPE_48__* %104, %struct.TYPE_48__** %7, align 8
  %105 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %106 = icmp eq %struct.TYPE_48__* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %84
  %108 = load i32, i32* @NGX_LOG_ALERT, align 4
  %109 = load %struct.TYPE_46__*, %struct.TYPE_46__** @ngx_cycle, align 8
  %110 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ngx_log_error(i32 %108, i32 %111, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %334

115:                                              ; preds = %84
  %116 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 8
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %129 = load i32, i32* @ngx_http_core_module, align 4
  %130 = call %struct.TYPE_52__* @ngx_http_get_module_loc_conf(%struct.TYPE_48__* %128, i32 %129)
  store %struct.TYPE_52__* %130, %struct.TYPE_52__** %13, align 8
  %131 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_43__*, %struct.TYPE_43__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_44__*, %struct.TYPE_44__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 4
  %140 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_44__*, %struct.TYPE_44__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @NGX_LOG_DEBUG_CONNECTION, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %158, label %148

148:                                              ; preds = %115
  %149 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_43__*, %struct.TYPE_43__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_44__*, %struct.TYPE_44__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %156, i32 0, i32 0
  store i32 %153, i32* %157, align 8
  br label %158

158:                                              ; preds = %148, %115
  %159 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %160 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_50__* %159)
  %161 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %162 = call %struct.TYPE_51__* @ngx_http_lua_create_ctx(%struct.TYPE_48__* %161)
  store %struct.TYPE_51__* %162, %struct.TYPE_51__** %8, align 8
  %163 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %164 = icmp eq %struct.TYPE_51__* %163, null
  br i1 %164, label %165, label %173

165:                                              ; preds = %158
  %166 = load i32, i32* @NGX_LOG_ALERT, align 4
  %167 = load %struct.TYPE_46__*, %struct.TYPE_46__** @ngx_cycle, align 8
  %168 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ngx_log_error(i32 %166, i32 %169, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %171)
  br label %334

173:                                              ; preds = %158
  %174 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %203

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %180, i32 0, i32 5
  store i64 %179, i64* %181, align 8
  %182 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call %struct.TYPE_47__* @ngx_pool_cleanup_add(i32 %184, i32 0)
  store %struct.TYPE_47__* %185, %struct.TYPE_47__** %10, align 8
  %186 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %187 = icmp eq %struct.TYPE_47__* %186, null
  br i1 %187, label %188, label %196

188:                                              ; preds = %177
  %189 = load i32, i32* @NGX_LOG_ALERT, align 4
  %190 = load %struct.TYPE_46__*, %struct.TYPE_46__** @ngx_cycle, align 8
  %191 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @ngx_log_error(i32 %189, i32 %192, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %194)
  br label %334

196:                                              ; preds = %177
  %197 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %197, i32 0, i32 1
  store i32 (i64)* @ngx_http_lua_cleanup_vm, i32 (i64)** %198, align 8
  %199 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %196, %173
  %204 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %206, i32 0, i32 1
  store %struct.TYPE_45__* %205, %struct.TYPE_45__** %207, align 8
  %208 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %209 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %210 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_48__* %208, %struct.TYPE_51__* %209)
  store i32* %210, i32** %4, align 8
  %211 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %212 = call %struct.TYPE_53__* @ngx_http_cleanup_add(%struct.TYPE_48__* %211, i32 0)
  store %struct.TYPE_53__* %212, %struct.TYPE_53__** %9, align 8
  %213 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %214 = icmp eq %struct.TYPE_53__* %213, null
  br i1 %214, label %215, label %223

215:                                              ; preds = %203
  %216 = load i32, i32* @NGX_LOG_ALERT, align 4
  %217 = load %struct.TYPE_46__*, %struct.TYPE_46__** @ngx_cycle, align 8
  %218 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @ngx_log_error(i32 %216, i32 %219, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %221)
  br label %334

223:                                              ; preds = %203
  %224 = load i32, i32* @ngx_http_lua_request_cleanup_handler, align 4
  %225 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %228 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %228, i32 0, i32 1
  store %struct.TYPE_51__* %227, %struct.TYPE_51__** %229, align 8
  %230 = load %struct.TYPE_53__*, %struct.TYPE_53__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %232, i32 0, i32 3
  store i32* %231, i32** %233, align 8
  %234 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %234, i32 0, i32 0
  store i32 1, i32* %235, align 8
  %236 = load i32, i32* @NGX_HTTP_LUA_CONTEXT_TIMER, align 4
  %237 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* @ngx_http_block_reading, align 4
  %240 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 8
  %242 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_45__*, %struct.TYPE_45__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %246, i32 0, i32 3
  store i64 %243, i64* %247, align 8
  %248 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_45__*, %struct.TYPE_45__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %252, i32 0, i32 0
  store i32 %249, i32* %253, align 8
  %254 = load i32, i32* @NGX_HTTP_LUA_CO_RUNNING, align 4
  %255 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_45__*, %struct.TYPE_45__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %257, i32 0, i32 2
  store i32 %254, i32* %258, align 8
  %259 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_42__*, %struct.TYPE_42__** %260, align 8
  %262 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_42__*, %struct.TYPE_42__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_42__* %261, i32 %266)
  %268 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %271 = call i32 @ngx_http_lua_set_req(i32 %269, %struct.TYPE_48__* %270)
  %272 = load %struct.TYPE_50__*, %struct.TYPE_50__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, 1
  store i64 %275, i64* %273, align 8
  %276 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @lua_pushboolean(i32 %277, i32 %279)
  %281 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @lua_gettop(i32 %282)
  store i32 %283, i32* %3, align 4
  %284 = load i32, i32* %3, align 4
  %285 = icmp sgt i32 %284, 2
  br i1 %285, label %286, label %290

286:                                              ; preds = %223
  %287 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @lua_insert(i32 %288, i32 2)
  br label %290

290:                                              ; preds = %286, %223
  %291 = load i32*, i32** %4, align 8
  %292 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %293 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %294 = load i32, i32* %3, align 4
  %295 = sub nsw i32 %294, 1
  %296 = call i64 @ngx_http_lua_run_thread(i32* %291, %struct.TYPE_48__* %292, %struct.TYPE_51__* %293, i32 %295)
  store i64 %296, i64* %5, align 8
  %297 = load i64, i64* %5, align 8
  %298 = trunc i64 %297 to i32
  %299 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %298)
  %300 = load i64, i64* %5, align 8
  %301 = load i64, i64* @NGX_ERROR, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %307, label %303

303:                                              ; preds = %290
  %304 = load i64, i64* %5, align 8
  %305 = load i64, i64* @NGX_OK, align 8
  %306 = icmp sge i64 %304, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %303, %290
  br label %330

308:                                              ; preds = %303
  %309 = load i64, i64* %5, align 8
  %310 = load i64, i64* @NGX_AGAIN, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %308
  %313 = load i32*, i32** %4, align 8
  %314 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %315 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %316 = call i64 @ngx_http_lua_content_run_posted_threads(i32* %313, %struct.TYPE_48__* %314, %struct.TYPE_51__* %315, i32 0)
  store i64 %316, i64* %5, align 8
  br label %329

317:                                              ; preds = %308
  %318 = load i64, i64* %5, align 8
  %319 = load i64, i64* @NGX_DONE, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = load i32*, i32** %4, align 8
  %323 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %324 = load %struct.TYPE_51__*, %struct.TYPE_51__** %8, align 8
  %325 = call i64 @ngx_http_lua_content_run_posted_threads(i32* %322, %struct.TYPE_48__* %323, %struct.TYPE_51__* %324, i32 1)
  store i64 %325, i64* %5, align 8
  br label %328

326:                                              ; preds = %317
  %327 = load i64, i64* @NGX_OK, align 8
  store i64 %327, i64* %5, align 8
  br label %328

328:                                              ; preds = %326, %321
  br label %329

329:                                              ; preds = %328, %312
  br label %330

330:                                              ; preds = %329, %307
  %331 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %332 = load i64, i64* %5, align 8
  %333 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_48__* %331, i64 %332)
  br label %383

334:                                              ; preds = %215, %188, %165, %107, %76, %60
  %335 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %360

338:                                              ; preds = %334
  %339 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %360

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @coroutines_key, align 4
  %346 = call i32 @ngx_http_lua_lightudata_mask(i32 %345)
  %347 = call i32 @lua_pushlightuserdata(i32 %344, i32 %346)
  %348 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %351 = call i32 @lua_rawget(i32 %349, i32 %350)
  %352 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 4
  %355 = load i64, i64* %354, align 8
  %356 = call i32 @luaL_unref(i32 %353, i32 -1, i64 %355)
  %357 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @lua_settop(i32 %358, i32 0)
  br label %360

360:                                              ; preds = %342, %338, %334
  %361 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 3
  %366 = load i64, i64* %365, align 8
  %367 = call i32 @ngx_http_lua_cleanup_vm(i64 %366)
  br label %368

368:                                              ; preds = %364, %360
  %369 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %370 = icmp ne %struct.TYPE_41__* %369, null
  br i1 %370, label %371, label %374

371:                                              ; preds = %368
  %372 = load %struct.TYPE_41__*, %struct.TYPE_41__** %6, align 8
  %373 = call i32 @ngx_http_lua_close_fake_connection(%struct.TYPE_41__* %372)
  br label %383

374:                                              ; preds = %368
  %375 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %11, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = call i32 @ngx_destroy_pool(i64 %380)
  br label %382

382:                                              ; preds = %378, %374
  br label %383

383:                                              ; preds = %330, %382, %371
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_49__*, i32, i32) #1

declare dso_local i32 @ngx_free(%struct.TYPE_40__*) #1

declare dso_local i64 @ngx_http_lua_timer_copy(%struct.TYPE_49__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_41__* @ngx_http_lua_create_fake_connection(i64) #1

declare dso_local %struct.TYPE_48__* @ngx_http_lua_create_fake_request(%struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_52__* @ngx_http_get_module_loc_conf(%struct.TYPE_48__*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local %struct.TYPE_51__* @ngx_http_lua_create_ctx(%struct.TYPE_48__*) #1

declare dso_local %struct.TYPE_47__* @ngx_pool_cleanup_add(i32, i32) #1

declare dso_local i32 @ngx_http_lua_cleanup_vm(i64) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_48__*, %struct.TYPE_51__*) #1

declare dso_local %struct.TYPE_53__* @ngx_http_cleanup_add(%struct.TYPE_48__*, i32) #1

declare dso_local i32 @ngx_http_lua_set_req(i32, %struct.TYPE_48__*) #1

declare dso_local i32 @lua_pushboolean(i32, i32) #1

declare dso_local i32 @lua_gettop(i32) #1

declare dso_local i32 @lua_insert(i32, i32) #1

declare dso_local i64 @ngx_http_lua_run_thread(i32*, %struct.TYPE_48__*, %struct.TYPE_51__*, i32) #1

declare dso_local i64 @ngx_http_lua_content_run_posted_threads(i32*, %struct.TYPE_48__*, %struct.TYPE_51__*, i32) #1

declare dso_local i32 @ngx_http_lua_finalize_request(%struct.TYPE_48__*, i64) #1

declare dso_local i32 @lua_pushlightuserdata(i32, i32) #1

declare dso_local i32 @ngx_http_lua_lightudata_mask(i32) #1

declare dso_local i32 @lua_rawget(i32, i32) #1

declare dso_local i32 @luaL_unref(i32, i32, i64) #1

declare dso_local i32 @lua_settop(i32, i32) #1

declare dso_local i32 @ngx_http_lua_close_fake_connection(%struct.TYPE_41__*) #1

declare dso_local i32 @ngx_destroy_pool(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
