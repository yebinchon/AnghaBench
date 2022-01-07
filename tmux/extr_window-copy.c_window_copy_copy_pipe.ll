; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_copy_pipe.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_copy_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { i32 }
%struct.session = type { i32 }
%struct.job = type { i32 }

@JOB_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, %struct.session*, i8*, i8*)* @window_copy_copy_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_copy_pipe(%struct.window_mode_entry* %0, %struct.session* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.window_mode_entry*, align 8
  %6 = alloca %struct.session*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.job*, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %5, align 8
  store %struct.session* %1, %struct.session** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.window_mode_entry*, %struct.window_mode_entry** %5, align 8
  %13 = call i8* @window_copy_get_selection(%struct.window_mode_entry* %12, i64* %10)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %32

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.session*, %struct.session** %6, align 8
  %20 = load i32, i32* @JOB_NOWAIT, align 4
  %21 = call %struct.job* @job_run(i8* %18, %struct.session* %19, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %20)
  store %struct.job* %21, %struct.job** %11, align 8
  %22 = load %struct.job*, %struct.job** %11, align 8
  %23 = call i32 @job_get_event(%struct.job* %22)
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @bufferevent_write(i32 %23, i8* %24, i64 %25)
  %27 = load %struct.window_mode_entry*, %struct.window_mode_entry** %5, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @window_copy_copy_buffer(%struct.window_mode_entry* %27, i8* %28, i8* %29, i64 %30)
  br label %32

32:                                               ; preds = %17, %16
  ret void
}

declare dso_local i8* @window_copy_get_selection(%struct.window_mode_entry*, i64*) #1

declare dso_local %struct.job* @job_run(i8*, %struct.session*, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @bufferevent_write(i32, i8*, i64) #1

declare dso_local i32 @job_get_event(%struct.job*) #1

declare dso_local i32 @window_copy_copy_buffer(%struct.window_mode_entry*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
