; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_semaphore.c_ngx_http_lua_sema_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_semaphore.c_ngx_http_lua_sema_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_13__*)*, i64, %struct.TYPE_16__* }

@.str = private unnamed_addr constant [51 x i8] c"ngx_http_lua_sema_timeout_handler timeout coctx:%p\00", align 1
@ngx_http_lua_module = common dso_local global i32 0, align 4
@SEMAPHORE_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @ngx_http_lua_sema_timeout_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_lua_sema_timeout_handler(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 4
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = call i32 @dd(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %7, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = call i32 @ngx_queue_remove(i32* %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_13__* @ngx_http_lua_get_req(i32 %27)
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %4, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %6, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = load i32, i32* @ngx_http_lua_module, align 4
  %34 = call %struct.TYPE_15__* @ngx_http_get_module_ctx(%struct.TYPE_13__* %32, i32 %33)
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %5, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = icmp ne %struct.TYPE_15__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @ngx_http_lua_assert(i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %41, align 8
  %42 = load i32, i32* @SEMAPHORE_WAIT_TIMEOUT, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %1
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = call i32 @ngx_http_lua_sema_resume(%struct.TYPE_13__* %50)
  br label %57

52:                                               ; preds = %1
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  store i32 (%struct.TYPE_13__*)* @ngx_http_lua_sema_resume, i32 (%struct.TYPE_13__*)** %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = call i32 @ngx_http_core_run_phases(%struct.TYPE_13__* %55)
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @ngx_http_run_posted_requests(i32* %58)
  ret void
}

declare dso_local i32 @dd(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local %struct.TYPE_13__* @ngx_http_lua_get_req(i32) #1

declare dso_local %struct.TYPE_15__* @ngx_http_get_module_ctx(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ngx_http_lua_assert(i32) #1

declare dso_local i32 @ngx_http_lua_sema_resume(%struct.TYPE_13__*) #1

declare dso_local i32 @ngx_http_core_run_phases(%struct.TYPE_13__*) #1

declare dso_local i32 @ngx_http_run_posted_requests(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
