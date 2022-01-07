; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_destroy_theme.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_destroy_theme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icon_theme = type { %struct.TYPE_2__*, %struct.icon_theme*, %struct.icon_theme*, i32, %struct.icon_theme*, %struct.icon_theme* }
%struct.TYPE_2__ = type { i32, %struct.icon_theme_subdir** }
%struct.icon_theme_subdir = type { %struct.TYPE_2__*, %struct.icon_theme_subdir*, %struct.icon_theme_subdir*, i32, %struct.icon_theme_subdir*, %struct.icon_theme_subdir* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icon_theme*)* @destroy_theme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_theme(%struct.icon_theme* %0) #0 {
  %2 = alloca %struct.icon_theme*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.icon_theme_subdir*, align 8
  store %struct.icon_theme* %0, %struct.icon_theme** %2, align 8
  %5 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %6 = icmp ne %struct.icon_theme* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %68

8:                                                ; preds = %1
  %9 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %10 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %9, i32 0, i32 1
  %11 = load %struct.icon_theme*, %struct.icon_theme** %10, align 8
  %12 = bitcast %struct.icon_theme* %11 to %struct.icon_theme_subdir*
  %13 = call i32 @free(%struct.icon_theme_subdir* %12)
  %14 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %15 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %14, i32 0, i32 5
  %16 = load %struct.icon_theme*, %struct.icon_theme** %15, align 8
  %17 = bitcast %struct.icon_theme* %16 to %struct.icon_theme_subdir*
  %18 = call i32 @free(%struct.icon_theme_subdir* %17)
  %19 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %20 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %19, i32 0, i32 4
  %21 = load %struct.icon_theme*, %struct.icon_theme** %20, align 8
  %22 = bitcast %struct.icon_theme* %21 to %struct.icon_theme_subdir*
  %23 = call i32 @free(%struct.icon_theme_subdir* %22)
  %24 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %25 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @list_free_items_and_destroy(i32 %26)
  %28 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %29 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %28, i32 0, i32 2
  %30 = load %struct.icon_theme*, %struct.icon_theme** %29, align 8
  %31 = bitcast %struct.icon_theme* %30 to %struct.icon_theme_subdir*
  %32 = call i32 @free(%struct.icon_theme_subdir* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %57, %8
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %36 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %34, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %33
  %42 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %43 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.icon_theme_subdir**, %struct.icon_theme_subdir*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %46, i64 %48
  %50 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %49, align 8
  store %struct.icon_theme_subdir* %50, %struct.icon_theme_subdir** %4, align 8
  %51 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %4, align 8
  %52 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %51, i32 0, i32 1
  %53 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %52, align 8
  %54 = call i32 @free(%struct.icon_theme_subdir* %53)
  %55 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %4, align 8
  %56 = call i32 @free(%struct.icon_theme_subdir* %55)
  br label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %62 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @list_free(%struct.TYPE_2__* %63)
  %65 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %66 = bitcast %struct.icon_theme* %65 to %struct.icon_theme_subdir*
  %67 = call i32 @free(%struct.icon_theme_subdir* %66)
  br label %68

68:                                               ; preds = %60, %7
  ret void
}

declare dso_local i32 @free(%struct.icon_theme_subdir*) #1

declare dso_local i32 @list_free_items_and_destroy(i32) #1

declare dso_local i32 @list_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
