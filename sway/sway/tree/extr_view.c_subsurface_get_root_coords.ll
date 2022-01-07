; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_subsurface_get_root_coords.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_subsurface_get_root_coords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view_child = type { %struct.TYPE_10__*, %struct.TYPE_7__*, %struct.wlr_surface* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i32*, i32*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.wlr_surface = type { i32 }
%struct.wlr_subsurface = type { %struct.wlr_surface*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view_child*, i32*, i32*)* @subsurface_get_root_coords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subsurface_get_root_coords(%struct.sway_view_child* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.sway_view_child*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wlr_surface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wlr_subsurface*, align 8
  store %struct.sway_view_child* %0, %struct.sway_view_child** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.sway_view_child*, %struct.sway_view_child** %4, align 8
  %12 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %11, i32 0, i32 2
  %13 = load %struct.wlr_surface*, %struct.wlr_surface** %12, align 8
  store %struct.wlr_surface* %13, %struct.wlr_surface** %7, align 8
  %14 = load %struct.sway_view_child*, %struct.sway_view_child** %4, align 8
  %15 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 0, %19
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.sway_view_child*, %struct.sway_view_child** %4, align 8
  %23 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 0, %27
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.sway_view_child*, %struct.sway_view_child** %4, align 8
  %31 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %34, label %70

34:                                               ; preds = %3
  %35 = load %struct.sway_view_child*, %struct.sway_view_child** %4, align 8
  %36 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %70

41:                                               ; preds = %34
  %42 = load %struct.sway_view_child*, %struct.sway_view_child** %4, align 8
  %43 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_10__*, i32*, i32*)*, i32 (%struct.TYPE_10__*, i32*, i32*)** %47, align 8
  %49 = icmp ne i32 (%struct.TYPE_10__*, i32*, i32*)* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %41
  %51 = load %struct.sway_view_child*, %struct.sway_view_child** %4, align 8
  %52 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_10__*, i32*, i32*)*, i32 (%struct.TYPE_10__*, i32*, i32*)** %56, align 8
  %58 = load %struct.sway_view_child*, %struct.sway_view_child** %4, align 8
  %59 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = call i32 %57(%struct.TYPE_10__* %60, i32* %8, i32* %9)
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %109

70:                                               ; preds = %41, %34, %3
  br label %71

71:                                               ; preds = %86, %70
  %72 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %73 = icmp ne %struct.wlr_surface* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %76 = call i64 @wlr_surface_is_subsurface(%struct.wlr_surface* %75)
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %77, %74 ]
  br i1 %79, label %80, label %108

80:                                               ; preds = %78
  %81 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %82 = call %struct.wlr_subsurface* @wlr_subsurface_from_wlr_surface(%struct.wlr_surface* %81)
  store %struct.wlr_subsurface* %82, %struct.wlr_subsurface** %10, align 8
  %83 = load %struct.wlr_subsurface*, %struct.wlr_subsurface** %10, align 8
  %84 = icmp eq %struct.wlr_subsurface* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %108

86:                                               ; preds = %80
  %87 = load %struct.wlr_subsurface*, %struct.wlr_subsurface** %10, align 8
  %88 = getelementptr inbounds %struct.wlr_subsurface, %struct.wlr_subsurface* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %90
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  %96 = load %struct.wlr_subsurface*, %struct.wlr_subsurface** %10, align 8
  %97 = getelementptr inbounds %struct.wlr_subsurface, %struct.wlr_subsurface* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %99
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.wlr_subsurface*, %struct.wlr_subsurface** %10, align 8
  %106 = getelementptr inbounds %struct.wlr_subsurface, %struct.wlr_subsurface* %105, i32 0, i32 0
  %107 = load %struct.wlr_surface*, %struct.wlr_surface** %106, align 8
  store %struct.wlr_surface* %107, %struct.wlr_surface** %7, align 8
  br label %71

108:                                              ; preds = %85, %78
  br label %109

109:                                              ; preds = %108, %50
  ret void
}

declare dso_local i64 @wlr_surface_is_subsurface(%struct.wlr_surface*) #1

declare dso_local %struct.wlr_subsurface* @wlr_subsurface_from_wlr_surface(%struct.wlr_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
