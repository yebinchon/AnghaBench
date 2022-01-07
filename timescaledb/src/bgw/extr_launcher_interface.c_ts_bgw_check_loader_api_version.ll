; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_launcher_interface.c_ts_bgw_check_loader_api_version.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_launcher_interface.c_ts_bgw_check_loader_api_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_LOADER_API_VERSION = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"loader version out-of-date\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Please restart the database to upgrade the loader version.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_bgw_check_loader_api_version() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @ts_bgw_loader_api_version()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @MIN_LOADER_API_VERSION, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @ERROR, align 4
  %8 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %9 = call i32 @errcode(i32 %8)
  %10 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @errhint(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @ereport(i32 %7, i32 %11)
  br label %13

13:                                               ; preds = %6, %0
  ret void
}

declare dso_local i32 @ts_bgw_loader_api_version(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
