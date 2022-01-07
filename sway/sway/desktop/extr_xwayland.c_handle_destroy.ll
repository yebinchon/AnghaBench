; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_handle_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_xwayland_view = type { %struct.sway_view, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.sway_view = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.wl_listener = type { i32 }

@destroy = common dso_local global i32 0, align 4
@xwayland_view = common dso_local global %struct.sway_xwayland_view* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_destroy(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_xwayland_view*, align 8
  %6 = alloca %struct.sway_view*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %9 = ptrtoint %struct.sway_xwayland_view* %8 to i32
  %10 = load i32, i32* @destroy, align 4
  %11 = call %struct.sway_xwayland_view* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_xwayland_view* %11, %struct.sway_xwayland_view** %5, align 8
  %12 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %13 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %12, i32 0, i32 0
  store %struct.sway_view* %13, %struct.sway_view** %6, align 8
  %14 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %15 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %20 = call i32 @view_unmap(%struct.sway_view* %19)
  %21 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %22 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %21, i32 0, i32 15
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = call i32 @wl_list_remove(i32* %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %27 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %26, i32 0, i32 14
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = call i32 @wl_list_remove(i32* %28)
  %30 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %31 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = call i32 @wl_list_remove(i32* %32)
  %34 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %35 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %34, i32 0, i32 12
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = call i32 @wl_list_remove(i32* %36)
  %38 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %39 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %38, i32 0, i32 11
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = call i32 @wl_list_remove(i32* %40)
  %42 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %43 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %42, i32 0, i32 10
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = call i32 @wl_list_remove(i32* %44)
  %46 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %47 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %46, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = call i32 @wl_list_remove(i32* %48)
  %50 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %51 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  %53 = call i32 @wl_list_remove(i32* %52)
  %54 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %55 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 0
  %57 = call i32 @wl_list_remove(i32* %56)
  %58 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %59 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = call i32 @wl_list_remove(i32* %60)
  %62 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %63 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = call i32 @wl_list_remove(i32* %64)
  %66 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %67 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = call i32 @wl_list_remove(i32* %68)
  %70 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %71 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = call i32 @wl_list_remove(i32* %72)
  %74 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %75 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = call i32 @wl_list_remove(i32* %76)
  %78 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %79 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = call i32 @wl_list_remove(i32* %80)
  %82 = load %struct.sway_xwayland_view*, %struct.sway_xwayland_view** %5, align 8
  %83 = getelementptr inbounds %struct.sway_xwayland_view, %struct.sway_xwayland_view* %82, i32 0, i32 0
  %84 = call i32 @view_begin_destroy(%struct.sway_view* %83)
  ret void
}

declare dso_local %struct.sway_xwayland_view* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @view_unmap(%struct.sway_view*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @view_begin_destroy(%struct.sway_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
