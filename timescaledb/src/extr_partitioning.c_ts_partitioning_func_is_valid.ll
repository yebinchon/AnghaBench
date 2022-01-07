; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_partitioning.c_ts_partitioning_func_is_valid.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_partitioning.c_ts_partitioning_func_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@ACL_EXECUTE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"permission denied for function %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_partitioning_func_is_valid(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @PROCOID, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ObjectIdGetDatum(i32 %11)
  %13 = call i32 @SearchSysCache1(i32 %10, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @HeapTupleIsValid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @elog(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (...) @GetUserId()
  %24 = load i32, i32* @ACL_EXECUTE, align 4
  %25 = call i64 @pg_proc_aclcheck(i32 %22, i32 %23, i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @ACLCHECK_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @get_func_name(i32 %33)
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = call i32 @ereport(i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %29, %21
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @GETSTRUCT(i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @IS_VALID_PARTITIONING_FUNC(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ReleaseSysCache(i32 %44)
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @pg_proc_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @get_func_name(i32) #1

declare dso_local i32 @IS_VALID_PARTITIONING_FUNC(i32, i32, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
