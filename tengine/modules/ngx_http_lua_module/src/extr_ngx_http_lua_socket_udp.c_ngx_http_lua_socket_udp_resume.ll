; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_udp_resume.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_socket_udp.c_ngx_http_lua_socket_udp_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i32)* }

@ngx_http_lua_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_http_lua_wev_handler = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"lua udp operation done, resuming lua thread\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"lua udp socket calling prepare retvals handler %p, u:%p\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"lua run thread returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @ngx_http_lua_socket_udp_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_socket_udp_resume(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = load i32, i32* @ngx_http_lua_module, align 4
  %14 = call %struct.TYPE_24__* @ngx_http_get_module_ctx(%struct.TYPE_22__* %12, i32 %13)
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %9, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %16 = icmp eq %struct.TYPE_24__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @NGX_ERROR, align 4
  store i32 %18, i32* %2, align 4
  br label %122

19:                                               ; preds = %1
  %20 = load i32, i32* @ngx_http_lua_wev_handler, align 4
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ngx_log_debug0(i32 %23, i32 %28, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  store %struct.TYPE_25__* %32, %struct.TYPE_25__** %10, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %11, align 8
  %36 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i32)** %43, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %46 = call i32 @ngx_log_debug2(i32 %36, i32 %41, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i32)* %44, %struct.TYPE_23__* %45)
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i32)** %48, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %49(%struct.TYPE_22__* %50, %struct.TYPE_23__* %51, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @NGX_AGAIN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %19
  %62 = load i32, i32* @NGX_DONE, align 4
  store i32 %62, i32* %2, align 4
  br label %122

63:                                               ; preds = %19
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %65, align 8
  store %struct.TYPE_26__* %66, %struct.TYPE_26__** %8, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %69 = call i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_22__* %67, %struct.TYPE_24__* %68)
  store i32* %69, i32** %5, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @ngx_http_lua_run_thread(i32* %73, %struct.TYPE_22__* %74, %struct.TYPE_24__* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @ngx_log_debug1(i32 %78, i32 %83, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @NGX_AGAIN, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %63
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @ngx_http_lua_run_posted_threads(%struct.TYPE_26__* %90, i32* %91, %struct.TYPE_22__* %92, %struct.TYPE_24__* %93, i32 %94)
  store i32 %95, i32* %2, align 4
  br label %122

96:                                               ; preds = %63
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @NGX_DONE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %102 = load i32, i32* @NGX_DONE, align 4
  %103 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_22__* %101, i32 %102)
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @ngx_http_lua_run_posted_threads(%struct.TYPE_26__* %104, i32* %105, %struct.TYPE_22__* %106, %struct.TYPE_24__* %107, i32 %108)
  store i32 %109, i32* %2, align 4
  br label %122

110:                                              ; preds = %96
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @ngx_http_lua_finalize_request(%struct.TYPE_22__* %116, i32 %117)
  %119 = load i32, i32* @NGX_DONE, align 4
  store i32 %119, i32* %2, align 4
  br label %122

120:                                              ; preds = %110
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %115, %100, %89, %61, %17
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_ctx(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, i32)*, %struct.TYPE_23__*) #1

declare dso_local i32* @ngx_http_lua_get_lua_vm(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ngx_http_lua_run_thread(i32*, %struct.TYPE_22__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_http_lua_run_posted_threads(%struct.TYPE_26__*, i32*, %struct.TYPE_22__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_http_lua_finalize_request(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
