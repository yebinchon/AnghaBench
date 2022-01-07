; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_handle_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_handle_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i64, %struct.TYPE_9__, %struct.sway_server* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sway_server = type { i32 }
%struct.wl_listener = type { i32 }

@destroy = common dso_local global i32 0, align 4
@output = common dso_local global %struct.sway_output* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_destroy(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca %struct.sway_server*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %9 = ptrtoint %struct.sway_output* %8 to i32
  %10 = load i32, i32* @destroy, align 4
  %11 = call %struct.sway_output* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_output* %11, %struct.sway_output** %5, align 8
  %12 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %13 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %12, i32 0, i32 9
  %14 = load %struct.sway_server*, %struct.sway_server** %13, align 8
  store %struct.sway_server* %14, %struct.sway_server** %6, align 8
  %15 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %16 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %19 = call i32 @wl_signal_emit(i32* %17, %struct.sway_output* %18)
  %20 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %21 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %26 = call i32 @output_disable(%struct.sway_output* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %29 = call i32 @output_begin_destroy(%struct.sway_output* %28)
  %30 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %31 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = call i32 @wl_list_remove(i32* %32)
  %34 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %35 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = call i32 @wl_list_remove(i32* %36)
  %38 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %39 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = call i32 @wl_list_remove(i32* %40)
  %42 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %43 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = call i32 @wl_list_remove(i32* %44)
  %46 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %47 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = call i32 @wl_list_remove(i32* %48)
  %50 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %51 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = call i32 @wl_list_remove(i32* %52)
  %54 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %55 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = call i32 @wl_list_remove(i32* %56)
  %58 = call i32 (...) @transaction_commit_dirty()
  %59 = load %struct.sway_server*, %struct.sway_server** %6, align 8
  %60 = call i32 @update_output_manager_config(%struct.sway_server* %59)
  ret void
}

declare dso_local %struct.sway_output* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wl_signal_emit(i32*, %struct.sway_output*) #1

declare dso_local i32 @output_disable(%struct.sway_output*) #1

declare dso_local i32 @output_begin_destroy(%struct.sway_output*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

declare dso_local i32 @update_output_manager_config(%struct.sway_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
