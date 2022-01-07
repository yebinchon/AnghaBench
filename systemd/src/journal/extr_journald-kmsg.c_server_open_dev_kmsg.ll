; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-kmsg.c_server_open_dev_kmsg.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-kmsg.c_server_open_dev_kmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i64 }

@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/kmsg\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to open /dev/kmsg, ignoring: %m\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@dispatch_dev_kmsg = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to add /dev/kmsg fd to event loop: %m\00", align 1
@SD_EVENT_PRIORITY_IMPORTANT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"Failed to adjust priority of kmsg event source: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_open_dev_kmsg(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_5__* %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = load i32, i32* @O_CLOEXEC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_NONBLOCK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @O_NOCTTY, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %4, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @O_WRONLY, align 4
  %22 = load i32, i32* @O_CLOEXEC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @O_NONBLOCK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @O_NOCTTY, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %20, %12
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @ENOENT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @LOG_DEBUG, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @LOG_WARNING, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @log_full(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %107

48:                                               ; preds = %28
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %107

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @EPOLLIN, align 4
  %64 = load i32, i32* @dispatch_dev_kmsg, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = call i32 @sd_event_add_io(i32 %57, i32* %59, i64 %62, i32 %63, i32 %64, %struct.TYPE_5__* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %54
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @EPERM, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %93

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @log_error_errno(i32 %76, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %93

78:                                               ; preds = %54
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* @SD_EVENT_PRIORITY_IMPORTANT, align 8
  %83 = add nsw i64 %82, 10
  %84 = call i32 @sd_event_source_set_priority(i32 %81, i64 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @log_error_errno(i32 %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %93

90:                                               ; preds = %78
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 1, i32* %92, align 8
  store i32 0, i32* %2, align 4
  br label %107

93:                                               ; preds = %87, %75, %74
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @sd_event_source_unref(i32 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @safe_close(i64 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %93, %90, %53, %45
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @log_full(i32, i8*) #1

declare dso_local i32 @sd_event_add_io(i32, i32*, i64, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_event_source_set_priority(i32, i64) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i64 @safe_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
