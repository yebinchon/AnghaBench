; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_constraint_commit.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_constraint_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { %struct.wlr_pointer_constraint_v1* }
%struct.wlr_pointer_constraint_v1 = type { i8* }
%struct.wl_listener = type { i32 }

@constraint_commit = common dso_local global i32 0, align 4
@cursor = common dso_local global %struct.sway_cursor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_constraint_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_constraint_commit(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca %struct.wlr_pointer_constraint_v1*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %9 = ptrtoint %struct.sway_cursor* %8 to i32
  %10 = load i32, i32* @constraint_commit, align 4
  %11 = call %struct.sway_cursor* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_cursor* %11, %struct.sway_cursor** %5, align 8
  %12 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %13 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %12, i32 0, i32 0
  %14 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %13, align 8
  store %struct.wlr_pointer_constraint_v1* %14, %struct.wlr_pointer_constraint_v1** %6, align 8
  %15 = load %struct.wlr_pointer_constraint_v1*, %struct.wlr_pointer_constraint_v1** %6, align 8
  %16 = getelementptr inbounds %struct.wlr_pointer_constraint_v1, %struct.wlr_pointer_constraint_v1* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %23 = call i32 @check_constraint_region(%struct.sway_cursor* %22)
  ret void
}

declare dso_local %struct.sway_cursor* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @check_constraint_region(%struct.sway_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
