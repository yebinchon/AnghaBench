; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_init_themes.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_init_themes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_themes(%struct.TYPE_11__** %0, %struct.TYPE_11__** %1) #0 {
  %3 = alloca %struct.TYPE_11__**, align 8
  %4 = alloca %struct.TYPE_11__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %3, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %4, align 8
  %7 = call %struct.TYPE_11__* (...) @get_basedirs()
  %8 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %8, align 8
  %9 = call %struct.TYPE_11__* (...) @create_list()
  %10 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %10, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %11
  %19 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_11__* @load_themes_in_dir(i32 %26)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %6, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = icmp eq %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %38

31:                                               ; preds = %18
  %32 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = call i32 @list_cat(%struct.TYPE_11__* %33, %struct.TYPE_11__* %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = call i32 @list_free(%struct.TYPE_11__* %36)
  br label %38

38:                                               ; preds = %31, %30
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %11

41:                                               ; preds = %11
  %42 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = call i32 @log_loaded_themes(%struct.TYPE_11__* %43)
  ret void
}

declare dso_local %struct.TYPE_11__* @get_basedirs(...) #1

declare dso_local %struct.TYPE_11__* @create_list(...) #1

declare dso_local %struct.TYPE_11__* @load_themes_in_dir(i32) #1

declare dso_local i32 @list_cat(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @list_free(%struct.TYPE_11__*) #1

declare dso_local i32 @log_loaded_themes(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
