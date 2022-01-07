; ModuleID = '/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-upload.c_open_file_for_upload.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal-remote/extr_journal-upload.c_open_file_for_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to open %s: %m\00", align 1
@arg_follow = common dso_local global i64 0, align 8
@EPOLLIN = common dso_local global i32 0, align 4
@dispatch_fd_input = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to register input event: %m\00", align 1
@fd_input_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @open_file_for_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_file_for_upload(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @streq(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %12, i32* %6, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = load i32, i32* @O_CLOEXEC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @O_NOCTTY, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open(i8* %14, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32, i32* @errno, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (i32, i8*, ...) @log_error_errno(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 %26, i32* %3, align 4
  br label %66

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %11
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* @arg_follow, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @EPOLLIN, align 4
  %42 = load i32, i32* @dispatch_fd_input, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = call i32 @sd_event_add_io(i32 %37, i32* %39, i32 %40, i32 %41, i32 %42, %struct.TYPE_6__* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %34
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* @arg_follow, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i32, i8*, ...) @log_error_errno(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 %57, i32* %3, align 4
  br label %66

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = load i32, i32* @fd_input_callback, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = call i32 @start_upload(%struct.TYPE_6__* %59, i32 %60, %struct.TYPE_6__* %61)
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %58, %34
  br label %64

64:                                               ; preds = %63, %28
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %55, %23
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @sd_event_add_io(i32, i32*, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @start_upload(%struct.TYPE_6__*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
