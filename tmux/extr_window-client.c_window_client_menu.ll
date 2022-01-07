; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-client.c_window_client_menu.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-client.c_window_client_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%struct.window_client_modedata = type { %struct.window_pane* }
%struct.window_pane = type { i32 }
%struct.window_mode_entry = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.client*, i32)* @window_client_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_client_menu(i8* %0, %struct.client* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.window_client_modedata*, align 8
  %8 = alloca %struct.window_pane*, align 8
  %9 = alloca %struct.window_mode_entry*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.client* %1, %struct.client** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.window_client_modedata*
  store %struct.window_client_modedata* %11, %struct.window_client_modedata** %7, align 8
  %12 = load %struct.window_client_modedata*, %struct.window_client_modedata** %7, align 8
  %13 = getelementptr inbounds %struct.window_client_modedata, %struct.window_client_modedata* %12, i32 0, i32 0
  %14 = load %struct.window_pane*, %struct.window_pane** %13, align 8
  store %struct.window_pane* %14, %struct.window_pane** %8, align 8
  %15 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %16 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %15, i32 0, i32 0
  %17 = call %struct.window_mode_entry* @TAILQ_FIRST(i32* %16)
  store %struct.window_mode_entry* %17, %struct.window_mode_entry** %9, align 8
  %18 = load %struct.window_mode_entry*, %struct.window_mode_entry** %9, align 8
  %19 = icmp eq %struct.window_mode_entry* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.window_mode_entry*, %struct.window_mode_entry** %9, align 8
  %22 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %3
  br label %32

27:                                               ; preds = %20
  %28 = load %struct.window_mode_entry*, %struct.window_mode_entry** %9, align 8
  %29 = load %struct.client*, %struct.client** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @window_client_key(%struct.window_mode_entry* %28, %struct.client* %29, i32* null, i32* null, i32 %30, i32* null)
  br label %32

32:                                               ; preds = %27, %26
  ret void
}

declare dso_local %struct.window_mode_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @window_client_key(%struct.window_mode_entry*, %struct.client*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
