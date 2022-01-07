; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_resume_helper.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_tcp.c_ngx_http_lua_socket_tcp_resume_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_29__*, i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)*, %struct.TYPE_25__*, i32, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { i32 }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_http_lua_wev_handler = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"lua tcp operation done, resuming lua thread\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"coctx: %p\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"lua tcp socket calling prepare retvals handler %p, u:%p\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"lua run thread returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i32)* @ngx_http_lua_socket_tcp_resume_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_tcp_resume_helper(%struct.TYPE_26__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %17 = load i32, i32* @ngx_http_lua_module, align 4
  %18 = call %struct.TYPE_28__* @ngx_http_get_module_ctx(%struct.TYPE_26__* %16, i32 %17)
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %11, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %20 = icmp eq %struct.TYPE_28__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @NGX_ERROR, align 4
  store i32 %22, i32* %3, align 4
  br label %176

23:                                               ; preds = %2
  %24 = load i32, i32* @ngx_http_lua_wev_handler, align 4
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ngx_log_debug0(i32 %27, i32 %32, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %35, align 8
  store %struct.TYPE_29__* %36, %struct.TYPE_29__** %12, align 8
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %38 = call i32 @dd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_29__* %37)
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %64 [
    i32 129, label %40
    i32 131, label %50
    i32 128, label %50
    i32 130, label %57
  ]

40:                                               ; preds = %23
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %42, align 8
  store %struct.TYPE_27__* %43, %struct.TYPE_27__** %13, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %45, align 8
  store %struct.TYPE_27__* %46, %struct.TYPE_27__** %15, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)** %48, align 8
  store i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)* %49, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)** %14, align 8
  br label %66

50:                                               ; preds = %23, %23
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %52, align 8
  store %struct.TYPE_27__* %53, %struct.TYPE_27__** %15, align 8
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  %56 = load i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)** %55, align 8
  store i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)* %56, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)** %14, align 8
  br label %66

57:                                               ; preds = %23
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %59, align 8
  store %struct.TYPE_27__* %60, %struct.TYPE_27__** %15, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)** %62, align 8
  store i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)* %63, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)** %14, align 8
  br label %66

64:                                               ; preds = %23
  %65 = load i32, i32* @NGX_ERROR, align 4
  store i32 %65, i32* %3, align 4
  br label %176

66:                                               ; preds = %57, %50, %40
  %67 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)** %14, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %75 = call i32 @ngx_log_debug2(i32 %67, i32 %72, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)* %73, %struct.TYPE_27__* %74)
  %76 = load i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)*, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)** %14, align 8
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %76(%struct.TYPE_26__* %77, %struct.TYPE_27__* %78, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 131
  br i1 %86, label %87, label %111

87:                                               ; preds = %66
  %88 = load i32, i32* %6, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %97, align 8
  %99 = icmp ne %struct.TYPE_25__* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %108, align 8
  %110 = call i32 @ngx_http_lua_socket_tcp_resume_conn_op(%struct.TYPE_25__* %109)
  br label %111

111:                                              ; preds = %100, %95, %90, %87, %66
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @NGX_AGAIN, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @NGX_DONE, align 4
  store i32 %116, i32* %3, align 4
  br label %176

117:                                              ; preds = %111
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %119, align 8
  store %struct.TYPE_30__* %120, %struct.TYPE_30__** %10, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %123 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_26__* %121, %struct.TYPE_28__* %122)
  store i32* %123, i32** %7, align 8
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %9, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @ngx_http_lua_run_thread(i32* %127, %struct.TYPE_26__* %128, %struct.TYPE_28__* %129, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @ngx_log_debug1(i32 %132, i32 %137, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @NGX_AGAIN, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %117
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @ngx_http_lua_run_posted_threads(%struct.TYPE_30__* %144, i32* %145, %struct.TYPE_26__* %146, %struct.TYPE_28__* %147, i32 %148)
  store i32 %149, i32* %3, align 4
  br label %176

150:                                              ; preds = %117
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @NGX_DONE, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %150
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %156 = load i32, i32* @NGX_DONE, align 4
  %157 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_26__* %155, i32 %156)
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @ngx_http_lua_run_posted_threads(%struct.TYPE_30__* %158, i32* %159, %struct.TYPE_26__* %160, %struct.TYPE_28__* %161, i32 %162)
  store i32 %163, i32* %3, align 4
  br label %176

164:                                              ; preds = %150
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_26__* %170, i32 %171)
  %173 = load i32, i32* @NGX_DONE, align 4
  store i32 %173, i32* %3, align 4
  br label %176

174:                                              ; preds = %164
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %169, %154, %143, %115, %64, %21
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.TYPE_28__* @ngx_http_get_module_ctx(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @dd(i8*, %struct.TYPE_29__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, i32)*, %struct.TYPE_27__*) #1

declare dso_local i32 @ngx_http_lua_socket_tcp_resume_conn_op(%struct.TYPE_25__*) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @ngx_http_lua_run_thread(i32*, %struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_http_lua_run_posted_threads(%struct.TYPE_30__*, i32*, %struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_http_lua_finalize_request(%struct.TYPE_26__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
