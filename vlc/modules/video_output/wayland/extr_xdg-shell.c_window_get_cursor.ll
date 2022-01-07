; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_xdg-shell.c_window_get_cursor.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_xdg-shell.c_window_get_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_surface = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.wl_surface*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.wl_cursor_image** }
%struct.wl_cursor_image = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wl_surface* @window_get_cursor(%struct.TYPE_6__* %0, i32* noalias %1, i32* noalias %2) #0 {
  %4 = alloca %struct.wl_surface*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.wl_cursor_image*, align 8
  %10 = alloca %struct.wl_surface*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.wl_surface* null, %struct.wl_surface** %4, align 8
  br label %71

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.wl_cursor_image**, %struct.wl_cursor_image*** %34, align 8
  %36 = getelementptr inbounds %struct.wl_cursor_image*, %struct.wl_cursor_image** %35, i64 0
  %37 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %36, align 8
  store %struct.wl_cursor_image* %37, %struct.wl_cursor_image** %9, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.wl_surface*, %struct.wl_surface** %39, align 8
  store %struct.wl_surface* %40, %struct.wl_surface** %10, align 8
  %41 = load %struct.wl_surface*, %struct.wl_surface** %10, align 8
  %42 = icmp ne %struct.wl_surface* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %22
  %47 = load %struct.wl_surface*, %struct.wl_surface** %10, align 8
  %48 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %9, align 8
  %49 = call i32 @wl_cursor_image_get_buffer(%struct.wl_cursor_image* %48)
  %50 = call i32 @wl_surface_attach(%struct.wl_surface* %47, i32 %49, i32 0, i32 0)
  %51 = load %struct.wl_surface*, %struct.wl_surface** %10, align 8
  %52 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %9, align 8
  %53 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %9, align 8
  %56 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @wl_surface_damage(%struct.wl_surface* %51, i32 0, i32 0, i32 %54, i32 %57)
  %59 = load %struct.wl_surface*, %struct.wl_surface** %10, align 8
  %60 = call i32 @wl_surface_commit(%struct.wl_surface* %59)
  br label %61

61:                                               ; preds = %46, %22
  %62 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %9, align 8
  %63 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %9, align 8
  %67 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.wl_surface*, %struct.wl_surface** %10, align 8
  store %struct.wl_surface* %70, %struct.wl_surface** %4, align 8
  br label %71

71:                                               ; preds = %61, %21
  %72 = load %struct.wl_surface*, %struct.wl_surface** %4, align 8
  ret %struct.wl_surface* %72
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wl_surface_attach(%struct.wl_surface*, i32, i32, i32) #1

declare dso_local i32 @wl_cursor_image_get_buffer(%struct.wl_cursor_image*) #1

declare dso_local i32 @wl_surface_damage(%struct.wl_surface*, i32, i32, i32, i32) #1

declare dso_local i32 @wl_surface_commit(%struct.wl_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
