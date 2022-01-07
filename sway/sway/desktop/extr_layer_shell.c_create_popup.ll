; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_create_popup.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_create_popup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_layer_popup = type { i32, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, i8*, %struct.wlr_xdg_popup* }
%struct.TYPE_10__ = type { i32 }
%struct.wlr_xdg_popup = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@popup_handle_map = common dso_local global i32 0, align 4
@popup_handle_unmap = common dso_local global i32 0, align 4
@popup_handle_destroy = common dso_local global i32 0, align 4
@popup_handle_commit = common dso_local global i32 0, align 4
@popup_handle_new_popup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_layer_popup* (%struct.wlr_xdg_popup*, i32, i8*)* @create_popup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_layer_popup* @create_popup(%struct.wlr_xdg_popup* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sway_layer_popup*, align 8
  %5 = alloca %struct.wlr_xdg_popup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sway_layer_popup*, align 8
  store %struct.wlr_xdg_popup* %0, %struct.wlr_xdg_popup** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = call %struct.sway_layer_popup* @calloc(i32 1, i32 40)
  store %struct.sway_layer_popup* %9, %struct.sway_layer_popup** %8, align 8
  %10 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %11 = icmp eq %struct.sway_layer_popup* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.sway_layer_popup* null, %struct.sway_layer_popup** %4, align 8
  br label %88

13:                                               ; preds = %3
  %14 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %5, align 8
  %15 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %16 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %15, i32 0, i32 7
  store %struct.wlr_xdg_popup* %14, %struct.wlr_xdg_popup** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %19 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %22 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @popup_handle_map, align 4
  %24 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %25 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %5, align 8
  %28 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %33 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %32, i32 0, i32 5
  %34 = call i32 @wl_signal_add(i32* %31, %struct.TYPE_10__* %33)
  %35 = load i32, i32* @popup_handle_unmap, align 4
  %36 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %37 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %5, align 8
  %40 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %45 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %44, i32 0, i32 4
  %46 = call i32 @wl_signal_add(i32* %43, %struct.TYPE_10__* %45)
  %47 = load i32, i32* @popup_handle_destroy, align 4
  %48 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %49 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %5, align 8
  %52 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %57 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %56, i32 0, i32 3
  %58 = call i32 @wl_signal_add(i32* %55, %struct.TYPE_10__* %57)
  %59 = load i32, i32* @popup_handle_commit, align 4
  %60 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %61 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %5, align 8
  %64 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %71 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %70, i32 0, i32 2
  %72 = call i32 @wl_signal_add(i32* %69, %struct.TYPE_10__* %71)
  %73 = load i32, i32* @popup_handle_new_popup, align 4
  %74 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %75 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %5, align 8
  %78 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %83 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %82, i32 0, i32 1
  %84 = call i32 @wl_signal_add(i32* %81, %struct.TYPE_10__* %83)
  %85 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  %86 = call i32 @popup_unconstrain(%struct.sway_layer_popup* %85)
  %87 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %8, align 8
  store %struct.sway_layer_popup* %87, %struct.sway_layer_popup** %4, align 8
  br label %88

88:                                               ; preds = %13, %12
  %89 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %4, align 8
  ret %struct.sway_layer_popup* %89
}

declare dso_local %struct.sway_layer_popup* @calloc(i32, i32) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @popup_unconstrain(%struct.sway_layer_popup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
