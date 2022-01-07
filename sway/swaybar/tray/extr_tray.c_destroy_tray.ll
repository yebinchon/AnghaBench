; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_tray.c_destroy_tray.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_tray.c_destroy_tray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_tray = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_tray(%struct.swaybar_tray* %0) #0 {
  %2 = alloca %struct.swaybar_tray*, align 8
  %3 = alloca i32, align 4
  store %struct.swaybar_tray* %0, %struct.swaybar_tray** %2, align 8
  %4 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  %5 = icmp ne %struct.swaybar_tray* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %62

7:                                                ; preds = %1
  %8 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  %9 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %8, i32 0, i32 7
  %10 = call i32 @finish_host(i32* %9)
  %11 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  %12 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %11, i32 0, i32 6
  %13 = call i32 @finish_host(i32* %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %33, %7
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  %17 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %16, i32 0, i32 5
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  %24 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %23, i32 0, i32 5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @destroy_sni(i32 %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  %38 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %37, i32 0, i32 5
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @list_free(%struct.TYPE_2__* %39)
  %41 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  %42 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @destroy_watcher(i32 %43)
  %45 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  %46 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @destroy_watcher(i32 %47)
  %49 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  %50 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @sd_bus_flush_close_unref(i32 %51)
  %53 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  %54 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  %57 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @finish_themes(i32 %55, i32 %58)
  %60 = load %struct.swaybar_tray*, %struct.swaybar_tray** %2, align 8
  %61 = call i32 @free(%struct.swaybar_tray* %60)
  br label %62

62:                                               ; preds = %36, %6
  ret void
}

declare dso_local i32 @finish_host(i32*) #1

declare dso_local i32 @destroy_sni(i32) #1

declare dso_local i32 @list_free(%struct.TYPE_2__*) #1

declare dso_local i32 @destroy_watcher(i32) #1

declare dso_local i32 @sd_bus_flush_close_unref(i32) #1

declare dso_local i32 @finish_themes(i32, i32) #1

declare dso_local i32 @free(%struct.swaybar_tray*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
