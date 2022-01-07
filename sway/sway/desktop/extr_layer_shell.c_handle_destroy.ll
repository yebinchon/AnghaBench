; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_handle_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_handle_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_layer_surface = type { %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i64, i32 }
%struct.TYPE_15__ = type { %struct.sway_output* }
%struct.sway_output = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.wl_listener = type { i32 }

@destroy = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Layer surface destroyed (%s)\00", align 1
@sway_layer = common dso_local global %struct.sway_layer_surface* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_destroy(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_layer_surface*, align 8
  %6 = alloca %struct.sway_output*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %9 = ptrtoint %struct.sway_layer_surface* %8 to i32
  %10 = load i32, i32* @destroy, align 4
  %11 = call %struct.sway_layer_surface* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_layer_surface* %11, %struct.sway_layer_surface** %5, align 8
  %12 = load i32, i32* @SWAY_DEBUG, align 4
  %13 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %14 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sway_log(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %20 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %19, i32 0, i32 0
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %27 = call i32 @unmap(%struct.sway_layer_surface* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %30 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %29, i32 0, i32 7
  %31 = call i32 @wl_list_remove(i32* %30)
  %32 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %33 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = call i32 @wl_list_remove(i32* %34)
  %36 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %37 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = call i32 @wl_list_remove(i32* %38)
  %40 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %41 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = call i32 @wl_list_remove(i32* %42)
  %44 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %45 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = call i32 @wl_list_remove(i32* %46)
  %48 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %49 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = call i32 @wl_list_remove(i32* %50)
  %52 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %53 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = icmp ne %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %81

58:                                               ; preds = %28
  %59 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %60 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.sway_output*, %struct.sway_output** %64, align 8
  store %struct.sway_output* %65, %struct.sway_output** %6, align 8
  %66 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %67 = icmp ne %struct.sway_output* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %70 = call i32 @arrange_layers(%struct.sway_output* %69)
  %71 = call i32 (...) @transaction_commit_dirty()
  br label %72

72:                                               ; preds = %68, %58
  %73 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %74 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = call i32 @wl_list_remove(i32* %75)
  %77 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %78 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %80, align 8
  br label %81

81:                                               ; preds = %72, %28
  %82 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %5, align 8
  %83 = call i32 @free(%struct.sway_layer_surface* %82)
  ret void
}

declare dso_local %struct.sway_layer_surface* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @unmap(%struct.sway_layer_surface*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @arrange_layers(%struct.sway_output*) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

declare dso_local i32 @free(%struct.sway_layer_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
