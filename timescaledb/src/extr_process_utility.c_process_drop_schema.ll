; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_drop_schema.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_drop_schema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@EVENT_TRIGGER_DROP_SCHEMA = common dso_local global i64 0, align 8
@INTERNAL_SCHEMA_NAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"cannot drop the internal schema for extension \22%s\22\00", align 1
@EXTENSION_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Use DROP EXTENSION to remove the extension and the schema.\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"the chunk storage schema changed to \22%s\22 for %d hypertable%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @process_drop_schema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_drop_schema(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @EVENT_TRIGGER_DROP_SCHEMA, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = bitcast %struct.TYPE_5__* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %3, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @INTERNAL_SCHEMA_NAME, align 4
  %18 = call i64 @strcmp(i32 %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i32, i32* @EXTENSION_NAME, align 4
  %25 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @errhint(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %21, i32 %26)
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ts_hypertable_reset_associated_schema_name(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i32, i32* @NOTICE, align 4
  %37 = load i32, i32* @INTERNAL_SCHEMA_NAME, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sgt i32 %39, 1
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 115, i32 0
  %43 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38, i32 %42)
  %44 = call i32 @ereport(i32 %36, i32 %43)
  br label %45

45:                                               ; preds = %35, %28
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @ts_hypertable_reset_associated_schema_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
