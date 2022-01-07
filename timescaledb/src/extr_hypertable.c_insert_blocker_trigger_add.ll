; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_insert_blocker_trigger_add.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_insert_blocker_trigger_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIGGER_TYPE_INSERT = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@INTERNAL_SCHEMA_NAME = common dso_local global i32 0, align 4
@OLD_INSERT_BLOCKER_NAME = common dso_local global i32 0, align 4
@INSERT_BLOCKER_NAME = common dso_local global i32 0, align 4
@TRIGGER_TYPE_BEFORE = common dso_local global i32 0, align 4
@T_CreateTrigStmt = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not create insert blocker trigger\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @insert_blocker_trigger_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_blocker_trigger_add(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i8* @get_rel_name(i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @get_rel_namespace(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @get_namespace_name(i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %17 = load i32, i32* @TRIGGER_TYPE_INSERT, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %19 = load i32, i32* @NIL, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %21 = load i32, i32* @INTERNAL_SCHEMA_NAME, align 4
  %22 = call i32 @makeString(i32 %21)
  %23 = load i32, i32* @OLD_INSERT_BLOCKER_NAME, align 4
  %24 = call i32 @makeString(i32 %23)
  %25 = call i32 @list_make2(i32 %22, i32 %24)
  store i32 %25, i32* %20, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @makeRangeVar(i8* %27, i8* %28, i32 -1)
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  %31 = load i32, i32* @INSERT_BLOCKER_NAME, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 6
  %33 = load i32, i32* @TRIGGER_TYPE_BEFORE, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 7
  %35 = load i32, i32* @T_CreateTrigStmt, align 4
  store i32 %35, i32* %34, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @InvalidOid, align 4
  %38 = load i32, i32* @InvalidOid, align 4
  %39 = load i32, i32* @InvalidOid, align 4
  %40 = call i32 @CreateTriggerCompat(%struct.TYPE_6__* %7, i32* null, i32 %36, i32 %37, i32 %38, i32 %39, i32 0)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = bitcast %struct.TYPE_5__* %3 to i8*
  %43 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @OidIsValid(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %1
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  ret i32 %53
}

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @get_rel_namespace(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @list_make2(i32, i32) #1

declare dso_local i32 @makeString(i32) #1

declare dso_local i32 @makeRangeVar(i8*, i8*, i32) #1

declare dso_local i32 @CreateTriggerCompat(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
