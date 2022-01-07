; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_poll_module.c_ngx_poll_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_poll_module.c_ngx_poll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@event_list = common dso_local global %struct.pollfd* null, align 8
@nevents = common dso_local global i32 0, align 4
@ngx_process = common dso_local global i64 0, align 8
@NGX_PROCESS_WORKER = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_os_io = common dso_local global i32 0, align 4
@ngx_io = common dso_local global i32 0, align 4
@ngx_poll_module_ctx = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@ngx_event_actions = common dso_local global i32 0, align 4
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_USE_FD_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @ngx_poll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_poll_init(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pollfd*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pollfd*, %struct.pollfd** @event_list, align 8
  %8 = icmp eq %struct.pollfd* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* @nevents, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i64, i64* @ngx_process, align 8
  %12 = load i64, i64* @NGX_PROCESS_WORKER, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %19, %14, %10
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.pollfd* @ngx_alloc(i32 %35, i32 %38)
  store %struct.pollfd* %39, %struct.pollfd** %6, align 8
  %40 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  %41 = icmp eq %struct.pollfd* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @NGX_ERROR, align 4
  store i32 %43, i32* %3, align 4
  br label %66

44:                                               ; preds = %29
  %45 = load %struct.pollfd*, %struct.pollfd** @event_list, align 8
  %46 = icmp ne %struct.pollfd* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  %49 = load %struct.pollfd*, %struct.pollfd** @event_list, align 8
  %50 = load i32, i32* @nevents, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @ngx_memcpy(%struct.pollfd* %48, %struct.pollfd* %49, i32 %53)
  %55 = load %struct.pollfd*, %struct.pollfd** @event_list, align 8
  %56 = call i32 @ngx_free(%struct.pollfd* %55)
  br label %57

57:                                               ; preds = %47, %44
  %58 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  store %struct.pollfd* %58, %struct.pollfd** @event_list, align 8
  br label %59

59:                                               ; preds = %57, %19
  %60 = load i32, i32* @ngx_os_io, align 4
  store i32 %60, i32* @ngx_io, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ngx_poll_module_ctx, i32 0, i32 0), align 4
  store i32 %61, i32* @ngx_event_actions, align 4
  %62 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %63 = load i32, i32* @NGX_USE_FD_EVENT, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* @ngx_event_flags, align 4
  %65 = load i32, i32* @NGX_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %42
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.pollfd* @ngx_alloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(%struct.pollfd*, %struct.pollfd*, i32) #1

declare dso_local i32 @ngx_free(%struct.pollfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
