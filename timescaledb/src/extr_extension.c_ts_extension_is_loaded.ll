; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_extension.c_ts_extension_is_loaded.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_extension.c_ts_extension_is_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ts_guc_restoring = common dso_local global i64 0, align 8
@extstate = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown state: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_extension_is_loaded() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @ts_guc_restoring, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %21

5:                                                ; preds = %0
  %6 = load i32, i32* @extstate, align 4
  %7 = icmp eq i32 128, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @extstate, align 4
  %10 = icmp eq i32 129, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %5
  %12 = call i32 (...) @extension_update_state()
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, i32* @extstate, align 4
  switch i32 %14, label %17 [
    i32 131, label %15
    i32 130, label %16
    i32 128, label %16
    i32 129, label %16
  ]

15:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %21

16:                                               ; preds = %13, %13, %13
  store i32 0, i32* %1, align 4
  br label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @extstate, align 4
  %20 = call i32 @elog(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %17, %16, %15, %4
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @extension_update_state(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
