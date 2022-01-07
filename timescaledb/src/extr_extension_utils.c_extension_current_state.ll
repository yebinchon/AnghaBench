; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_extension_utils.c_extension_current_state.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_extension_utils.c_extension_current_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXTENSION_STATE_UNKNOWN = common dso_local global i32 0, align 4
@EXTENSION_STATE_TRANSITIONING = common dso_local global i32 0, align 4
@EXTENSION_STATE_CREATED = common dso_local global i32 0, align 4
@EXTENSION_STATE_NOT_INSTALLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @extension_current_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extension_current_state() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @IsNormalProcessingMode()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = call i32 (...) @IsTransactionState()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @EXTENSION_STATE_UNKNOWN, align 4
  store i32 %8, i32* %1, align 4
  br label %23

9:                                                ; preds = %4
  %10 = call i64 (...) @extension_is_transitioning()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @EXTENSION_STATE_TRANSITIONING, align 4
  store i32 %13, i32* %1, align 4
  br label %23

14:                                               ; preds = %9
  %15 = call i64 (...) @proxy_table_exists()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = call i32 (...) @extension_exists()
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32, i32* @EXTENSION_STATE_CREATED, align 4
  store i32 %20, i32* %1, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @EXTENSION_STATE_NOT_INSTALLED, align 4
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %17, %12, %7
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @IsNormalProcessingMode(...) #1

declare dso_local i32 @IsTransactionState(...) #1

declare dso_local i64 @extension_is_transitioning(...) #1

declare dso_local i64 @proxy_table_exists(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @extension_exists(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
