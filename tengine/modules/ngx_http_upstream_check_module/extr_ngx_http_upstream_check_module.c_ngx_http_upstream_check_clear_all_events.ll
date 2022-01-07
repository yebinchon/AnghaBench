; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_clear_all_events.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_clear_all_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@ngx_http_upstream_check_clear_all_events.has_cleared = internal global i32 0, align 4
@check_peers_ctx = common dso_local global %struct.TYPE_8__* null, align 8
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"clear all the events on %P \00", align 1
@ngx_pid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ngx_http_upstream_check_clear_all_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_check_clear_all_events() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = load i32, i32* @ngx_http_upstream_check_clear_all_events.has_cleared, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @check_peers_ctx, align 8
  %8 = icmp eq %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %0
  br label %45

10:                                               ; preds = %6
  %11 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ngx_cycle, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ngx_pid, align 4
  %16 = call i32 @ngx_log_error(i32 %11, i32 %14, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 1, i32* @ngx_http_upstream_check_clear_all_events.has_cleared, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @check_peers_ctx, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %3, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %2, align 8
  store i64 0, i64* %1, align 8
  br label %22

22:                                               ; preds = %42, %10
  %23 = load i64, i64* %1, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %23, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = load i64, i64* %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %42

37:                                               ; preds = %29
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = load i64, i64* %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %39
  %41 = call i32 @ngx_http_upstream_check_clear_peer(%struct.TYPE_9__* %40)
  br label %42

42:                                               ; preds = %37, %36
  %43 = load i64, i64* %1, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %1, align 8
  br label %22

45:                                               ; preds = %9, %22
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_http_upstream_check_clear_peer(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
