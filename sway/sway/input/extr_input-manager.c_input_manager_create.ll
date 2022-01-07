; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_input_manager_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_input_manager_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_input_manager = type { %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_12__*, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.sway_server = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@handle_new_input = common dso_local global i32 0, align 4
@handle_virtual_keyboard = common dso_local global i32 0, align 4
@handle_inhibit_activate = common dso_local global i32 0, align 4
@handle_inhibit_deactivate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_input_manager* @input_manager_create(%struct.sway_server* %0) #0 {
  %2 = alloca %struct.sway_input_manager*, align 8
  %3 = alloca %struct.sway_server*, align 8
  %4 = alloca %struct.sway_input_manager*, align 8
  store %struct.sway_server* %0, %struct.sway_server** %3, align 8
  %5 = call %struct.sway_input_manager* @calloc(i32 1, i32 48)
  store %struct.sway_input_manager* %5, %struct.sway_input_manager** %4, align 8
  %6 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %7 = icmp ne %struct.sway_input_manager* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.sway_input_manager* null, %struct.sway_input_manager** %2, align 8
  br label %77

9:                                                ; preds = %1
  %10 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %11 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %10, i32 0, i32 7
  %12 = call i32 @wl_list_init(i32* %11)
  %13 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %14 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %13, i32 0, i32 6
  %15 = call i32 @wl_list_init(i32* %14)
  %16 = load i32, i32* @handle_new_input, align 4
  %17 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %18 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.sway_server*, %struct.sway_server** %3, align 8
  %21 = getelementptr inbounds %struct.sway_server, %struct.sway_server* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %26 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %25, i32 0, i32 5
  %27 = call i32 @wl_signal_add(i32* %24, %struct.TYPE_14__* %26)
  %28 = load %struct.sway_server*, %struct.sway_server** %3, align 8
  %29 = getelementptr inbounds %struct.sway_server, %struct.sway_server* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_12__* @wlr_virtual_keyboard_manager_v1_create(i32 %30)
  %32 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %33 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %32, i32 0, i32 4
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %33, align 8
  %34 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %35 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %34, i32 0, i32 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %40 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %39, i32 0, i32 3
  %41 = call i32 @wl_signal_add(i32* %38, %struct.TYPE_14__* %40)
  %42 = load i32, i32* @handle_virtual_keyboard, align 4
  %43 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %44 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.sway_server*, %struct.sway_server** %3, align 8
  %47 = getelementptr inbounds %struct.sway_server, %struct.sway_server* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_13__* @wlr_input_inhibit_manager_create(i32 %48)
  %50 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %51 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %50, i32 0, i32 1
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %51, align 8
  %52 = load i32, i32* @handle_inhibit_activate, align 4
  %53 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %54 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %57 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %56, i32 0, i32 1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %62 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %61, i32 0, i32 2
  %63 = call i32 @wl_signal_add(i32* %60, %struct.TYPE_14__* %62)
  %64 = load i32, i32* @handle_inhibit_deactivate, align 4
  %65 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %66 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %69 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %68, i32 0, i32 1
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  %74 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %73, i32 0, i32 0
  %75 = call i32 @wl_signal_add(i32* %72, %struct.TYPE_14__* %74)
  %76 = load %struct.sway_input_manager*, %struct.sway_input_manager** %4, align 8
  store %struct.sway_input_manager* %76, %struct.sway_input_manager** %2, align 8
  br label %77

77:                                               ; preds = %9, %8
  %78 = load %struct.sway_input_manager*, %struct.sway_input_manager** %2, align 8
  ret %struct.sway_input_manager* %78
}

declare dso_local %struct.sway_input_manager* @calloc(i32, i32) #1

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_12__* @wlr_virtual_keyboard_manager_v1_create(i32) #1

declare dso_local %struct.TYPE_13__* @wlr_input_inhibit_manager_create(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
