; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_importd.c_transfer_on_log.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_importd.c_transfer_on_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to read log message: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i8*)* @transfer_on_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transfer_on_log(%struct.TYPE_6__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = call i32 @assert(%struct.TYPE_6__* %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %17 = call i32 @assert(%struct.TYPE_6__* %16)
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 8, %28
  %30 = call i64 @read(i32 %18, i64 %25, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @log_error_errno(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %4
  %37 = load i64, i64* %11, align 8
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sd_event_source_unref(i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %5, align 4
  br label %54

46:                                               ; preds = %36
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = call i32 @transfer_send_logs(%struct.TYPE_6__* %52, i32 0)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %39
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i64 @read(i32, i64, i64) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @transfer_send_logs(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
