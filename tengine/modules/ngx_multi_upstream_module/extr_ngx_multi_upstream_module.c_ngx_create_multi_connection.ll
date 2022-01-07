; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_multi_upstream_module.c_ngx_create_multi_connection.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_multi_upstream_module.c_ngx_create_multi_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }

@ngx_multi_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ngx_create_multi_connection(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_9__* @ngx_pcalloc(i32 %8, i32 24)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = icmp eq %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  %16 = call i32 @ngx_queue_init(i32* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = call i32 @ngx_queue_init(i32* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = call i32 @ngx_queue_init(i32* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = call i32 @ngx_queue_init(i32* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_8__* @ngx_pool_cleanup_add(i32 %31, i32 0)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %5, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = icmp eq %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %13
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %44

36:                                               ; preds = %13
  %37 = load i32, i32* @ngx_multi_cleanup, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %42, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %2, align 8
  br label %44

44:                                               ; preds = %36, %35, %12
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %45
}

declare dso_local %struct.TYPE_9__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_queue_init(i32*) #1

declare dso_local %struct.TYPE_8__* @ngx_pool_cleanup_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
