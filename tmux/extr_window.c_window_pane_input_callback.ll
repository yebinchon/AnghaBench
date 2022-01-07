; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_pane_input_callback.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_pane_input_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32*, %struct.evbuffer* }
%struct.evbuffer = type { i32 }
%struct.window_pane_input_data = type { i32, i32 }
%struct.window_pane = type { i32 }

@CLIENT_DEAD = common dso_local global i32 0, align 4
@CLIENT_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*, i32, i8*)* @window_pane_input_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_pane_input_callback(%struct.client* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.window_pane_input_data*, align 8
  %8 = alloca %struct.window_pane*, align 8
  %9 = alloca %struct.evbuffer*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.window_pane_input_data*
  store %struct.window_pane_input_data* %13, %struct.window_pane_input_data** %7, align 8
  %14 = load %struct.client*, %struct.client** %4, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 2
  %16 = load %struct.evbuffer*, %struct.evbuffer** %15, align 8
  store %struct.evbuffer* %16, %struct.evbuffer** %9, align 8
  %17 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %18 = call i32* @EVBUFFER_DATA(%struct.evbuffer* %17)
  store i32* %18, i32** %10, align 8
  %19 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %20 = call i64 @EVBUFFER_LENGTH(%struct.evbuffer* %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.window_pane_input_data*, %struct.window_pane_input_data** %7, align 8
  %22 = getelementptr inbounds %struct.window_pane_input_data, %struct.window_pane_input_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.window_pane* @window_pane_find_by_id(i32 %23)
  store %struct.window_pane* %24, %struct.window_pane** %8, align 8
  %25 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %26 = icmp eq %struct.window_pane* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.client*, %struct.client** %4, align 8
  %32 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CLIENT_DEAD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %30, %27, %3
  %38 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %39 = icmp eq %struct.window_pane* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @CLIENT_EXIT, align 4
  %42 = load %struct.client*, %struct.client** %4, align 8
  %43 = getelementptr inbounds %struct.client, %struct.client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %37
  %47 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @evbuffer_drain(%struct.evbuffer* %47, i64 %48)
  %50 = load %struct.client*, %struct.client** %4, align 8
  %51 = getelementptr inbounds %struct.client, %struct.client* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.client*, %struct.client** %4, align 8
  %53 = call i32 @server_client_unref(%struct.client* %52)
  %54 = load %struct.window_pane_input_data*, %struct.window_pane_input_data** %7, align 8
  %55 = getelementptr inbounds %struct.window_pane_input_data, %struct.window_pane_input_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cmdq_continue(i32 %56)
  %58 = load %struct.window_pane_input_data*, %struct.window_pane_input_data** %7, align 8
  %59 = call i32 @free(%struct.window_pane_input_data* %58)
  br label %68

60:                                               ; preds = %30
  %61 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @input_parse_buffer(%struct.window_pane* %61, i32* %62, i64 %63)
  %65 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @evbuffer_drain(%struct.evbuffer* %65, i64 %66)
  br label %68

68:                                               ; preds = %60, %46
  ret void
}

declare dso_local i32* @EVBUFFER_DATA(%struct.evbuffer*) #1

declare dso_local i64 @EVBUFFER_LENGTH(%struct.evbuffer*) #1

declare dso_local %struct.window_pane* @window_pane_find_by_id(i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i64) #1

declare dso_local i32 @server_client_unref(%struct.client*) #1

declare dso_local i32 @cmdq_continue(i32) #1

declare dso_local i32 @free(%struct.window_pane_input_data*) #1

declare dso_local i32 @input_parse_buffer(%struct.window_pane*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
