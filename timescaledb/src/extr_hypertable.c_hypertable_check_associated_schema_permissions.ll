; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_hypertable_check_associated_schema_permissions.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_hypertable_check_associated_schema_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i32 0, align 4
@INTERNAL_SCHEMA_NAME = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"permissions denied: cannot create schema \22%s\22 in database \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"permissions denied: cannot create chunks in schema \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @hypertable_check_associated_schema_permissions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypertable_check_associated_schema_permissions(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* null, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @InvalidOid, align 4
  store i32 %10, i32* %3, align 4
  br label %62

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @get_namespace_oid(i8* %12, i32 1)
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @INTERNAL_SCHEMA_NAME, align 4
  %16 = load i32, i32* @NAMEDATALEN, align 4
  %17 = call i64 @strncmp(i8* %14, i32 %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @OidIsValid(i32 %20)
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %62

24:                                               ; preds = %11
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @OidIsValid(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @MyDatabaseId, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ACL_CREATE, align 4
  %32 = call i64 @pg_database_aclcheck(i32 %29, i32 %30, i32 %31)
  %33 = load i64, i64* @ACLCHECK_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @MyDatabaseId, align 4
  %41 = call i32 @get_database_name(i32 %40)
  %42 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %41)
  %43 = call i32 @ereport(i32 %36, i32 %42)
  br label %44

44:                                               ; preds = %35, %28
  br label %60

45:                                               ; preds = %24
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ACL_CREATE, align 4
  %49 = call i64 @pg_namespace_aclcheck(i32 %46, i32 %47, i32 %48)
  %50 = load i64, i64* @ACLCHECK_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = call i32 @ereport(i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %19, %9
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @get_namespace_oid(i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i64 @pg_database_aclcheck(i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @get_database_name(i32) #1

declare dso_local i64 @pg_namespace_aclcheck(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
