; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_signal.c_signal_init.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_signal.c_signal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signal = type { i64, i32, i32, i32 }
%struct.sigaction = type { i32, i32, i32 }

@signals = common dso_local global %struct.signal* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"sigaction(%s) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@NC_ERROR = common dso_local global i64 0, align 8
@NC_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @signal_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.signal*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sigaction, align 4
  %5 = load %struct.signal*, %struct.signal** @signals, align 8
  store %struct.signal* %5, %struct.signal** %2, align 8
  br label %6

6:                                                ; preds = %38, %0
  %7 = load %struct.signal*, %struct.signal** %2, align 8
  %8 = getelementptr inbounds %struct.signal, %struct.signal* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %6
  %12 = call i32 @memset(%struct.sigaction* %4, i32 0, i32 12)
  %13 = load %struct.signal*, %struct.signal** %2, align 8
  %14 = getelementptr inbounds %struct.signal, %struct.signal* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.signal*, %struct.signal** %2, align 8
  %18 = getelementptr inbounds %struct.signal, %struct.signal* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %4, i32 0, i32 0
  %22 = call i32 @sigemptyset(i32* %21)
  %23 = load %struct.signal*, %struct.signal** %2, align 8
  %24 = getelementptr inbounds %struct.signal, %struct.signal* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @sigaction(i64 %25, %struct.sigaction* %4, i32* null)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %11
  %30 = load %struct.signal*, %struct.signal** %2, align 8
  %31 = getelementptr inbounds %struct.signal, %struct.signal* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 @log_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34)
  %36 = load i64, i64* @NC_ERROR, align 8
  store i64 %36, i64* %1, align 8
  br label %43

37:                                               ; preds = %11
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.signal*, %struct.signal** %2, align 8
  %40 = getelementptr inbounds %struct.signal, %struct.signal* %39, i32 1
  store %struct.signal* %40, %struct.signal** %2, align 8
  br label %6

41:                                               ; preds = %6
  %42 = load i64, i64* @NC_OK, align 8
  store i64 %42, i64* %1, align 8
  br label %43

43:                                               ; preds = %41, %29
  %44 = load i64, i64* %1, align 8
  ret i64 %44
}

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i64, %struct.sigaction*, i32*) #1

declare dso_local i32 @log_error(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
