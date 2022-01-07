; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_semaphore.c_ngx_http_lua_ffi_sema_gc.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_semaphore.c_ngx_http_lua_ffi_sema_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"in lua gc, semaphore %p\00", align 1
@ngx_terminate = common dso_local global i32 0, align 4
@ngx_quit = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"in lua semaphore gc wait queue is not empty while the semaphore %p is being destroyed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_ffi_sema_gc(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ngx_cycle, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = call i32 @ngx_log_debug1(i32 %3, i32 %6, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = icmp eq %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* @ngx_terminate, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @ngx_quit, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @ngx_queue_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @NGX_LOG_ERR, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ngx_cycle, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = call i32 @ngx_log_error(i32 %24, i32 %27, i32 0, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %28)
  br label %30

30:                                               ; preds = %23, %18, %15, %12
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = call i32 @ngx_http_lua_free_sema(%struct.TYPE_7__* %31)
  br label %33

33:                                               ; preds = %30, %11
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @ngx_queue_empty(i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @ngx_http_lua_free_sema(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
