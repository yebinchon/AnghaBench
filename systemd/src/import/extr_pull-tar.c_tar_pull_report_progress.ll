; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_pull-tar.c_tar_pull_report_progress.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_pull-tar.c_tar_pull_report_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Unknown progress state\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"X_IMPORT_PROGRESS=%u\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Combined progress %u%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @tar_pull_report_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tar_pull_report_progress(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = call i32 @assert(%struct.TYPE_12__* %7)
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %81 [
    i32 130, label %10
    i32 128, label %78
    i32 129, label %79
    i32 131, label %80
  ]

10:                                               ; preds = %2
  store i32 85, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 5
  %22 = sdiv i32 %21, 100
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub i32 %25, 5
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %15, %10
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 5
  %39 = sdiv i32 %38, 100
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub i32 %42, 5
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %32, %27
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 5
  %56 = sdiv i32 %55, 100
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub i32 %59, 5
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %49, %44
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = icmp ne %struct.TYPE_11__* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = mul i32 %71, %72
  %74 = udiv i32 %73, 100
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %66, %61
  br label %83

78:                                               ; preds = %2
  store i32 85, i32* %5, align 4
  br label %83

79:                                               ; preds = %2
  store i32 90, i32* %5, align 4
  br label %83

80:                                               ; preds = %2
  store i32 95, i32* %5, align 4
  br label %83

81:                                               ; preds = %2
  %82 = call i32 @assert_not_reached(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %80, %79, %78, %77
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @sd_notifyf(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

declare dso_local i32 @sd_notifyf(i32, i8*, i32) #1

declare dso_local i32 @log_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
