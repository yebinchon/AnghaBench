; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_tablespace.c_ts_tablespace_attach_internal.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_tablespace.c_ts_tablespace_attach_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid tablespace name\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid hypertable\00", align 1
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"tablespace \22%s\22 does not exist\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"The tablespace needs to be created before attaching it to a hypertable.\00", align 1
@MyDatabaseTableSpace = common dso_local global i64 0, align 8
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"permission denied for tablespace \22%s\22 by table owner \22%s\22\00", align 1
@ERRCODE_TS_HYPERTABLE_NOT_EXIST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"table \22%s\22 is not a hypertable\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@ERRCODE_TS_TABLESPACE_ALREADY_ATTACHED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"tablespace \22%s\22 is already attached to hypertable \22%s\22, skipping\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"tablespace \22%s\22 is already attached to hypertable \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_tablespace_attach_internal(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* null, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ERROR, align 4
  %17 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @OidIsValid(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @NameStr(i32 %27)
  %29 = call i64 @get_tablespace_oid(i32 %28, i32 1)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @OidIsValid(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @NameStr(i32 %38)
  %40 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = call i32 @errhint(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 @ereport(i32 %34, i32 %41)
  br label %43

43:                                               ; preds = %33, %25
  %44 = load i64, i64* %5, align 8
  %45 = call i32 (...) @GetUserId()
  %46 = call i64 @ts_hypertable_permissions_check(i64 %44, i32 %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @MyDatabaseTableSpace, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %43
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* @ACL_CREATE, align 4
  %54 = call i64 @pg_tablespace_aclcheck(i64 %51, i64 %52, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @ACLCHECK_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @NameStr(i32 %63)
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @GetUserNameFromId(i64 %65, i32 1)
  %67 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %64, i32 %66)
  %68 = call i32 @ereport(i32 %59, i32 %67)
  br label %69

69:                                               ; preds = %58, %50
  br label %70

70:                                               ; preds = %69, %43
  %71 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %71, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call %struct.TYPE_6__* @ts_hypertable_cache_get_entry(i32* %72, i64 %73)
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %8, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = icmp eq %struct.TYPE_6__* null, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i32, i32* @ERRCODE_TS_HYPERTABLE_NOT_EXIST, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @get_rel_name(i64 %81)
  %83 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = call i32 @ereport(i32 %78, i32 %83)
  br label %85

85:                                               ; preds = %77, %70
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @ts_hypertable_has_tablespace(%struct.TYPE_6__* %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i32, i32* @NOTICE, align 4
  %95 = load i32, i32* @ERRCODE_TS_TABLESPACE_ALREADY_ATTACHED, align 4
  %96 = call i32 @errcode(i32 %95)
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @NameStr(i32 %98)
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @get_rel_name(i64 %100)
  %102 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %99, i32 %101)
  %103 = call i32 @ereport(i32 %94, i32 %102)
  br label %115

104:                                              ; preds = %90
  %105 = load i32, i32* @ERROR, align 4
  %106 = load i32, i32* @ERRCODE_TS_TABLESPACE_ALREADY_ATTACHED, align 4
  %107 = call i32 @errcode(i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @NameStr(i32 %109)
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @get_rel_name(i64 %111)
  %113 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %110, i32 %112)
  %114 = call i32 @ereport(i32 %105, i32 %113)
  br label %115

115:                                              ; preds = %104, %93
  br label %128

116:                                              ; preds = %85
  %117 = call i32 (...) @ts_catalog_database_info_get()
  %118 = call i32 @ts_catalog_database_info_become_owner(i32 %117, i32* %12)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @NameStr(i32 %124)
  %126 = call i32 @tablespace_insert(i32 %122, i32 %125)
  %127 = call i32 @ts_catalog_restore_user(i32* %12)
  br label %128

128:                                              ; preds = %116, %115
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @ts_cache_release(i32* %129)
  ret void
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i64 @get_tablespace_oid(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @ts_hypertable_permissions_check(i64, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i64 @pg_tablespace_aclcheck(i64, i64, i32) #1

declare dso_local i32 @GetUserNameFromId(i64, i32) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local %struct.TYPE_6__* @ts_hypertable_cache_get_entry(i32*, i64) #1

declare dso_local i32 @get_rel_name(i64) #1

declare dso_local i64 @ts_hypertable_has_tablespace(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @ts_catalog_database_info_become_owner(i32, i32*) #1

declare dso_local i32 @ts_catalog_database_info_get(...) #1

declare dso_local i32 @tablespace_insert(i32, i32) #1

declare dso_local i32 @ts_catalog_restore_user(i32*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
