; ModuleID = '/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-upload-journal.c_open_journal_for_upload.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-upload-journal.c_open_journal_for_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"sd_journal_get_fd failed: %m\00", align 1
@JOURNAL_UPLOAD_POLL_TIMEOUT = common dso_local global i32 0, align 4
@dispatch_journal_input = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register input event: %m\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Listening for journal events on fd:%d, timeout %d\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Not listening for journal events.\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to seek to cursor %s: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_journal_for_upload(%struct.TYPE_5__* %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i32* %15, i32** %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @sd_journal_set_data_threshold(i32* %18, i32 0)
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %5
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @sd_journal_get_fd(i32* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %12, align 4
  %29 = call i32 (i32, i8*, ...) @log_error_errno(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  br label %104

30:                                               ; preds = %22
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @sd_journal_get_events(i32* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @sd_journal_reliable_fd(i32* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp sge i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  br label %48

44:                                               ; preds = %30
  %45 = load i32, i32* @JOURNAL_UPLOAD_POLL_TIMEOUT, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @dispatch_journal_input, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = call i32 @sd_event_add_io(i32 %51, i32* %53, i32 %54, i32 %55, i32 %56, %struct.TYPE_5__* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i32, i32* %13, align 4
  %63 = call i32 (i32, i8*, ...) @log_error_errno(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 %63, i32* %6, align 4
  br label %104

64:                                               ; preds = %48
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = icmp eq i64 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %76

72:                                               ; preds = %64
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  br label %76

76:                                               ; preds = %72, %71
  %77 = phi i32 [ -1, %71 ], [ %75, %72 ]
  %78 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %77)
  br label %81

79:                                               ; preds = %5
  %80 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i8*, i8** %9, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i32*, i32** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @sd_journal_seek_cursor(i32* %85, i8* %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* %13, align 4
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 (i32, i8*, ...) @log_error_errno(i32 %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  store i32 %93, i32* %6, align 4
  br label %104

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %81
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = add nsw i32 1, %101
  %103 = call i32 @process_journal_input(%struct.TYPE_5__* %96, i32 %102)
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %95, %90, %61, %27
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @sd_journal_set_data_threshold(i32*, i32) #1

declare dso_local i32 @sd_journal_get_fd(i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @sd_journal_get_events(i32*) #1

declare dso_local i32 @sd_journal_reliable_fd(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sd_event_add_io(i32, i32*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local i32 @sd_journal_seek_cursor(i32*, i8*) #1

declare dso_local i32 @process_journal_input(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
