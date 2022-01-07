; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_log.c_log_reopen.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_log.c_log_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logger = type { i64, i32 }

@logger = common dso_local global %struct.logger zeroinitializer, align 8
@STDERR_FILENO = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"reopening log file '%s' failed, ignored: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_reopen() #0 {
  %1 = alloca %struct.logger*, align 8
  store %struct.logger* @logger, %struct.logger** %1, align 8
  %2 = load %struct.logger*, %struct.logger** %1, align 8
  %3 = getelementptr inbounds %struct.logger, %struct.logger* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @STDERR_FILENO, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %35

7:                                                ; preds = %0
  %8 = load %struct.logger*, %struct.logger** %1, align 8
  %9 = getelementptr inbounds %struct.logger, %struct.logger* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @close(i64 %10)
  %12 = load %struct.logger*, %struct.logger** %1, align 8
  %13 = getelementptr inbounds %struct.logger, %struct.logger* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @O_WRONLY, align 4
  %16 = load i32, i32* @O_APPEND, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @O_CREAT, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @open(i32 %14, i32 %19, i32 420)
  %21 = load %struct.logger*, %struct.logger** %1, align 8
  %22 = getelementptr inbounds %struct.logger, %struct.logger* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.logger*, %struct.logger** %1, align 8
  %24 = getelementptr inbounds %struct.logger, %struct.logger* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %7
  %28 = load %struct.logger*, %struct.logger** %1, align 8
  %29 = getelementptr inbounds %struct.logger, %struct.logger* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 @log_stderr_safe(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %27, %7
  br label %35

35:                                               ; preds = %34, %0
  ret void
}

declare dso_local i32 @close(i64) #1

declare dso_local i64 @open(i32, i32, i32) #1

declare dso_local i32 @log_stderr_safe(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
