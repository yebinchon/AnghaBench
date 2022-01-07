; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_save_buffer.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_save_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Didn't expect saved buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_save_buffer(%struct.sway_view* %0) #0 {
  %2 = alloca %struct.sway_view*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %2, align 8
  %3 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %4 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @sway_assert(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %13 = call i32 @view_remove_saved_buffer(%struct.sway_view* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %16 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  %20 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %21 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i64 @wlr_surface_has_buffer(%struct.TYPE_4__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %27 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @wlr_buffer_ref(i32 %30)
  %32 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %33 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %35 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %41 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %43 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %49 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %25, %19, %14
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @view_remove_saved_buffer(%struct.sway_view*) #1

declare dso_local i64 @wlr_surface_has_buffer(%struct.TYPE_4__*) #1

declare dso_local i64 @wlr_buffer_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
