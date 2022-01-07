; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_idle_inhibit_v1.c_sway_idle_inhibit_v1_user_inhibitor_register.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_idle_inhibit_v1.c_sway_idle_inhibit_v1_user_inhibitor_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sway_view = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sway_idle_inhibitor_v1 = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32, %struct.sway_view* }
%struct.TYPE_6__ = type { i32 }

@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@handle_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sway_idle_inhibit_v1_user_inhibitor_register(%struct.sway_view* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sway_idle_inhibitor_v1*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.sway_idle_inhibitor_v1* @calloc(i32 1, i32 32)
  store %struct.sway_idle_inhibitor_v1* %6, %struct.sway_idle_inhibitor_v1** %5, align 8
  %7 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %5, align 8
  %8 = icmp ne %struct.sway_idle_inhibitor_v1* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %41

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %12 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %5, align 8
  %13 = getelementptr inbounds %struct.sway_idle_inhibitor_v1, %struct.sway_idle_inhibitor_v1* %12, i32 0, i32 1
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %5, align 8
  %16 = getelementptr inbounds %struct.sway_idle_inhibitor_v1, %struct.sway_idle_inhibitor_v1* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %18 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %5, align 8
  %19 = getelementptr inbounds %struct.sway_idle_inhibitor_v1, %struct.sway_idle_inhibitor_v1* %18, i32 0, i32 4
  store %struct.sway_view* %17, %struct.sway_view** %19, align 8
  %20 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %5, align 8
  %21 = getelementptr inbounds %struct.sway_idle_inhibitor_v1, %struct.sway_idle_inhibitor_v1* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %5, align 8
  %25 = getelementptr inbounds %struct.sway_idle_inhibitor_v1, %struct.sway_idle_inhibitor_v1* %24, i32 0, i32 3
  %26 = call i32 @wl_list_insert(i32* %23, i32* %25)
  %27 = load i32, i32* @handle_destroy, align 4
  %28 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %5, align 8
  %29 = getelementptr inbounds %struct.sway_idle_inhibitor_v1, %struct.sway_idle_inhibitor_v1* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %32 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %5, align 8
  %35 = getelementptr inbounds %struct.sway_idle_inhibitor_v1, %struct.sway_idle_inhibitor_v1* %34, i32 0, i32 2
  %36 = call i32 @wl_signal_add(i32* %33, %struct.TYPE_6__* %35)
  %37 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %5, align 8
  %38 = getelementptr inbounds %struct.sway_idle_inhibitor_v1, %struct.sway_idle_inhibitor_v1* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = call i32 @sway_idle_inhibit_v1_check_active(%struct.TYPE_7__* %39)
  br label %41

41:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.sway_idle_inhibitor_v1* @calloc(i32, i32) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @sway_idle_inhibit_v1_check_active(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
