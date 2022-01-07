; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journalctl.c_wait_for_change.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journalctl.c_wait_for_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }
%struct.timespec = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to determine journal waiting time: %m\00", align 1
@USEC_INFINITY = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Couldn't wait for journal event: %m\00", align 1
@POLLHUP = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Standard output has been closed.\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to process journal events: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @wait_for_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_change(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.pollfd], align 16
  %7 = alloca %struct.timespec, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 0
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 2
  %15 = load i32, i32* @POLLIN, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i64 1
  %17 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 0
  %18 = load i32, i32* @STDOUT_FILENO, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @sd_journal_get_timeout(i32* %28, i64* %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @log_error_errno(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %3, align 4
  br label %80

35:                                               ; preds = %2
  %36 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %37 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %38 = call i32 @ELEMENTSOF(%struct.pollfd* %37)
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @USEC_INFINITY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %46

43:                                               ; preds = %35
  %44 = load i64, i64* %8, align 8
  %45 = call i32* @timespec_store(%struct.timespec* %7, i64 %44)
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32* [ null, %42 ], [ %45, %43 ]
  %48 = call i64 @ppoll(%struct.pollfd* %36, i32 %38, i32* %47, i32* null)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* @errno, align 4
  %52 = load i32, i32* @EINTR, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %80

55:                                               ; preds = %50
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @log_error_errno(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 %57, i32* %3, align 4
  br label %80

58:                                               ; preds = %46
  %59 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 1
  %60 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @POLLHUP, align 4
  %63 = load i32, i32* @POLLERR, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32, i32* @ECANCELED, align 4
  %69 = call i32 @SYNTHETIC_ERRNO(i32 %68)
  %70 = call i32 @log_debug_errno(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 %70, i32* %3, align 4
  br label %80

71:                                               ; preds = %58
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @sd_journal_process(i32* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @log_error_errno(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %76, %67, %55, %54, %32
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sd_journal_get_timeout(i32*, i64*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i64 @ppoll(%struct.pollfd*, i32, i32*, i32*) #1

declare dso_local i32 @ELEMENTSOF(%struct.pollfd*) #1

declare dso_local i32* @timespec_store(%struct.timespec*, i64) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @sd_journal_process(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
