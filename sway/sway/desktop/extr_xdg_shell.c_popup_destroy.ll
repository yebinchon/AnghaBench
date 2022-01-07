; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_popup_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_popup_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view_child = type { i32* }
%struct.sway_xdg_popup = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@popup_impl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Expected an xdg_shell popup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view_child*)* @popup_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @popup_destroy(%struct.sway_view_child* %0) #0 {
  %2 = alloca %struct.sway_view_child*, align 8
  %3 = alloca %struct.sway_xdg_popup*, align 8
  store %struct.sway_view_child* %0, %struct.sway_view_child** %2, align 8
  %4 = load %struct.sway_view_child*, %struct.sway_view_child** %2, align 8
  %5 = getelementptr inbounds %struct.sway_view_child, %struct.sway_view_child* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, @popup_impl
  %8 = zext i1 %7 to i32
  %9 = call i32 @sway_assert(i32 %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.sway_view_child*, %struct.sway_view_child** %2, align 8
  %14 = bitcast %struct.sway_view_child* %13 to %struct.sway_xdg_popup*
  store %struct.sway_xdg_popup* %14, %struct.sway_xdg_popup** %3, align 8
  %15 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %3, align 8
  %16 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @wl_list_remove(i32* %17)
  %19 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %3, align 8
  %20 = getelementptr inbounds %struct.sway_xdg_popup, %struct.sway_xdg_popup* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @wl_list_remove(i32* %21)
  %23 = load %struct.sway_xdg_popup*, %struct.sway_xdg_popup** %3, align 8
  %24 = call i32 @free(%struct.sway_xdg_popup* %23)
  br label %25

25:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @free(%struct.sway_xdg_popup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
