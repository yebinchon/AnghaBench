; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_handle_new_output.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_handle_new_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_server = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_output = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.sway_output = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.sway_server* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.output_config = type { i64 }

@new_output = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"New output %p: %s\00", align 1
@handle_destroy = common dso_local global i32 0, align 4
@handle_mode = common dso_local global i32 0, align 4
@handle_transform = common dso_local global i32 0, align 4
@handle_scale = common dso_local global i32 0, align 4
@handle_present = common dso_local global i32 0, align 4
@damage_handle_frame = common dso_local global i32 0, align 4
@damage_handle_destroy = common dso_local global i32 0, align 4
@server = common dso_local global %struct.sway_server* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_new_output(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_server*, align 8
  %6 = alloca %struct.wlr_output*, align 8
  %7 = alloca %struct.sway_output*, align 8
  %8 = alloca %struct.output_config*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %10 = load %struct.sway_server*, %struct.sway_server** %5, align 8
  %11 = ptrtoint %struct.sway_server* %10 to i32
  %12 = load i32, i32* @new_output, align 4
  %13 = call %struct.sway_server* @wl_container_of(%struct.wl_listener* %9, i32 %11, i32 %12)
  store %struct.sway_server* %13, %struct.sway_server** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.wlr_output*
  store %struct.wlr_output* %15, %struct.wlr_output** %6, align 8
  %16 = load i32, i32* @SWAY_DEBUG, align 4
  %17 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %18 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %19 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sway_log(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.wlr_output* %17, i32 %20)
  %22 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %23 = call %struct.sway_output* @output_create(%struct.wlr_output* %22)
  store %struct.sway_output* %23, %struct.sway_output** %7, align 8
  %24 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %25 = icmp ne %struct.sway_output* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %131

27:                                               ; preds = %2
  %28 = load %struct.sway_server*, %struct.sway_server** %5, align 8
  %29 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %30 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %29, i32 0, i32 9
  store %struct.sway_server* %28, %struct.sway_server** %30, align 8
  %31 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %32 = call %struct.TYPE_7__* @wlr_output_damage_create(%struct.wlr_output* %31)
  %33 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %34 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %33, i32 0, i32 2
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %36 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %39 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %38, i32 0, i32 8
  %40 = call i32 @wl_signal_add(i32* %37, %struct.TYPE_8__* %39)
  %41 = load i32, i32* @handle_destroy, align 4
  %42 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %43 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %46 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %49 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %48, i32 0, i32 7
  %50 = call i32 @wl_signal_add(i32* %47, %struct.TYPE_8__* %49)
  %51 = load i32, i32* @handle_mode, align 4
  %52 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %53 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %56 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %59 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %58, i32 0, i32 6
  %60 = call i32 @wl_signal_add(i32* %57, %struct.TYPE_8__* %59)
  %61 = load i32, i32* @handle_transform, align 4
  %62 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %63 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %66 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %69 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %68, i32 0, i32 5
  %70 = call i32 @wl_signal_add(i32* %67, %struct.TYPE_8__* %69)
  %71 = load i32, i32* @handle_scale, align 4
  %72 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %73 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.wlr_output*, %struct.wlr_output** %6, align 8
  %76 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %79 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %78, i32 0, i32 4
  %80 = call i32 @wl_signal_add(i32* %77, %struct.TYPE_8__* %79)
  %81 = load i32, i32* @handle_present, align 4
  %82 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %83 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  %85 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %86 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %91 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %90, i32 0, i32 3
  %92 = call i32 @wl_signal_add(i32* %89, %struct.TYPE_8__* %91)
  %93 = load i32, i32* @damage_handle_frame, align 4
  %94 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %95 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %98 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %103 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %102, i32 0, i32 1
  %104 = call i32 @wl_signal_add(i32* %101, %struct.TYPE_8__* %103)
  %105 = load i32, i32* @damage_handle_destroy, align 4
  %106 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %107 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %110 = call %struct.output_config* @find_output_config(%struct.sway_output* %109)
  store %struct.output_config* %110, %struct.output_config** %8, align 8
  %111 = load %struct.output_config*, %struct.output_config** %8, align 8
  %112 = icmp ne %struct.output_config* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %27
  %114 = load %struct.output_config*, %struct.output_config** %8, align 8
  %115 = getelementptr inbounds %struct.output_config, %struct.output_config* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113, %27
  %119 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %120 = load %struct.output_config*, %struct.output_config** %8, align 8
  %121 = call i32 @output_enable(%struct.sway_output* %119, %struct.output_config* %120)
  br label %127

122:                                              ; preds = %113
  %123 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %124 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @wlr_output_enable(i32 %125, i32 0)
  br label %127

127:                                              ; preds = %122, %118
  %128 = call i32 (...) @transaction_commit_dirty()
  %129 = load %struct.sway_server*, %struct.sway_server** %5, align 8
  %130 = call i32 @update_output_manager_config(%struct.sway_server* %129)
  br label %131

131:                                              ; preds = %127, %26
  ret void
}

declare dso_local %struct.sway_server* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*, %struct.wlr_output*, i32) #1

declare dso_local %struct.sway_output* @output_create(%struct.wlr_output*) #1

declare dso_local %struct.TYPE_7__* @wlr_output_damage_create(%struct.wlr_output*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_8__*) #1

declare dso_local %struct.output_config* @find_output_config(%struct.sway_output*) #1

declare dso_local i32 @output_enable(%struct.sway_output*, %struct.output_config*) #1

declare dso_local i32 @wlr_output_enable(i32, i32) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

declare dso_local i32 @update_output_manager_config(%struct.sway_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
