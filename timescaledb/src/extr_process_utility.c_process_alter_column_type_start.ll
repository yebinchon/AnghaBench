; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_alter_column_type_start.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_alter_column_type_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@NAMEDATALEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TS_OPERATION_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"cannot change the type of a hash-partitioned column\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"cannot change the type of a column with a custom partitioning function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_13__*)* @process_alter_column_type_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_alter_column_type_start(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %69, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %7
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %22
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %6, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = call i64 @IS_CLOSED_DIMENSION(%struct.TYPE_12__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %15
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @NameStr(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NAMEDATALEN, align 4
  %37 = call i64 @strncmp(i32 %32, i32 %35, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_TS_OPERATION_NOT_SUPPORTED, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @ereport(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %27, %15
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @NameStr(i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NAMEDATALEN, align 4
  %60 = call i64 @strncmp(i32 %55, i32 %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_TS_OPERATION_NOT_SUPPORTED, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = call i32 @errmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 @ereport(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %50, %45
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %7

72:                                               ; preds = %7
  ret void
}

declare dso_local i64 @IS_CLOSED_DIMENSION(%struct.TYPE_12__*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
