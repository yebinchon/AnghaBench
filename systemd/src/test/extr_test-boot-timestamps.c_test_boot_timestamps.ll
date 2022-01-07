; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-boot-timestamps.c_test_boot_timestamps.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-boot-timestamps.c_test_boot_timestamps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@FORMAT_TIMESTAMP_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to read variables: %m\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Firmware began %s before kernel.\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Loader began %s before kernel.\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Firmware began %s.\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Loader began %s.\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Kernel began %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_boot_timestamps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_boot_timestamps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %11 = load i32, i32* @FORMAT_TIMESTAMP_MAX, align 4
  %12 = call i32 @MAX(i32 %10, i32 %11)
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %2, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %16 = call i32 @dual_timestamp_from_monotonic(%struct.TYPE_5__* %6, i32 0)
  %17 = call i32 @boot_timestamps(i32* null, %struct.TYPE_5__* %4, %struct.TYPE_5__* %5)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %0
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = call i64 (...) @getuid()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @EACCES, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br label %38

38:                                               ; preds = %33, %28, %20
  %39 = phi i1 [ true, %28 ], [ true, %20 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @LOG_DEBUG, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @LOG_ERR, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @log_full_errno(i32 %48, i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ 0, %53 ], [ %55, %54 ]
  store i32 %57, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %84

58:                                               ; preds = %0
  %59 = trunc i64 %13 to i32
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @format_timespan(i8* %15, i32 %59, i32 %61, i32 0)
  %63 = call i32 @log_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = trunc i64 %13 to i32
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @format_timespan(i8* %15, i32 %64, i32 %66, i32 0)
  %68 = call i32 @log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = trunc i64 %13 to i32
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @format_timestamp(i8* %15, i32 %69, i32 %71)
  %73 = call i32 @log_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = trunc i64 %13 to i32
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @format_timestamp(i8* %15, i32 %74, i32 %76)
  %78 = call i32 @log_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = trunc i64 %13 to i32
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @format_timestamp(i8* %15, i32 %79, i32 %81)
  %83 = call i32 @log_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %84

84:                                               ; preds = %58, %56
  %85 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %1, align 4
  ret i32 %86
}

declare dso_local i32 @MAX(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dual_timestamp_from_monotonic(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @boot_timestamps(i32*, %struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @log_full_errno(i32, i32, i8*) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @format_timespan(i8*, i32, i32, i32) #1

declare dso_local i32 @format_timestamp(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
