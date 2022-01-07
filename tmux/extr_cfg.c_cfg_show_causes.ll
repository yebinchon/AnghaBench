; ModuleID = '/home/carl/AnghaBench/tmux/extr_cfg.c_cfg_show_causes.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cfg.c_cfg_show_causes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.window_pane* }
%struct.window_pane = type { i32 }
%struct.window_mode_entry = type { i32* }

@cfg_ncauses = common dso_local global i64 0, align 8
@window_view_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@cfg_causes = common dso_local global i32***** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg_show_causes(%struct.session* %0) #0 {
  %2 = alloca %struct.session*, align 8
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca i64, align 8
  store %struct.session* %0, %struct.session** %2, align 8
  %6 = load %struct.session*, %struct.session** %2, align 8
  %7 = icmp eq %struct.session* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* @cfg_ncauses, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %1
  br label %57

12:                                               ; preds = %8
  %13 = load %struct.session*, %struct.session** %2, align 8
  %14 = getelementptr inbounds %struct.session, %struct.session* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.window_pane*, %struct.window_pane** %18, align 8
  store %struct.window_pane* %19, %struct.window_pane** %3, align 8
  %20 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %21 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %20, i32 0, i32 0
  %22 = call %struct.window_mode_entry* @TAILQ_FIRST(i32* %21)
  store %struct.window_mode_entry* %22, %struct.window_mode_entry** %4, align 8
  %23 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %24 = icmp eq %struct.window_mode_entry* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %12
  %26 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %27 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, @window_view_mode
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %12
  %31 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %32 = call i32 @window_pane_set_mode(%struct.window_pane* %31, i32* @window_view_mode, i32* null, i32* null)
  br label %33

33:                                               ; preds = %30, %25
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @cfg_ncauses, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %40 = load i32*****, i32****** @cfg_causes, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i32****, i32***** %40, i64 %41
  %43 = load i32****, i32***** %42, align 8
  %44 = call i32 @window_copy_add(%struct.window_pane* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32**** %43)
  %45 = load i32*****, i32****** @cfg_causes, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i32****, i32***** %45, i64 %46
  %48 = load i32****, i32***** %47, align 8
  %49 = bitcast i32**** %48 to i32*****
  %50 = call i32 @free(i32***** %49)
  br label %51

51:                                               ; preds = %38
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %34

54:                                               ; preds = %34
  %55 = load i32*****, i32****** @cfg_causes, align 8
  %56 = call i32 @free(i32***** %55)
  store i32***** null, i32****** @cfg_causes, align 8
  store i64 0, i64* @cfg_ncauses, align 8
  br label %57

57:                                               ; preds = %54, %11
  ret void
}

declare dso_local %struct.window_mode_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @window_pane_set_mode(%struct.window_pane*, i32*, i32*, i32*) #1

declare dso_local i32 @window_copy_add(%struct.window_pane*, i8*, i32****) #1

declare dso_local i32 @free(i32*****) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
