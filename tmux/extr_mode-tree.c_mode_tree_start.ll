; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_start.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_tree_data = type { i32, i8**, i64, i32, %struct.screen, i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__, %struct.menu_item*, i8*, %struct.window_pane* }
%struct.screen = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.window_pane = type { i32 }
%struct.args = type { i32 }
%struct.menu_item = type { i32 }

@MODE_CURSOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mode_tree_data* @mode_tree_start(%struct.window_pane* %0, %struct.args* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.menu_item* %7, i8** %8, i64 %9, %struct.screen** %10) #0 {
  %12 = alloca %struct.window_pane*, align 8
  %13 = alloca %struct.args*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.menu_item*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.screen**, align 8
  %23 = alloca %struct.mode_tree_data*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store %struct.window_pane* %0, %struct.window_pane** %12, align 8
  store %struct.args* %1, %struct.args** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store %struct.menu_item* %7, %struct.menu_item** %19, align 8
  store i8** %8, i8*** %20, align 8
  store i64 %9, i64* %21, align 8
  store %struct.screen** %10, %struct.screen*** %22, align 8
  %26 = call %struct.mode_tree_data* @xcalloc(i32 1, i32 104)
  store %struct.mode_tree_data* %26, %struct.mode_tree_data** %23, align 8
  %27 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %28 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %30 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %31 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %30, i32 0, i32 14
  store %struct.window_pane* %29, %struct.window_pane** %31, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %34 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %33, i32 0, i32 13
  store i8* %32, i8** %34, align 8
  %35 = load %struct.menu_item*, %struct.menu_item** %19, align 8
  %36 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %37 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %36, i32 0, i32 12
  store %struct.menu_item* %35, %struct.menu_item** %37, align 8
  %38 = load i8**, i8*** %20, align 8
  %39 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %40 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %39, i32 0, i32 1
  store i8** %38, i8*** %40, align 8
  %41 = load i64, i64* %21, align 8
  %42 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %43 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.args*, %struct.args** %13, align 8
  %45 = call i64 @args_has(%struct.args* %44, float 7.800000e+01)
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %50 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.args*, %struct.args** %13, align 8
  %52 = call i8* @args_get(%struct.args* %51, float 7.900000e+01)
  store i8* %52, i8** %24, align 8
  %53 = load i8*, i8** %24, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %11
  store i64 0, i64* %25, align 8
  br label %56

56:                                               ; preds = %74, %55
  %57 = load i64, i64* %25, align 8
  %58 = load i64, i64* %21, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load i8*, i8** %24, align 8
  %62 = load i8**, i8*** %20, align 8
  %63 = load i64, i64* %25, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strcasecmp(i8* %61, i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load i64, i64* %25, align 8
  %70 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %71 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %60
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %25, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %25, align 8
  br label %56

77:                                               ; preds = %56
  br label %78

78:                                               ; preds = %77, %11
  %79 = load %struct.args*, %struct.args** %13, align 8
  %80 = call i64 @args_has(%struct.args* %79, float 1.140000e+02)
  %81 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %82 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %81, i32 0, i32 11
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i64 %80, i64* %83, align 8
  %84 = load %struct.args*, %struct.args** %13, align 8
  %85 = call i64 @args_has(%struct.args* %84, float 1.020000e+02)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load %struct.args*, %struct.args** %13, align 8
  %89 = call i8* @args_get(%struct.args* %88, float 1.020000e+02)
  %90 = call i32* @xstrdup(i8* %89)
  %91 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %92 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %91, i32 0, i32 10
  store i32* %90, i32** %92, align 8
  br label %96

93:                                               ; preds = %78
  %94 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %95 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %94, i32 0, i32 10
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %93, %87
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %99 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %98, i32 0, i32 9
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %102 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %105 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %17, align 4
  %107 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %108 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 4
  %109 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %110 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %109, i32 0, i32 5
  %111 = call i32 @TAILQ_INIT(i32* %110)
  %112 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  %113 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %112, i32 0, i32 4
  %114 = load %struct.screen**, %struct.screen*** %22, align 8
  store %struct.screen* %113, %struct.screen** %114, align 8
  %115 = load %struct.screen**, %struct.screen*** %22, align 8
  %116 = load %struct.screen*, %struct.screen** %115, align 8
  %117 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %118 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %117, i32 0, i32 0
  %119 = call i32 @screen_size_x(i32* %118)
  %120 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  %121 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %120, i32 0, i32 0
  %122 = call i32 @screen_size_y(i32* %121)
  %123 = call i32 @screen_init(%struct.screen* %116, i32 %119, i32 %122, i32 0)
  %124 = load i32, i32* @MODE_CURSOR, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.screen**, %struct.screen*** %22, align 8
  %127 = load %struct.screen*, %struct.screen** %126, align 8
  %128 = getelementptr inbounds %struct.screen, %struct.screen* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %125
  store i32 %130, i32* %128, align 4
  %131 = load %struct.mode_tree_data*, %struct.mode_tree_data** %23, align 8
  ret %struct.mode_tree_data* %131
}

declare dso_local %struct.mode_tree_data* @xcalloc(i32, i32) #1

declare dso_local i64 @args_has(%struct.args*, float) #1

declare dso_local i8* @args_get(%struct.args*, float) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32* @xstrdup(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @screen_init(%struct.screen*, i32, i32, i32) #1

declare dso_local i32 @screen_size_x(i32*) #1

declare dso_local i32 @screen_size_y(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
