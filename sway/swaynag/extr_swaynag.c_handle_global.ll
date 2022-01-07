; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_handle_global.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_handle_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.wl_registry = type { i32 }
%struct.swaynag = type { i8*, i8*, i32, i32, i32, i8*, i8*, i8* }
%struct.swaynag_output = type { i32, i32, i8*, i32, %struct.swaynag* }
%struct.zxdg_output_v1 = type { i32 }

@wl_compositor_interface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@wl_seat_interface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@seat_listener = common dso_local global i32 0, align 4
@wl_shm_interface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@wl_output_interface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@output_listener = common dso_local global i32 0, align 4
@xdg_output_listener = common dso_local global i32 0, align 4
@zwlr_layer_shell_v1_interface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@zxdg_output_manager_v1_interface = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ZXDG_OUTPUT_V1_NAME_SINCE_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_registry*, i32, i8*, i32)* @handle_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_global(i8* %0, %struct.wl_registry* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_registry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.swaynag*, align 8
  %12 = alloca %struct.swaynag_output*, align 8
  %13 = alloca %struct.zxdg_output_v1*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wl_registry* %1, %struct.wl_registry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.swaynag*
  store %struct.swaynag* %15, %struct.swaynag** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wl_compositor_interface, i32 0, i32 0), align 4
  %18 = call i64 @strcmp(i8* %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @wl_registry_bind(%struct.wl_registry* %21, i32 %22, %struct.TYPE_8__* @wl_compositor_interface, i32 4)
  %24 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %25 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  br label %140

26:                                               ; preds = %5
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wl_seat_interface, i32 0, i32 0), align 4
  %29 = call i64 @strcmp(i8* %27, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i8* @wl_registry_bind(%struct.wl_registry* %32, i32 %33, %struct.TYPE_8__* @wl_seat_interface, i32 1)
  %35 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %36 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %38 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %37, i32 0, i32 6
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %41 = call i32 @wl_seat_add_listener(i8* %39, i32* @seat_listener, %struct.swaynag* %40)
  br label %139

42:                                               ; preds = %26
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wl_shm_interface, i32 0, i32 0), align 4
  %45 = call i64 @strcmp(i8* %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @wl_registry_bind(%struct.wl_registry* %48, i32 %49, %struct.TYPE_8__* @wl_shm_interface, i32 1)
  %51 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %52 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  br label %138

53:                                               ; preds = %42
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @wl_output_interface, i32 0, i32 0), align 4
  %56 = call i64 @strcmp(i8* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %108

58:                                               ; preds = %53
  %59 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %60 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %107, label %63

63:                                               ; preds = %58
  %64 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %65 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %107

68:                                               ; preds = %63
  %69 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %70 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = call %struct.swaynag_output* @calloc(i32 1, i32 32)
  store %struct.swaynag_output* %73, %struct.swaynag_output** %12, align 8
  %74 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i8* @wl_registry_bind(%struct.wl_registry* %74, i32 %75, %struct.TYPE_8__* @wl_output_interface, i32 3)
  %77 = load %struct.swaynag_output*, %struct.swaynag_output** %12, align 8
  %78 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.swaynag_output*, %struct.swaynag_output** %12, align 8
  %81 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.swaynag_output*, %struct.swaynag_output** %12, align 8
  %83 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %85 = load %struct.swaynag_output*, %struct.swaynag_output** %12, align 8
  %86 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %85, i32 0, i32 4
  store %struct.swaynag* %84, %struct.swaynag** %86, align 8
  %87 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %88 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %87, i32 0, i32 2
  %89 = load %struct.swaynag_output*, %struct.swaynag_output** %12, align 8
  %90 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %89, i32 0, i32 3
  %91 = call i32 @wl_list_insert(i32* %88, i32* %90)
  %92 = load %struct.swaynag_output*, %struct.swaynag_output** %12, align 8
  %93 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.swaynag_output*, %struct.swaynag_output** %12, align 8
  %96 = call i32 @wl_output_add_listener(i8* %94, i32* @output_listener, %struct.swaynag_output* %95)
  %97 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %98 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.swaynag_output*, %struct.swaynag_output** %12, align 8
  %101 = getelementptr inbounds %struct.swaynag_output, %struct.swaynag_output* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call %struct.zxdg_output_v1* @zxdg_output_manager_v1_get_xdg_output(i8* %99, i8* %102)
  store %struct.zxdg_output_v1* %103, %struct.zxdg_output_v1** %13, align 8
  %104 = load %struct.zxdg_output_v1*, %struct.zxdg_output_v1** %13, align 8
  %105 = load %struct.swaynag_output*, %struct.swaynag_output** %12, align 8
  %106 = call i32 @zxdg_output_v1_add_listener(%struct.zxdg_output_v1* %104, i32* @xdg_output_listener, %struct.swaynag_output* %105)
  br label %107

107:                                              ; preds = %68, %63, %58
  br label %137

108:                                              ; preds = %53
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @zwlr_layer_shell_v1_interface, i32 0, i32 0), align 4
  %111 = call i64 @strcmp(i8* %109, i32 %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i8* @wl_registry_bind(%struct.wl_registry* %114, i32 %115, %struct.TYPE_8__* @zwlr_layer_shell_v1_interface, i32 1)
  %117 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %118 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  br label %136

119:                                              ; preds = %108
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @zxdg_output_manager_v1_interface, i32 0, i32 0), align 4
  %122 = call i64 @strcmp(i8* %120, i32 %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @ZXDG_OUTPUT_V1_NAME_SINCE_VERSION, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @ZXDG_OUTPUT_V1_NAME_SINCE_VERSION, align 4
  %132 = call i8* @wl_registry_bind(%struct.wl_registry* %129, i32 %130, %struct.TYPE_8__* @zxdg_output_manager_v1_interface, i32 %131)
  %133 = load %struct.swaynag*, %struct.swaynag** %11, align 8
  %134 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %128, %124, %119
  br label %136

136:                                              ; preds = %135, %113
  br label %137

137:                                              ; preds = %136, %107
  br label %138

138:                                              ; preds = %137, %47
  br label %139

139:                                              ; preds = %138, %31
  br label %140

140:                                              ; preds = %139, %20
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @wl_registry_bind(%struct.wl_registry*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @wl_seat_add_listener(i8*, i32*, %struct.swaynag*) #1

declare dso_local %struct.swaynag_output* @calloc(i32, i32) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

declare dso_local i32 @wl_output_add_listener(i8*, i32*, %struct.swaynag_output*) #1

declare dso_local %struct.zxdg_output_v1* @zxdg_output_manager_v1_get_xdg_output(i8*, i8*) #1

declare dso_local i32 @zxdg_output_v1_add_listener(%struct.zxdg_output_v1*, i32*, %struct.swaynag_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
