; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_ts_hypertable_lock_tuple_simple.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_ts_hypertable_lock_tuple_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_LOCK_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"hypertable \22%s\22 has already been updated by another transaction\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Retry the operation again\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"hypertable \22%s\22 is being updated by another transaction\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"attempted to lock invisible tuple\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"unexpected tuple lock status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_hypertable_lock_tuple_simple(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @ts_hypertable_lock_tuple(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %32 [
    i32 130, label %8
    i32 131, label %9
    i32 129, label %10
    i32 133, label %19
    i32 128, label %28
    i32 132, label %29
  ]

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %35

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load i32, i32* @ERROR, align 4
  %12 = load i32, i32* @ERRCODE_LOCK_NOT_AVAILABLE, align 4
  %13 = call i32 @errcode(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @get_rel_name(i32 %14)
  %16 = call i32 @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @errhint(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @ereport(i32 %11, i32 %17)
  br label %19

19:                                               ; preds = %1, %10
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_LOCK_NOT_AVAILABLE, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @get_rel_name(i32 %23)
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = call i32 @errhint(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %20, i32 %26)
  br label %28

28:                                               ; preds = %1, %19
  store i32 0, i32* %2, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load i32, i32* @ERROR, align 4
  %31 = call i32 @elog(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %29, %28, %9, %8
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @ts_hypertable_lock_tuple(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
