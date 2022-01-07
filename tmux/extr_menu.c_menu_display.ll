; ModuleID = '/home/carl/AnghaBench/tmux/extr_menu.c_menu_display.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_menu.c_menu_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i64, i64 }
%struct.cmdq_item = type { i32 }
%struct.client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.cmd_find_state = type { i32 }
%struct.menu_data = type { i32, i32, i8*, i32, %struct.menu*, i8*, i8*, i32, i32, %struct.cmdq_item* }

@menu_draw_cb = common dso_local global i32 0, align 4
@menu_key_cb = common dso_local global i32 0, align 4
@menu_free_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_display(%struct.menu* %0, i32 %1, %struct.cmdq_item* %2, i8* %3, i8* %4, %struct.client* %5, %struct.cmd_find_state* %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.menu*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.cmdq_item*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.client*, align 8
  %17 = alloca %struct.cmd_find_state*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.menu_data*, align 8
  store %struct.menu* %0, %struct.menu** %11, align 8
  store i32 %1, i32* %12, align 4
  store %struct.cmdq_item* %2, %struct.cmdq_item** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store %struct.client* %5, %struct.client** %16, align 8
  store %struct.cmd_find_state* %6, %struct.cmd_find_state** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %21 = load %struct.client*, %struct.client** %16, align 8
  %22 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.menu*, %struct.menu** %11, align 8
  %26 = getelementptr inbounds %struct.menu, %struct.menu* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 4
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %9
  %31 = load %struct.client*, %struct.client** %16, align 8
  %32 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.menu*, %struct.menu** %11, align 8
  %36 = getelementptr inbounds %struct.menu, %struct.menu* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 2
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30, %9
  store i32 -1, i32* %10, align 4
  br label %91

41:                                               ; preds = %30
  %42 = call %struct.menu_data* @xcalloc(i32 1, i32 64)
  store %struct.menu_data* %42, %struct.menu_data** %20, align 8
  %43 = load %struct.cmdq_item*, %struct.cmdq_item** %13, align 8
  %44 = load %struct.menu_data*, %struct.menu_data** %20, align 8
  %45 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %44, i32 0, i32 9
  store %struct.cmdq_item* %43, %struct.cmdq_item** %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.menu_data*, %struct.menu_data** %20, align 8
  %48 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.cmd_find_state*, %struct.cmd_find_state** %17, align 8
  %50 = icmp ne %struct.cmd_find_state* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.menu_data*, %struct.menu_data** %20, align 8
  %53 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %52, i32 0, i32 8
  %54 = load %struct.cmd_find_state*, %struct.cmd_find_state** %17, align 8
  %55 = call i32 @cmd_find_copy_state(i32* %53, %struct.cmd_find_state* %54)
  br label %56

56:                                               ; preds = %51, %41
  %57 = load %struct.menu_data*, %struct.menu_data** %20, align 8
  %58 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %57, i32 0, i32 7
  %59 = load %struct.menu*, %struct.menu** %11, align 8
  %60 = getelementptr inbounds %struct.menu, %struct.menu* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 4
  %63 = load %struct.menu*, %struct.menu** %11, align 8
  %64 = getelementptr inbounds %struct.menu, %struct.menu* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 2
  %67 = call i32 @screen_init(i32* %58, i64 %62, i64 %66, i32 0)
  %68 = load i8*, i8** %14, align 8
  %69 = load %struct.menu_data*, %struct.menu_data** %20, align 8
  %70 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = load %struct.menu_data*, %struct.menu_data** %20, align 8
  %73 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.menu*, %struct.menu** %11, align 8
  %75 = load %struct.menu_data*, %struct.menu_data** %20, align 8
  %76 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %75, i32 0, i32 4
  store %struct.menu* %74, %struct.menu** %76, align 8
  %77 = load %struct.menu_data*, %struct.menu_data** %20, align 8
  %78 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %77, i32 0, i32 1
  store i32 -1, i32* %78, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load %struct.menu_data*, %struct.menu_data** %20, align 8
  %81 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load i8*, i8** %19, align 8
  %83 = load %struct.menu_data*, %struct.menu_data** %20, align 8
  %84 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.client*, %struct.client** %16, align 8
  %86 = load i32, i32* @menu_draw_cb, align 4
  %87 = load i32, i32* @menu_key_cb, align 4
  %88 = load i32, i32* @menu_free_cb, align 4
  %89 = load %struct.menu_data*, %struct.menu_data** %20, align 8
  %90 = call i32 @server_client_set_overlay(%struct.client* %85, i32 0, i32 %86, i32 %87, i32 %88, %struct.menu_data* %89)
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %56, %40
  %92 = load i32, i32* %10, align 4
  ret i32 %92
}

declare dso_local %struct.menu_data* @xcalloc(i32, i32) #1

declare dso_local i32 @cmd_find_copy_state(i32*, %struct.cmd_find_state*) #1

declare dso_local i32 @screen_init(i32*, i64, i64, i32) #1

declare dso_local i32 @server_client_set_overlay(%struct.client*, i32, i32, i32, i32, %struct.menu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
