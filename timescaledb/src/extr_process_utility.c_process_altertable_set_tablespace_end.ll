; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_altertable_set_tablespace_end.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_altertable_set_tablespace_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"cannot set new tablespace when multiple tablespaces are attached to hypertable \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Detach tablespaces before altering the hypertable.\00", align 1
@process_altertable_chunk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_21__*)* @process_altertable_set_tablespace_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_altertable_set_tablespace_end(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @namestrcpy(i32* %5, i32 %10)
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_19__* @ts_tablespace_scan(i32 %15)
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %6, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_rel_name(i32 %27)
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = call i32 @errhint(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %22, i32 %30)
  br label %32

32:                                               ; preds = %21, %2
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ts_hypertable_has_tablespace(%struct.TYPE_20__* %38, i32 %44)
  %46 = call i32 @Assert(i32 %45)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @NameStr(i32 %57)
  %59 = call i32 @ts_tablespace_delete(i32 %50, i32 %58)
  br label %60

60:                                               ; preds = %37, %32
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ts_tablespace_attach_internal(i32* %5, i32 %63, i32 1)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %66 = load i32, i32* @process_altertable_chunk, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = call i32 @foreach_chunk(%struct.TYPE_20__* %65, i32 %66, %struct.TYPE_21__* %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %70 = call i64 @TS_HYPERTABLE_HAS_COMPRESSION(%struct.TYPE_20__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %60
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_20__* @ts_hypertable_get_by_id(i32 %76)
  store %struct.TYPE_20__* %77, %struct.TYPE_20__** %7, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %82 = call i32 @list_make1(%struct.TYPE_21__* %81)
  %83 = call i32 @AlterTableInternal(i32 %80, i32 %82, i32 0)
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  call void @process_altertable_set_tablespace_end(%struct.TYPE_20__* %84, %struct.TYPE_21__* %85)
  br label %86

86:                                               ; preds = %72, %60
  ret void
}

declare dso_local i32 @namestrcpy(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @ts_tablespace_scan(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ts_hypertable_has_tablespace(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ts_tablespace_delete(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @ts_tablespace_attach_internal(i32*, i32, i32) #1

declare dso_local i32 @foreach_chunk(%struct.TYPE_20__*, i32, %struct.TYPE_21__*) #1

declare dso_local i64 @TS_HYPERTABLE_HAS_COMPRESSION(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @ts_hypertable_get_by_id(i32) #1

declare dso_local i32 @AlterTableInternal(i32, i32, i32) #1

declare dso_local i32 @list_make1(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
