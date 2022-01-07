; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_set_cursor.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.screen_write_ctx = type { %struct.screen*, %struct.window_pane* }
%struct.screen = type { i32, i32 }
%struct.window_pane = type { %struct.window* }
%struct.window = type { i32 }

@__const.screen_write_set_cursor.tv = private unnamed_addr constant %struct.timeval { i32 10000 }, align 4
@screen_write_offset_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen_write_ctx*, i32, i32)* @screen_write_set_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @screen_write_set_cursor(%struct.screen_write_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.screen_write_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca %struct.window*, align 8
  %9 = alloca %struct.screen*, align 8
  %10 = alloca %struct.timeval, align 4
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %11, i32 0, i32 1
  %13 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  store %struct.window_pane* %13, %struct.window_pane** %7, align 8
  %14 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.screen_write_ctx, %struct.screen_write_ctx* %14, i32 0, i32 0
  %16 = load %struct.screen*, %struct.screen** %15, align 8
  store %struct.screen* %16, %struct.screen** %9, align 8
  %17 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.timeval* @__const.screen_write_set_cursor.tv to i8*), i64 4, i1 false)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.screen*, %struct.screen** %9, align 8
  %23 = getelementptr inbounds %struct.screen, %struct.screen* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.screen*, %struct.screen** %9, align 8
  %32 = getelementptr inbounds %struct.screen, %struct.screen* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %96

36:                                               ; preds = %29, %26, %20, %3
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.screen*, %struct.screen** %9, align 8
  %42 = call i32 @screen_size_x(%struct.screen* %41)
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.screen*, %struct.screen** %9, align 8
  %46 = call i32 @screen_size_x(%struct.screen* %45)
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.screen*, %struct.screen** %9, align 8
  %51 = getelementptr inbounds %struct.screen, %struct.screen* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %36
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.screen*, %struct.screen** %9, align 8
  %58 = call i32 @screen_size_y(%struct.screen* %57)
  %59 = sub nsw i32 %58, 1
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.screen*, %struct.screen** %9, align 8
  %63 = call i32 @screen_size_y(%struct.screen* %62)
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.screen*, %struct.screen** %9, align 8
  %68 = getelementptr inbounds %struct.screen, %struct.screen* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %52
  %70 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %71 = icmp eq %struct.window_pane* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %96

73:                                               ; preds = %69
  %74 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %75 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %74, i32 0, i32 0
  %76 = load %struct.window*, %struct.window** %75, align 8
  store %struct.window* %76, %struct.window** %8, align 8
  %77 = load %struct.window*, %struct.window** %8, align 8
  %78 = getelementptr inbounds %struct.window, %struct.window* %77, i32 0, i32 0
  %79 = call i32 @event_initialized(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %73
  %82 = load %struct.window*, %struct.window** %8, align 8
  %83 = getelementptr inbounds %struct.window, %struct.window* %82, i32 0, i32 0
  %84 = load i32, i32* @screen_write_offset_timer, align 4
  %85 = load %struct.window*, %struct.window** %8, align 8
  %86 = call i32 @evtimer_set(i32* %83, i32 %84, %struct.window* %85)
  br label %87

87:                                               ; preds = %81, %73
  %88 = load %struct.window*, %struct.window** %8, align 8
  %89 = getelementptr inbounds %struct.window, %struct.window* %88, i32 0, i32 0
  %90 = call i32 @evtimer_pending(i32* %89, i32* null)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load %struct.window*, %struct.window** %8, align 8
  %94 = getelementptr inbounds %struct.window, %struct.window* %93, i32 0, i32 0
  %95 = call i32 @evtimer_add(i32* %94, %struct.timeval* %10)
  br label %96

96:                                               ; preds = %35, %72, %92, %87
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @screen_size_x(%struct.screen*) #2

declare dso_local i32 @screen_size_y(%struct.screen*) #2

declare dso_local i32 @event_initialized(i32*) #2

declare dso_local i32 @evtimer_set(i32*, i32, %struct.window*) #2

declare dso_local i32 @evtimer_pending(i32*, i32*) #2

declare dso_local i32 @evtimer_add(i32*, %struct.timeval*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
