; ModuleID = '/home/carl/AnghaBench/tmux/extr_menu.c_menu_free_cb.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_menu.c_menu_free_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.menu_data* }
%struct.menu_data = type { i32, i32, i32, i32 (i32, i32, i32, i32)*, i32* }

@UINT_MAX = common dso_local global i32 0, align 4
@KEYC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*)* @menu_free_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_free_cb(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca %struct.menu_data*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %4 = load %struct.client*, %struct.client** %2, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 0
  %6 = load %struct.menu_data*, %struct.menu_data** %5, align 8
  store %struct.menu_data* %6, %struct.menu_data** %3, align 8
  %7 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %8 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %13 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @cmdq_continue(i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %18 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %17, i32 0, i32 3
  %19 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %18, align 8
  %20 = icmp ne i32 (i32, i32, i32, i32)* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %23 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %22, i32 0, i32 3
  %24 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %23, align 8
  %25 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %26 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UINT_MAX, align 4
  %29 = load i32, i32* @KEYC_NONE, align 4
  %30 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %31 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %24(i32 %27, i32 %28, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %21, %16
  %35 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %36 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %35, i32 0, i32 1
  %37 = call i32 @screen_free(i32* %36)
  %38 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %39 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @menu_free(i32 %40)
  %42 = load %struct.menu_data*, %struct.menu_data** %3, align 8
  %43 = call i32 @free(%struct.menu_data* %42)
  ret void
}

declare dso_local i32 @cmdq_continue(i32*) #1

declare dso_local i32 @screen_free(i32*) #1

declare dso_local i32 @menu_free(i32) #1

declare dso_local i32 @free(%struct.menu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
