; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_job.c_ts_bgw_job_permission_check.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_job.c_ts_bgw_job_permission_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"insufficient permssions to alter job %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_bgw_job_permission_check(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = call i32 @ts_bgw_job_owner(%struct.TYPE_6__* %4)
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @GetUserId()
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @has_privs_of_role(i32 %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ERROR, align 4
  %12 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %13 = call i32 @errcode(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @ereport(i32 %11, i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @ts_bgw_job_owner(%struct.TYPE_6__*) #1

declare dso_local i32 @has_privs_of_role(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
