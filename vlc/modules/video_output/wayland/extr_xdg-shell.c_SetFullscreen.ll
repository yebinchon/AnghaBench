; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_xdg-shell.c_SetFullscreen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_xdg-shell.c_SetFullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.wl_output = type { i32 }

@UINT32_MAX = common dso_local global i64 0, align 8
@wl_output_interface = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @SetFullscreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetFullscreen(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.wl_output*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  store %struct.wl_output* null, %struct.wl_output** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strtoul(i8* %15, i8** %7, i32 10)
  store i64 %16, i64* %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @UINT32_MAX, align 8
  %24 = icmp ule i64 %22, %23
  br label %25

25:                                               ; preds = %21, %14
  %26 = phi i1 [ false, %14 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call %struct.wl_output* @wl_registry_bind(i32 %31, i64 %32, i32* @wl_output_interface, i32 1)
  store %struct.wl_output* %33, %struct.wl_output** %6, align 8
  br label %48

34:                                               ; preds = %2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call %struct.wl_output* @wl_registry_bind(i32 %42, i64 %45, i32* @wl_output_interface, i32 1)
  store %struct.wl_output* %46, %struct.wl_output** %6, align 8
  br label %47

47:                                               ; preds = %39, %34
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.wl_output*, %struct.wl_output** %6, align 8
  %53 = call i32 @xdg_toplevel_set_fullscreen(i32 %51, %struct.wl_output* %52)
  %54 = load %struct.wl_output*, %struct.wl_output** %6, align 8
  %55 = icmp ne %struct.wl_output* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.wl_output*, %struct.wl_output** %6, align 8
  %58 = call i32 @wl_output_destroy(%struct.wl_output* %57)
  br label %59

59:                                               ; preds = %56, %48
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @wl_display_flush(i32 %63)
  ret void
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.wl_output* @wl_registry_bind(i32, i64, i32*, i32) #1

declare dso_local i32 @xdg_toplevel_set_fullscreen(i32, %struct.wl_output*) #1

declare dso_local i32 @wl_output_destroy(%struct.wl_output*) #1

declare dso_local i32 @wl_display_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
