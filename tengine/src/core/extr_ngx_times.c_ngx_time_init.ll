; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_times.c_ngx_time_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_times.c_ngx_time_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ngx_cached_err_log_time = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@ngx_cached_http_time = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@ngx_cached_http_log_time = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ngx_cached_http_log_iso8601 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@ngx_cached_syslog_time = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@cached_time = common dso_local global i32* null, align 8
@ngx_cached_time = common dso_local global i32* null, align 8
@cached_http_log_tm = common dso_local global i32* null, align 8
@ngx_cached_tm = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_time_init() #0 {
  store i32 19, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ngx_cached_err_log_time, i32 0, i32 0), align 4
  store i32 29, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ngx_cached_http_time, i32 0, i32 0), align 4
  store i32 26, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ngx_cached_http_log_time, i32 0, i32 0), align 4
  store i32 25, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ngx_cached_http_log_iso8601, i32 0, i32 0), align 4
  store i32 15, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ngx_cached_syslog_time, i32 0, i32 0), align 4
  %1 = load i32*, i32** @cached_time, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 0
  store i32* %2, i32** @ngx_cached_time, align 8
  %3 = call i32 (...) @ngx_time_update()
  ret void
}

declare dso_local i32 @ngx_time_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
