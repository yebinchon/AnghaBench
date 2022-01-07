; ModuleID = '/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_timer.c_ngx_event_find_timer.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_timer.c_ngx_event_find_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@ngx_event_timer_rbtree = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ngx_event_timer_sentinel = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@NGX_TIMER_INFINITE = common dso_local global i32 0, align 4
@ngx_current_msec = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_event_find_timer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ngx_event_timer_rbtree, i32 0, i32 1), align 8
  %7 = icmp eq %struct.TYPE_7__* %6, @ngx_event_timer_sentinel
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  store i32 %9, i32* %1, align 4
  br label %29

10:                                               ; preds = %0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ngx_event_timer_rbtree, i32 0, i32 1), align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ngx_event_timer_rbtree, i32 0, i32 0), align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = call %struct.TYPE_7__* @ngx_rbtree_min(%struct.TYPE_7__* %13, %struct.TYPE_7__* %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %3, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ngx_current_msec, align 8
  %20 = sub nsw i64 %18, %19
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %10
  %24 = load i64, i64* %2, align 8
  br label %26

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i64 [ %24, %23 ], [ 0, %25 ]
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %26, %8
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local %struct.TYPE_7__* @ngx_rbtree_min(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
