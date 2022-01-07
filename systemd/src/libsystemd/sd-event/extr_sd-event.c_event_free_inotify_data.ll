; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_sd-event.c_event_free_inotify_data.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_sd-event.c_event_free_inotify_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.inotify_data = type { i64, i64, i32, i32, i32 }

@buffered = common dso_local global i32 0, align 4
@EPOLL_CTL_DEL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to remove inotify fd from epoll, ignoring: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.inotify_data*)* @event_free_inotify_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_free_inotify_data(%struct.TYPE_5__* %0, %struct.inotify_data* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.inotify_data*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.inotify_data* %1, %struct.inotify_data** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_5__* %5)
  %7 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %8 = icmp ne %struct.inotify_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %76

10:                                               ; preds = %2
  %11 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %12 = getelementptr inbounds %struct.inotify_data, %struct.inotify_data* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_5__* @hashmap_isempty(i32 %13)
  %15 = call i32 @assert(%struct.TYPE_5__* %14)
  %16 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %17 = getelementptr inbounds %struct.inotify_data, %struct.inotify_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_5__* @hashmap_isempty(i32 %18)
  %20 = call i32 @assert(%struct.TYPE_5__* %19)
  %21 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %22 = getelementptr inbounds %struct.inotify_data, %struct.inotify_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %10
  %26 = load i32, i32* @buffered, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %31 = call i32 @LIST_REMOVE(i32 %26, i32 %29, %struct.inotify_data* %30)
  br label %32

32:                                               ; preds = %25, %10
  %33 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %34 = getelementptr inbounds %struct.inotify_data, %struct.inotify_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @hashmap_free(i32 %35)
  %37 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %38 = getelementptr inbounds %struct.inotify_data, %struct.inotify_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hashmap_free(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %45 = getelementptr inbounds %struct.inotify_data, %struct.inotify_data* %44, i32 0, i32 2
  %46 = call %struct.inotify_data* @hashmap_remove(i32 %43, i32* %45)
  %47 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %48 = icmp eq %struct.inotify_data* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert_se(i32 %49)
  %51 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %52 = getelementptr inbounds %struct.inotify_data, %struct.inotify_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %32
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EPOLL_CTL_DEL, align 4
  %60 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %61 = getelementptr inbounds %struct.inotify_data, %struct.inotify_data* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @epoll_ctl(i32 %58, i32 %59, i64 %62, i32* null)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @log_debug_errno(i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %55
  %69 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %70 = getelementptr inbounds %struct.inotify_data, %struct.inotify_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @safe_close(i64 %71)
  br label %73

73:                                               ; preds = %68, %32
  %74 = load %struct.inotify_data*, %struct.inotify_data** %4, align 8
  %75 = call i32 @free(%struct.inotify_data* %74)
  br label %76

76:                                               ; preds = %73, %9
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @hashmap_isempty(i32) #1

declare dso_local i32 @LIST_REMOVE(i32, i32, %struct.inotify_data*) #1

declare dso_local i32 @hashmap_free(i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local %struct.inotify_data* @hashmap_remove(i32, i32*) #1

declare dso_local i64 @epoll_ctl(i32, i32, i64, i32*) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @safe_close(i64) #1

declare dso_local i32 @free(%struct.inotify_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
