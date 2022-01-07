; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_wants_floating.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_wants_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sway_xwayland }
%struct.sway_xwayland = type { i64* }
%struct.sway_view = type { %struct.wlr_xwayland_surface* }
%struct.wlr_xwayland_surface = type { i64, i64*, %struct.wlr_xwayland_surface_size_hints*, i64 }
%struct.wlr_xwayland_surface_size_hints = type { i64, i64, i64, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NET_WM_WINDOW_TYPE_DIALOG = common dso_local global i64 0, align 8
@NET_WM_WINDOW_TYPE_UTILITY = common dso_local global i64 0, align 8
@NET_WM_WINDOW_TYPE_TOOLBAR = common dso_local global i64 0, align 8
@NET_WM_WINDOW_TYPE_SPLASH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_view*)* @wants_floating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wants_floating(%struct.sway_view* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca %struct.wlr_xwayland_surface*, align 8
  %5 = alloca %struct.sway_xwayland*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wlr_xwayland_surface_size_hints*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  %9 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %10 = call i32* @xwayland_view_from_view(%struct.sway_view* %9)
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %110

13:                                               ; preds = %1
  %14 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %15 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %14, i32 0, i32 0
  %16 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %15, align 8
  store %struct.wlr_xwayland_surface* %16, %struct.wlr_xwayland_surface** %4, align 8
  store %struct.sway_xwayland* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), %struct.sway_xwayland** %5, align 8
  %17 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %4, align 8
  %18 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %110

22:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %73, %22
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %4, align 8
  %26 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %76

29:                                               ; preds = %23
  %30 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %4, align 8
  %31 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.sway_xwayland*, %struct.sway_xwayland** %5, align 8
  %38 = getelementptr inbounds %struct.sway_xwayland, %struct.sway_xwayland* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @NET_WM_WINDOW_TYPE_DIALOG, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %36, %42
  br i1 %43, label %71, label %44

44:                                               ; preds = %29
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.sway_xwayland*, %struct.sway_xwayland** %5, align 8
  %47 = getelementptr inbounds %struct.sway_xwayland, %struct.sway_xwayland* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @NET_WM_WINDOW_TYPE_UTILITY, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %45, %51
  br i1 %52, label %71, label %53

53:                                               ; preds = %44
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.sway_xwayland*, %struct.sway_xwayland** %5, align 8
  %56 = getelementptr inbounds %struct.sway_xwayland, %struct.sway_xwayland* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @NET_WM_WINDOW_TYPE_TOOLBAR, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %54, %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %53
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.sway_xwayland*, %struct.sway_xwayland** %5, align 8
  %65 = getelementptr inbounds %struct.sway_xwayland, %struct.sway_xwayland* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @NET_WM_WINDOW_TYPE_SPLASH, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %63, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62, %53, %44, %29
  store i32 1, i32* %2, align 4
  br label %110

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %23

76:                                               ; preds = %23
  %77 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %4, align 8
  %78 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %77, i32 0, i32 2
  %79 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %78, align 8
  store %struct.wlr_xwayland_surface_size_hints* %79, %struct.wlr_xwayland_surface_size_hints** %8, align 8
  %80 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %8, align 8
  %81 = icmp ne %struct.wlr_xwayland_surface_size_hints* %80, null
  br i1 %81, label %82, label %109

82:                                               ; preds = %76
  %83 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %8, align 8
  %84 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %82
  %88 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %8, align 8
  %89 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %87
  %93 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %8, align 8
  %94 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %8, align 8
  %97 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %92
  %101 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %8, align 8
  %102 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %8, align 8
  %105 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100, %92
  store i32 1, i32* %2, align 4
  br label %110

109:                                              ; preds = %100, %87, %82, %76
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %108, %71, %21, %12
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32* @xwayland_view_from_view(%struct.sway_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
