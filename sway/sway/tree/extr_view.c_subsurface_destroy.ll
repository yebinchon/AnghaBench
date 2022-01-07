; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_subsurface_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_subsurface_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view_child = type { i32* }
%struct.sway_subsurface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@subsurface_impl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Expected a subsurface\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view_child*)* @subsurface_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subsurface_destroy(%struct.sway_view_child* %0) #0 {
  %2 = alloca %struct.sway_view_child*, align 8
  %3 = alloca %struct.sway_subsurface*, align 8
  store %struct.sway_view_child* %0, %struct.sway_view_child** %2, align 8
  %4 = load %struct.sway_view_child*, %struct.sway_view_child** %2, align 8
  %5 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, @subsurface_impl
  %8 = zext i1 %7 to i32
  %9 = call i32 @sway_assert(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.sway_view_child*, %struct.sway_view_child** %2, align 8
  %14 = bitcast %struct.sway_view_child* %13 to %struct.sway_subsurface*
  store %struct.sway_subsurface* %14, %struct.sway_subsurface** %3, align 8
  %15 = load %struct.sway_subsurface*, %struct.sway_subsurface** %3, align 8
  %16 = getelementptr inbounds %struct.sway_subsurface, %struct.sway_subsurface* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @wl_list_remove(i32* %17)
  %19 = load %struct.sway_subsurface*, %struct.sway_subsurface** %3, align 8
  %20 = call i32 @free(%struct.sway_subsurface* %19)
  br label %21

21:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @free(%struct.sway_subsurface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
