; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_varlink.c_varlink_server_socket_destroy.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_varlink.c_varlink_server_socket_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@sockets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*)* @varlink_server_socket_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @varlink_server_socket_destroy(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %5 = icmp ne %struct.TYPE_9__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %36

7:                                                ; preds = %1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load i32, i32* @sockets, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = call i32 @LIST_REMOVE(i32 %13, i32 %18, %struct.TYPE_9__* %19)
  br label %21

21:                                               ; preds = %12, %7
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @sd_event_source_disable_unref(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @free(i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @safe_close(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = call %struct.TYPE_9__* @mfree(%struct.TYPE_9__* %34)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %2, align 8
  br label %36

36:                                               ; preds = %21, %6
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %37
}

declare dso_local i32 @LIST_REMOVE(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @sd_event_source_disable_unref(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local %struct.TYPE_9__* @mfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
