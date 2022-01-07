; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_destroy_sni.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_destroy_sni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_sni = type { %struct.swaybar_sni*, %struct.swaybar_sni*, i32, %struct.swaybar_sni*, i32, %struct.swaybar_sni*, %struct.swaybar_sni*, %struct.swaybar_sni*, %struct.swaybar_sni*, %struct.swaybar_sni*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_sni(%struct.swaybar_sni* %0) #0 {
  %2 = alloca %struct.swaybar_sni*, align 8
  store %struct.swaybar_sni* %0, %struct.swaybar_sni** %2, align 8
  %3 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %4 = icmp ne %struct.swaybar_sni* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %65

6:                                                ; preds = %1
  %7 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %8 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %7, i32 0, i32 13
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @cairo_surface_destroy(i32 %9)
  %11 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %12 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sd_bus_slot_unref(i32 %13)
  %15 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %16 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sd_bus_slot_unref(i32 %17)
  %19 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %20 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sd_bus_slot_unref(i32 %21)
  %23 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %24 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %23, i32 0, i32 9
  %25 = load %struct.swaybar_sni*, %struct.swaybar_sni** %24, align 8
  %26 = call i32 @free(%struct.swaybar_sni* %25)
  %27 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %28 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %27, i32 0, i32 8
  %29 = load %struct.swaybar_sni*, %struct.swaybar_sni** %28, align 8
  %30 = call i32 @free(%struct.swaybar_sni* %29)
  %31 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %32 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %31, i32 0, i32 7
  %33 = load %struct.swaybar_sni*, %struct.swaybar_sni** %32, align 8
  %34 = call i32 @free(%struct.swaybar_sni* %33)
  %35 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %36 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %35, i32 0, i32 6
  %37 = load %struct.swaybar_sni*, %struct.swaybar_sni** %36, align 8
  %38 = call i32 @free(%struct.swaybar_sni* %37)
  %39 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %40 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %39, i32 0, i32 5
  %41 = load %struct.swaybar_sni*, %struct.swaybar_sni** %40, align 8
  %42 = call i32 @free(%struct.swaybar_sni* %41)
  %43 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %44 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @list_free_items_and_destroy(i32 %45)
  %47 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %48 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %47, i32 0, i32 3
  %49 = load %struct.swaybar_sni*, %struct.swaybar_sni** %48, align 8
  %50 = call i32 @free(%struct.swaybar_sni* %49)
  %51 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %52 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @list_free_items_and_destroy(i32 %53)
  %55 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %56 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %55, i32 0, i32 1
  %57 = load %struct.swaybar_sni*, %struct.swaybar_sni** %56, align 8
  %58 = call i32 @free(%struct.swaybar_sni* %57)
  %59 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %60 = getelementptr inbounds %struct.swaybar_sni, %struct.swaybar_sni* %59, i32 0, i32 0
  %61 = load %struct.swaybar_sni*, %struct.swaybar_sni** %60, align 8
  %62 = call i32 @free(%struct.swaybar_sni* %61)
  %63 = load %struct.swaybar_sni*, %struct.swaybar_sni** %2, align 8
  %64 = call i32 @free(%struct.swaybar_sni* %63)
  br label %65

65:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @cairo_surface_destroy(i32) #1

declare dso_local i32 @sd_bus_slot_unref(i32) #1

declare dso_local i32 @free(%struct.swaybar_sni*) #1

declare dso_local i32 @list_free_items_and_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
