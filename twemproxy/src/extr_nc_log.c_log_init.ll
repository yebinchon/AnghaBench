; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_log.c_log_init.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_log.c_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logger = type { i8*, i64, i32 }

@logger = common dso_local global %struct.logger zeroinitializer, align 8
@LOG_EMERG = common dso_local global i32 0, align 4
@LOG_PVERB = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"opening log file '%s' failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_init(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.logger*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.logger* @logger, %struct.logger** %6, align 8
  %7 = load i32, i32* @LOG_EMERG, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @LOG_PVERB, align 4
  %10 = call i32 @MIN(i32 %8, i32 %9)
  %11 = call i32 @MAX(i32 %7, i32 %10)
  %12 = load %struct.logger*, %struct.logger** %6, align 8
  %13 = getelementptr inbounds %struct.logger, %struct.logger* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.logger*, %struct.logger** %6, align 8
  %16 = getelementptr inbounds %struct.logger, %struct.logger* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %2
  %24 = load i64, i64* @STDERR_FILENO, align 8
  %25 = load %struct.logger*, %struct.logger** %6, align 8
  %26 = getelementptr inbounds %struct.logger, %struct.logger* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %47

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @O_WRONLY, align 4
  %30 = load i32, i32* @O_APPEND, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @O_CREAT, align 4
  %33 = or i32 %31, %32
  %34 = call i64 @open(i8* %28, i32 %33, i32 420)
  %35 = load %struct.logger*, %struct.logger** %6, align 8
  %36 = getelementptr inbounds %struct.logger, %struct.logger* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.logger*, %struct.logger** %6, align 8
  %38 = getelementptr inbounds %struct.logger, %struct.logger* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 @log_stderr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %44)
  store i32 -1, i32* %3, align 4
  br label %48

46:                                               ; preds = %27
  br label %47

47:                                               ; preds = %46, %23
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @open(i8*, i32, i32) #1

declare dso_local i32 @log_stderr(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
