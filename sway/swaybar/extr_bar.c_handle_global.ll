; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_bar.c_handle_global.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_bar.c_handle_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.wl_registry = type { i32 }
%struct.swaybar = type { i32*, i8*, i8*, i32, i8* }
%struct.swaybar_seat = type { i32, i8*, i8*, %struct.swaybar* }
%struct.swaybar_output = type { i32, i32, i32, i32, i8*, i8*, %struct.swaybar* }

@wl_compositor_interface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@wl_seat_interface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate swaybar_seat\00", align 1
@seat_listener = common dso_local global i32 0, align 4
@wl_shm_interface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@wl_output_interface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@output_listener = common dso_local global i32 0, align 4
@zwlr_layer_shell_v1_interface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@zxdg_output_manager_v1_interface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_registry*, i8*, i8*, i8*)* @handle_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_global(i8* %0, %struct.wl_registry* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_registry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.swaybar*, align 8
  %12 = alloca %struct.swaybar_seat*, align 8
  %13 = alloca %struct.swaybar_output*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wl_registry* %1, %struct.wl_registry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.swaybar*
  store %struct.swaybar* %15, %struct.swaybar** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wl_compositor_interface, i32 0, i32 0), align 4
  %18 = call i64 @strcmp(i8* %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i8* @wl_registry_bind(%struct.wl_registry* %21, i8* %22, %struct.TYPE_8__* @wl_compositor_interface, i32 4)
  %24 = load %struct.swaybar*, %struct.swaybar** %11, align 8
  %25 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  br label %142

26:                                               ; preds = %5
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wl_seat_interface, i32 0, i32 0), align 4
  %29 = call i64 @strcmp(i8* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = call i8* @calloc(i32 1, i32 32)
  %33 = bitcast i8* %32 to %struct.swaybar_seat*
  store %struct.swaybar_seat* %33, %struct.swaybar_seat** %12, align 8
  %34 = load %struct.swaybar_seat*, %struct.swaybar_seat** %12, align 8
  %35 = icmp ne %struct.swaybar_seat* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = call i32 @sway_abort(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %142

38:                                               ; preds = %31
  %39 = load %struct.swaybar*, %struct.swaybar** %11, align 8
  %40 = load %struct.swaybar_seat*, %struct.swaybar_seat** %12, align 8
  %41 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %40, i32 0, i32 3
  store %struct.swaybar* %39, %struct.swaybar** %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.swaybar_seat*, %struct.swaybar_seat** %12, align 8
  %44 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i8* @wl_registry_bind(%struct.wl_registry* %45, i8* %46, %struct.TYPE_8__* @wl_seat_interface, i32 3)
  %48 = load %struct.swaybar_seat*, %struct.swaybar_seat** %12, align 8
  %49 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.swaybar_seat*, %struct.swaybar_seat** %12, align 8
  %51 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.swaybar_seat*, %struct.swaybar_seat** %12, align 8
  %54 = call i32 @wl_seat_add_listener(i8* %52, i32* @seat_listener, %struct.swaybar_seat* %53)
  %55 = load %struct.swaybar*, %struct.swaybar** %11, align 8
  %56 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %55, i32 0, i32 3
  %57 = load %struct.swaybar_seat*, %struct.swaybar_seat** %12, align 8
  %58 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %57, i32 0, i32 0
  %59 = call i32 @wl_list_insert(i32* %56, i32* %58)
  br label %141

60:                                               ; preds = %26
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wl_shm_interface, i32 0, i32 0), align 4
  %63 = call i64 @strcmp(i8* %61, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i8* @wl_registry_bind(%struct.wl_registry* %66, i8* %67, %struct.TYPE_8__* @wl_shm_interface, i32 1)
  %69 = load %struct.swaybar*, %struct.swaybar** %11, align 8
  %70 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %140

71:                                               ; preds = %60
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wl_output_interface, i32 0, i32 0), align 4
  %74 = call i64 @strcmp(i8* %72, i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %114

76:                                               ; preds = %71
  %77 = call i8* @calloc(i32 1, i32 40)
  %78 = bitcast i8* %77 to %struct.swaybar_output*
  store %struct.swaybar_output* %78, %struct.swaybar_output** %13, align 8
  %79 = load %struct.swaybar*, %struct.swaybar** %11, align 8
  %80 = load %struct.swaybar_output*, %struct.swaybar_output** %13, align 8
  %81 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %80, i32 0, i32 6
  store %struct.swaybar* %79, %struct.swaybar** %81, align 8
  %82 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i8* @wl_registry_bind(%struct.wl_registry* %82, i8* %83, %struct.TYPE_8__* @wl_output_interface, i32 3)
  %85 = load %struct.swaybar_output*, %struct.swaybar_output** %13, align 8
  %86 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load %struct.swaybar_output*, %struct.swaybar_output** %13, align 8
  %88 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %87, i32 0, i32 5
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.swaybar_output*, %struct.swaybar_output** %13, align 8
  %91 = call i32 @wl_output_add_listener(i8* %89, i32* @output_listener, %struct.swaybar_output* %90)
  %92 = load %struct.swaybar_output*, %struct.swaybar_output** %13, align 8
  %93 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load %struct.swaybar_output*, %struct.swaybar_output** %13, align 8
  %96 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.swaybar_output*, %struct.swaybar_output** %13, align 8
  %98 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %97, i32 0, i32 3
  %99 = call i32 @wl_list_init(i32* %98)
  %100 = load %struct.swaybar_output*, %struct.swaybar_output** %13, align 8
  %101 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %100, i32 0, i32 2
  %102 = call i32 @wl_list_init(i32* %101)
  %103 = load %struct.swaybar_output*, %struct.swaybar_output** %13, align 8
  %104 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %103, i32 0, i32 1
  %105 = call i32 @wl_list_init(i32* %104)
  %106 = load %struct.swaybar*, %struct.swaybar** %11, align 8
  %107 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %76
  %111 = load %struct.swaybar_output*, %struct.swaybar_output** %13, align 8
  %112 = call i32 @add_xdg_output(%struct.swaybar_output* %111)
  br label %113

113:                                              ; preds = %110, %76
  br label %139

114:                                              ; preds = %71
  %115 = load i8*, i8** %9, align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @zwlr_layer_shell_v1_interface, i32 0, i32 0), align 4
  %117 = call i64 @strcmp(i8* %115, i32 %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = call i8* @wl_registry_bind(%struct.wl_registry* %120, i8* %121, %struct.TYPE_8__* @zwlr_layer_shell_v1_interface, i32 1)
  %123 = load %struct.swaybar*, %struct.swaybar** %11, align 8
  %124 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  br label %138

125:                                              ; preds = %114
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @zxdg_output_manager_v1_interface, i32 0, i32 0), align 4
  %128 = call i64 @strcmp(i8* %126, i32 %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = call i8* @wl_registry_bind(%struct.wl_registry* %131, i8* %132, %struct.TYPE_8__* @zxdg_output_manager_v1_interface, i32 2)
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.swaybar*, %struct.swaybar** %11, align 8
  %136 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %135, i32 0, i32 0
  store i32* %134, i32** %136, align 8
  br label %137

137:                                              ; preds = %130, %125
  br label %138

138:                                              ; preds = %137, %119
  br label %139

139:                                              ; preds = %138, %113
  br label %140

140:                                              ; preds = %139, %65
  br label %141

141:                                              ; preds = %140, %38
  br label %142

142:                                              ; preds = %36, %141, %20
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @wl_registry_bind(%struct.wl_registry*, i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @sway_abort(i8*) #1

declare dso_local i32 @wl_seat_add_listener(i8*, i32*, %struct.swaybar_seat*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

declare dso_local i32 @wl_output_add_listener(i8*, i32*, %struct.swaybar_output*) #1

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local i32 @add_xdg_output(%struct.swaybar_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
