; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_semaphore.c_ngx_http_lua_ffi_sema_new.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_semaphore.c_ngx_http_lua_ffi_sema_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"http lua semaphore new: %p, resources: %d\00", align 1
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_lua_ffi_sema_new(%struct.TYPE_6__** %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = call %struct.TYPE_6__* (...) @ngx_http_lua_alloc_sema()
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load i32, i32* @NGX_ERROR, align 4
  store i32 %14, i32* %4, align 4
  br label %36

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = call i32 @ngx_queue_init(i32* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %25, align 8
  %26 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ngx_cycle, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ngx_log_debug2(i32 %26, i32 %29, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %30, i32 %33)
  %35 = load i32, i32* @NGX_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %15, %12
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_6__* @ngx_http_lua_alloc_sema(...) #1

declare dso_local i32 @ngx_queue_init(i32*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
