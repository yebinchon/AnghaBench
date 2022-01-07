; ModuleID = '/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-remote.c_journal_remote_handle_raw_source.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-remote.c_journal_remote_handle_raw_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__**, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"EOF reached with source %s (fd=%d)\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Premature EOF. %zu bytes lost.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%zu active sources remaining\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Entry with too many fields, skipped\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Entry too big, skipped\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Closing connection: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_remote_handle_raw_source(i32* %0, i32 %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp slt i32 %16, %20
  br label %22

22:                                               ; preds = %15, %4
  %23 = phi i1 [ false, %4 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %28, i64 %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %10, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @process_source(%struct.TYPE_8__* %41, i32 %44, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = call i64 @journal_importer_eof(%struct.TYPE_10__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %22
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = call i64 @journal_importer_bytes_remaining(%struct.TYPE_10__* %64)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = load i64, i64* %12, align 8
  %70 = call i32 (i8*, ...) @log_notice(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %68, %53
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @remove_source(%struct.TYPE_9__* %72, i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  store i32 0, i32* %5, align 4
  br label %112

82:                                               ; preds = %22
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @E2BIG, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 (i8*, ...) @log_notice(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %112

89:                                               ; preds = %82
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @ENOBUFS, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = call i32 (i8*, ...) @log_notice(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %112

96:                                               ; preds = %89
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @EAGAIN, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %112

102:                                              ; preds = %96
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @log_debug_errno(i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @remove_source(%struct.TYPE_9__* %108, i32 %109)
  store i32 0, i32* %5, align 4
  br label %112

111:                                              ; preds = %102
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %105, %101, %94, %87, %71
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @process_source(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @journal_importer_eof(%struct.TYPE_10__*) #1

declare dso_local i32 @log_debug(i8*, i32, ...) #1

declare dso_local i64 @journal_importer_bytes_remaining(%struct.TYPE_10__*) #1

declare dso_local i32 @log_notice(i8*, ...) #1

declare dso_local i32 @remove_source(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
