; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_file_handler.c_file_handler_stop.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_file_handler.c_file_handler_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_handler = type { i32, i64, i32, i32 }

@PROCESS_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Could not terminate install process\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_handler_stop(%struct.file_handler* %0) #0 {
  %2 = alloca %struct.file_handler*, align 8
  store %struct.file_handler* %0, %struct.file_handler** %2, align 8
  %3 = load %struct.file_handler*, %struct.file_handler** %2, align 8
  %4 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @mutex_lock(i32 %5)
  %7 = load %struct.file_handler*, %struct.file_handler** %2, align 8
  %8 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.file_handler*, %struct.file_handler** %2, align 8
  %10 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cond_signal(i32 %11)
  %13 = load %struct.file_handler*, %struct.file_handler** %2, align 8
  %14 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PROCESS_NONE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.file_handler*, %struct.file_handler** %2, align 8
  %20 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @cmd_terminate(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = call i32 @LOGW(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = load %struct.file_handler*, %struct.file_handler** %2, align 8
  %28 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @cmd_simple_wait(i64 %29, i32* null)
  %31 = load i64, i64* @PROCESS_NONE, align 8
  %32 = load %struct.file_handler*, %struct.file_handler** %2, align 8
  %33 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %26, %1
  %35 = load %struct.file_handler*, %struct.file_handler** %2, align 8
  %36 = getelementptr inbounds %struct.file_handler, %struct.file_handler* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mutex_unlock(i32 %37)
  ret void
}

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @cond_signal(i32) #1

declare dso_local i32 @cmd_terminate(i64) #1

declare dso_local i32 @LOGW(i8*) #1

declare dso_local i32 @cmd_simple_wait(i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
