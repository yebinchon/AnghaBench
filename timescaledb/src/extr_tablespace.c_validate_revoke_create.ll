; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_tablespace.c_validate_revoke_create.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_tablespace.c_validate_revoke_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"cannot revoke privilege while tablespace \22%s\22 is attached to hypertable \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Detach the tablespace before revoking the privilege on it.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @validate_revoke_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_revoke_create(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ACL_CREATE, align 4
  %11 = call i64 @pg_tablespace_aclcheck(i32 %8, i32 %9, i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @ACLCHECK_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @get_tablespace_name(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @get_rel_name(i32 %21)
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  %24 = call i32 @errhint(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @ereport(i32 %16, i32 %24)
  br label %26

26:                                               ; preds = %15, %3
  ret void
}

declare dso_local i64 @pg_tablespace_aclcheck(i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @get_tablespace_name(i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
