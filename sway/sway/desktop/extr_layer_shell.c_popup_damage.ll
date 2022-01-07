; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_popup_damage.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_layer_shell.c_popup_damage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_layer_popup = type { i64, %struct.sway_layer_surface*, %struct.wlr_xdg_popup*, %struct.sway_layer_popup* }
%struct.sway_layer_surface = type { %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.wlr_output* }
%struct.wlr_output = type { %struct.sway_output* }
%struct.sway_output = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.wlr_xdg_popup = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.wlr_surface* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.wlr_surface = type { i32 }

@LAYER_PARENT_POPUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_layer_popup*, i32)* @popup_damage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @popup_damage(%struct.sway_layer_popup* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_layer_popup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wlr_xdg_popup*, align 8
  %6 = alloca %struct.wlr_surface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_layer_surface*, align 8
  %12 = alloca %struct.wlr_output*, align 8
  %13 = alloca %struct.sway_output*, align 8
  store %struct.sway_layer_popup* %0, %struct.sway_layer_popup** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %3, align 8
  %15 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %14, i32 0, i32 2
  %16 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %15, align 8
  store %struct.wlr_xdg_popup* %16, %struct.wlr_xdg_popup** %5, align 8
  %17 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %5, align 8
  %18 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.wlr_surface*, %struct.wlr_surface** %20, align 8
  store %struct.wlr_surface* %21, %struct.wlr_surface** %6, align 8
  %22 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %5, align 8
  %23 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %5, align 8
  %27 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %25, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %5, align 8
  %34 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %5, align 8
  %38 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %36, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %2, %92
  %47 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %3, align 8
  %48 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LAYER_PARENT_POPUP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %46
  %53 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %3, align 8
  %54 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %53, i32 0, i32 3
  %55 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %54, align 8
  store %struct.sway_layer_popup* %55, %struct.sway_layer_popup** %3, align 8
  %56 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %3, align 8
  %57 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %56, i32 0, i32 2
  %58 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %57, align 8
  %59 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %3, align 8
  %65 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %64, i32 0, i32 2
  %66 = load %struct.wlr_xdg_popup*, %struct.wlr_xdg_popup** %65, align 8
  %67 = getelementptr inbounds %struct.wlr_xdg_popup, %struct.wlr_xdg_popup* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %92

72:                                               ; preds = %46
  %73 = load %struct.sway_layer_popup*, %struct.sway_layer_popup** %3, align 8
  %74 = getelementptr inbounds %struct.sway_layer_popup, %struct.sway_layer_popup* %73, i32 0, i32 1
  %75 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %74, align 8
  store %struct.sway_layer_surface* %75, %struct.sway_layer_surface** %11, align 8
  %76 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %11, align 8
  %77 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %9, align 4
  %84 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %11, align 8
  %85 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %10, align 4
  br label %93

92:                                               ; preds = %52
  br label %46

93:                                               ; preds = %72
  %94 = load %struct.sway_layer_surface*, %struct.sway_layer_surface** %11, align 8
  %95 = getelementptr inbounds %struct.sway_layer_surface, %struct.sway_layer_surface* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load %struct.wlr_output*, %struct.wlr_output** %97, align 8
  store %struct.wlr_output* %98, %struct.wlr_output** %12, align 8
  %99 = load %struct.wlr_output*, %struct.wlr_output** %12, align 8
  %100 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %99, i32 0, i32 0
  %101 = load %struct.sway_output*, %struct.sway_output** %100, align 8
  store %struct.sway_output* %101, %struct.sway_output** %13, align 8
  %102 = load %struct.sway_output*, %struct.sway_output** %13, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.wlr_surface*, %struct.wlr_surface** %6, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @output_damage_surface(%struct.sway_output* %102, i32 %103, i32 %104, %struct.wlr_surface* %105, i32 %106)
  ret void
}

declare dso_local i32 @output_damage_surface(%struct.sway_output*, i32, i32, %struct.wlr_surface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
