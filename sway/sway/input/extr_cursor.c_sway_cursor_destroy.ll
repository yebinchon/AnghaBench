; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_sway_cursor_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_sway_cursor_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sway_cursor_destroy(%struct.sway_cursor* %0) #0 {
  %2 = alloca %struct.sway_cursor*, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %2, align 8
  %3 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %4 = icmp ne %struct.sway_cursor* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %69

6:                                                ; preds = %1
  %7 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %8 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %7, i32 0, i32 14
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @wl_event_source_remove(i32 %9)
  %11 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %12 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %11, i32 0, i32 13
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = call i32 @wl_list_remove(i32* %13)
  %15 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %16 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %15, i32 0, i32 12
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = call i32 @wl_list_remove(i32* %17)
  %19 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %20 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %19, i32 0, i32 11
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = call i32 @wl_list_remove(i32* %21)
  %23 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %24 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %23, i32 0, i32 10
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = call i32 @wl_list_remove(i32* %25)
  %27 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %28 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = call i32 @wl_list_remove(i32* %29)
  %31 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %32 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %31, i32 0, i32 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = call i32 @wl_list_remove(i32* %33)
  %35 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %36 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = call i32 @wl_list_remove(i32* %37)
  %39 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %40 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = call i32 @wl_list_remove(i32* %41)
  %43 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %44 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = call i32 @wl_list_remove(i32* %45)
  %47 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %48 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = call i32 @wl_list_remove(i32* %49)
  %51 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %52 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = call i32 @wl_list_remove(i32* %53)
  %55 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %56 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = call i32 @wl_list_remove(i32* %57)
  %59 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %60 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @wlr_xcursor_manager_destroy(i32 %61)
  %63 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %64 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wlr_cursor_destroy(i32 %65)
  %67 = load %struct.sway_cursor*, %struct.sway_cursor** %2, align 8
  %68 = call i32 @free(%struct.sway_cursor* %67)
  br label %69

69:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @wl_event_source_remove(i32) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @wlr_xcursor_manager_destroy(i32) #1

declare dso_local i32 @wlr_cursor_destroy(i32) #1

declare dso_local i32 @free(%struct.sway_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
