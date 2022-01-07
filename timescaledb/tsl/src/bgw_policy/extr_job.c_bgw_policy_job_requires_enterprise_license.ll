; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/bgw_policy/extr_job.c_bgw_policy_job_requires_enterprise_license.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/bgw_policy/extr_job.c_bgw_policy_job_requires_enterprise_license.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"scheduler could not determine the license type for job type: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @bgw_policy_job_requires_enterprise_license to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgw_policy_job_requires_enterprise_license(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = call i32 (...) @license_print_expiration_warning_if_needed()
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %12 [
    i32 128, label %8
    i32 129, label %9
    i32 130, label %10
    i32 131, label %11
  ]

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @ERROR, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @NameStr(i32 %17)
  %19 = call i32 @elog(i32 %13, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %12
  %21 = call i32 (...) @pg_unreachable()
  br label %22

22:                                               ; preds = %20, %11, %10, %9, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @license_print_expiration_warning_if_needed(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @pg_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
