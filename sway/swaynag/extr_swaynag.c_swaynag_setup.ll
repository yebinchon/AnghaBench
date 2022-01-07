; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_swaynag_setup.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_swaynag_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag = type { i32, i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i64, %struct.swaynag_pointer, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.swaynag_pointer = type { i32 }
%struct.wl_registry = type { i32 }

@.str = private unnamed_addr constant [123 x i8] c"Unable to connect to the compositor. If your compositor is running, check or set the WAYLAND_DISPLAY environment variable.\00", align 1
@registry_listener = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Output '%s' not found\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@surface_listener = common dso_local global i32 0, align 4
@ZWLR_LAYER_SHELL_V1_LAYER_TOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"swaynag\00", align 1
@layer_surface_listener = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swaynag_setup(%struct.swaynag* %0) #0 {
  %2 = alloca %struct.swaynag*, align 8
  %3 = alloca %struct.wl_registry*, align 8
  %4 = alloca %struct.swaynag_pointer*, align 8
  store %struct.swaynag* %0, %struct.swaynag** %2, align 8
  %5 = call i32 @wl_display_connect(i32* null)
  %6 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %7 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %6, i32 0, i32 9
  store i32 %5, i32* %7, align 4
  %8 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %9 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @sway_abort(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %16 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %18 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %17, i32 0, i32 11
  %19 = call i32 @wl_list_init(i32* %18)
  %20 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %21 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.wl_registry* @wl_display_get_registry(i32 %22)
  store %struct.wl_registry* %23, %struct.wl_registry** %3, align 8
  %24 = load %struct.wl_registry*, %struct.wl_registry** %3, align 8
  %25 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %26 = call i32 @wl_registry_add_listener(%struct.wl_registry* %24, i32* @registry_listener, %struct.swaynag* %25)
  %27 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %28 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wl_display_roundtrip(i32 %29)
  %31 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %32 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %14
  %36 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %37 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %42 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %41, i32 0, i32 10
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %35, %14
  %46 = phi i1 [ false, %35 ], [ false, %14 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  br label %49

49:                                               ; preds = %54, %45
  %50 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %51 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %56 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @wl_display_roundtrip(i32 %57)
  br label %49

59:                                               ; preds = %49
  %60 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %61 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %60, i32 0, i32 5
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = icmp ne %struct.TYPE_3__* %62, null
  br i1 %63, label %83, label %64

64:                                               ; preds = %59
  %65 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %66 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load i32, i32* @SWAY_ERROR, align 4
  %73 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %74 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @sway_log(i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  %79 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %80 = call i32 @swaynag_destroy(%struct.swaynag* %79)
  %81 = load i32, i32* @EXIT_FAILURE, align 4
  %82 = call i32 @exit(i32 %81) #3
  unreachable

83:                                               ; preds = %64, %59
  %84 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %85 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %84, i32 0, i32 8
  store %struct.swaynag_pointer* %85, %struct.swaynag_pointer** %4, align 8
  %86 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %87 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @wl_compositor_create_surface(i64 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %4, align 8
  %92 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.swaynag_pointer*, %struct.swaynag_pointer** %4, align 8
  %94 = getelementptr inbounds %struct.swaynag_pointer, %struct.swaynag_pointer* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %98 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @wl_compositor_create_surface(i64 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %103 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %105 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %109 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %112 = call i32 @wl_surface_add_listener(i32 %110, i32* @surface_listener, %struct.swaynag* %111)
  %113 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %114 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %117 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %120 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %119, i32 0, i32 5
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = icmp ne %struct.TYPE_3__* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %83
  %124 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %125 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %124, i32 0, i32 5
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  br label %130

129:                                              ; preds = %83
  br label %130

130:                                              ; preds = %129, %123
  %131 = phi i32* [ %128, %123 ], [ null, %129 ]
  %132 = load i32, i32* @ZWLR_LAYER_SHELL_V1_LAYER_TOP, align 4
  %133 = call i32 @zwlr_layer_shell_v1_get_layer_surface(i64 %115, i32 %118, i32* %131, i32 %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %134 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %135 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %137 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @assert(i32 %138)
  %140 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %141 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %144 = call i32 @zwlr_layer_surface_v1_add_listener(i32 %142, i32* @layer_surface_listener, %struct.swaynag* %143)
  %145 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %146 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.swaynag*, %struct.swaynag** %2, align 8
  %149 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %148, i32 0, i32 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @zwlr_layer_surface_v1_set_anchor(i32 %147, i32 %152)
  %154 = load %struct.wl_registry*, %struct.wl_registry** %3, align 8
  %155 = call i32 @wl_registry_destroy(%struct.wl_registry* %154)
  ret void
}

declare dso_local i32 @wl_display_connect(i32*) #1

declare dso_local i32 @sway_abort(i8*) #1

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local %struct.wl_registry* @wl_display_get_registry(i32) #1

declare dso_local i32 @wl_registry_add_listener(%struct.wl_registry*, i32*, %struct.swaynag*) #1

declare dso_local i32 @wl_display_roundtrip(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sway_log(i32, i8*, i64) #1

declare dso_local i32 @swaynag_destroy(%struct.swaynag*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @wl_compositor_create_surface(i64) #1

declare dso_local i32 @wl_surface_add_listener(i32, i32*, %struct.swaynag*) #1

declare dso_local i32 @zwlr_layer_shell_v1_get_layer_surface(i64, i32, i32*, i32, i8*) #1

declare dso_local i32 @zwlr_layer_surface_v1_add_listener(i32, i32*, %struct.swaynag*) #1

declare dso_local i32 @zwlr_layer_surface_v1_set_anchor(i32, i32) #1

declare dso_local i32 @wl_registry_destroy(%struct.wl_registry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
