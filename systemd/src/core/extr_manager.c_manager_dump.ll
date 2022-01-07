; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_dump.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }

@_MANAGER_TIMESTAMP_MAX = common dso_local global i64 0, align 8
@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@FORMAT_TIMESTAMP_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%sTimestamp %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @manager_dump(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = call i32 @assert(%struct.TYPE_14__* %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = call i32 @assert(%struct.TYPE_14__* %13)
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %62, %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @_MANAGER_TIMESTAMP_MAX, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %15
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i64 %23
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %8, align 8
  %25 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %26 = load i32, i32* @FORMAT_TIMESTAMP_MAX, align 4
  %27 = call i32 @CONST_MAX(i32 %25, i32 %26)
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %9, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = call i64 @dual_timestamp_is_set(%struct.TYPE_13__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %19
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @strempty(i8* %36)
  %38 = load i64, i64* %7, align 8
  %39 = call i8* @manager_timestamp_to_string(i64 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @timestamp_is_set(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = trunc i64 %28 to i32
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @format_timestamp(i8* %30, i32 %46, i32 %49)
  br label %57

51:                                               ; preds = %34
  %52 = trunc i64 %28 to i32
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @format_timespan(i8* %30, i32 %52, i32 %55, i32 1)
  br label %57

57:                                               ; preds = %51, %45
  %58 = phi i8* [ %50, %45 ], [ %56, %51 ]
  %59 = call i32 @fprintf(%struct.TYPE_14__* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %39, i8* %58)
  br label %60

60:                                               ; preds = %57, %19
  %61 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %62

62:                                               ; preds = %60
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %15

65:                                               ; preds = %15
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @manager_dump_units(%struct.TYPE_14__* %66, %struct.TYPE_14__* %67, i8* %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @manager_dump_jobs(%struct.TYPE_14__* %70, %struct.TYPE_14__* %71, i8* %72)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @CONST_MAX(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @dual_timestamp_is_set(%struct.TYPE_13__*) #1

declare dso_local i32 @fprintf(%struct.TYPE_14__*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @strempty(i8*) #1

declare dso_local i8* @manager_timestamp_to_string(i64) #1

declare dso_local i64 @timestamp_is_set(i32) #1

declare dso_local i8* @format_timestamp(i8*, i32, i32) #1

declare dso_local i8* @format_timespan(i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @manager_dump_units(%struct.TYPE_14__*, %struct.TYPE_14__*, i8*) #1

declare dso_local i32 @manager_dump_jobs(%struct.TYPE_14__*, %struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
