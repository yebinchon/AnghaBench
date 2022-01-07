; ModuleID = '/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_display_menu.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_mode-tree.c_mode_tree_display_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_item = type { i32 }
%struct.mode_tree_data = type { i32, i32, i32, i32, %struct.menu_item*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mode_tree_item* }
%struct.mode_tree_item = type { i32, i32 }
%struct.client = type { i32 }
%struct.menu = type { i32 }
%struct.mode_tree_menu = type { i32, i32, %struct.client*, %struct.mode_tree_data* }

@.str = private unnamed_addr constant [18 x i8] c"#[align=centre]%s\00", align 1
@mode_tree_menu_items = common dso_local global %struct.menu_item* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mode_tree_menu_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mode_tree_data*, %struct.client*, i32, i32, i32)* @mode_tree_display_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mode_tree_display_menu(%struct.mode_tree_data* %0, %struct.client* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mode_tree_data*, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mode_tree_item*, align 8
  %12 = alloca %struct.menu*, align 8
  %13 = alloca %struct.menu_item*, align 8
  %14 = alloca %struct.mode_tree_menu*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.mode_tree_data* %0, %struct.mode_tree_data** %6, align 8
  store %struct.client* %1, %struct.client** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %18 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %19, %20
  %22 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %23 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %29 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %16, align 4
  br label %37

31:                                               ; preds = %5
  %32 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %33 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %16, align 4
  br label %37

37:                                               ; preds = %31, %27
  %38 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %39 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %38, i32 0, i32 5
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.mode_tree_item*, %struct.mode_tree_item** %44, align 8
  store %struct.mode_tree_item* %45, %struct.mode_tree_item** %11, align 8
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %37
  %49 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %50 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %49, i32 0, i32 4
  %51 = load %struct.menu_item*, %struct.menu_item** %50, align 8
  store %struct.menu_item* %51, %struct.menu_item** %13, align 8
  %52 = load %struct.mode_tree_item*, %struct.mode_tree_item** %11, align 8
  %53 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @xasprintf(i8** %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %59

56:                                               ; preds = %37
  %57 = load %struct.menu_item*, %struct.menu_item** @mode_tree_menu_items, align 8
  store %struct.menu_item* %57, %struct.menu_item** %13, align 8
  %58 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %58, i8** %15, align 8
  br label %59

59:                                               ; preds = %56, %48
  %60 = load i8*, i8** %15, align 8
  %61 = call %struct.menu* @menu_create(i8* %60)
  store %struct.menu* %61, %struct.menu** %12, align 8
  %62 = load %struct.menu*, %struct.menu** %12, align 8
  %63 = load %struct.menu_item*, %struct.menu_item** %13, align 8
  %64 = call i32 @menu_add_items(%struct.menu* %62, %struct.menu_item* %63, i32* null, i32* null, i32* null)
  %65 = load i8*, i8** %15, align 8
  %66 = call i32 @free(i8* %65)
  %67 = call %struct.mode_tree_menu* @xmalloc(i32 24)
  store %struct.mode_tree_menu* %67, %struct.mode_tree_menu** %14, align 8
  %68 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %69 = load %struct.mode_tree_menu*, %struct.mode_tree_menu** %14, align 8
  %70 = getelementptr inbounds %struct.mode_tree_menu, %struct.mode_tree_menu* %69, i32 0, i32 3
  store %struct.mode_tree_data* %68, %struct.mode_tree_data** %70, align 8
  %71 = load %struct.client*, %struct.client** %7, align 8
  %72 = load %struct.mode_tree_menu*, %struct.mode_tree_menu** %14, align 8
  %73 = getelementptr inbounds %struct.mode_tree_menu, %struct.mode_tree_menu* %72, i32 0, i32 2
  store %struct.client* %71, %struct.client** %73, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load %struct.mode_tree_menu*, %struct.mode_tree_menu** %14, align 8
  %76 = getelementptr inbounds %struct.mode_tree_menu, %struct.mode_tree_menu* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mode_tree_item*, %struct.mode_tree_item** %11, align 8
  %78 = getelementptr inbounds %struct.mode_tree_item, %struct.mode_tree_item* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mode_tree_menu*, %struct.mode_tree_menu** %14, align 8
  %81 = getelementptr inbounds %struct.mode_tree_menu, %struct.mode_tree_menu* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mode_tree_data*, %struct.mode_tree_data** %6, align 8
  %83 = getelementptr inbounds %struct.mode_tree_data, %struct.mode_tree_data* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.menu*, %struct.menu** %12, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.client*, %struct.client** %7, align 8
  %90 = load i32, i32* @mode_tree_menu_callback, align 4
  %91 = load %struct.mode_tree_menu*, %struct.mode_tree_menu** %14, align 8
  %92 = call i64 @menu_display(%struct.menu* %86, i32 0, i32* null, i32 %87, i32 %88, %struct.client* %89, i32* null, i32 %90, %struct.mode_tree_menu* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %59
  %95 = load %struct.menu*, %struct.menu** %12, align 8
  %96 = call i32 @menu_free(%struct.menu* %95)
  br label %97

97:                                               ; preds = %94, %59
  ret void
}

declare dso_local i32 @xasprintf(i8**, i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.menu* @menu_create(i8*) #1

declare dso_local i32 @menu_add_items(%struct.menu*, %struct.menu_item*, i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.mode_tree_menu* @xmalloc(i32) #1

declare dso_local i64 @menu_display(%struct.menu*, i32, i32*, i32, i32, %struct.client*, i32*, i32, %struct.mode_tree_menu*) #1

declare dso_local i32 @menu_free(%struct.menu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
