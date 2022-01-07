; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_channel.c_ngx_add_channel_event.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_channel.c_ngx_add_channel_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_READ_EVENT = common dso_local global i64 0, align 8
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_EPOLL_EVENT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_add_channel_event(%struct.TYPE_10__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_11__* @ngx_get_connection(i32 %14, i32 %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %13, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %20 = icmp eq %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @NGX_ERROR, align 8
  store i64 %22, i64* %5, align 8
  br label %89

23:                                               ; preds = %4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %11, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %12, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @NGX_READ_EVENT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %23
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  br label %56

54:                                               ; preds = %23
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi %struct.TYPE_9__* [ %53, %52 ], [ %55, %54 ]
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %10, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br i1 true, label %61, label %76

61:                                               ; preds = %56
  %62 = load i32, i32* @ngx_event_flags, align 4
  %63 = load i32, i32* @NGX_USE_EPOLL_EVENT, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %68 = call i64 @ngx_add_conn(%struct.TYPE_11__* %67)
  %69 = load i64, i64* @NGX_ERROR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %73 = call i32 @ngx_free_connection(%struct.TYPE_11__* %72)
  %74 = load i64, i64* @NGX_ERROR, align 8
  store i64 %74, i64* %5, align 8
  br label %89

75:                                               ; preds = %66
  br label %87

76:                                               ; preds = %61, %56
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @ngx_add_event(%struct.TYPE_9__* %77, i64 %78, i32 0)
  %80 = load i64, i64* @NGX_ERROR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %84 = call i32 @ngx_free_connection(%struct.TYPE_11__* %83)
  %85 = load i64, i64* @NGX_ERROR, align 8
  store i64 %85, i64* %5, align 8
  br label %89

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %75
  %88 = load i64, i64* @NGX_OK, align 8
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %87, %82, %71, %21
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local %struct.TYPE_11__* @ngx_get_connection(i32, i32) #1

declare dso_local i64 @ngx_add_conn(%struct.TYPE_11__*) #1

declare dso_local i32 @ngx_free_connection(%struct.TYPE_11__*) #1

declare dso_local i64 @ngx_add_event(%struct.TYPE_9__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
