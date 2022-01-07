; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_stream.c_process_frame.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_stream.c_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Could not send packet to recorder\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream*, %struct.TYPE_5__*)* @process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_frame(%struct.stream* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.stream* %0, %struct.stream** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load %struct.stream*, %struct.stream** %4, align 8
  %7 = getelementptr inbounds %struct.stream, %struct.stream* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.stream*, %struct.stream** %4, align 8
  %12 = getelementptr inbounds %struct.stream, %struct.stream* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = call i32 @decoder_push(i64 %13, %struct.TYPE_5__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %39

18:                                               ; preds = %10, %2
  %19 = load %struct.stream*, %struct.stream** %4, align 8
  %20 = getelementptr inbounds %struct.stream, %struct.stream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.stream*, %struct.stream** %4, align 8
  %30 = getelementptr inbounds %struct.stream, %struct.stream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = call i32 @recorder_push(i64 %31, %struct.TYPE_5__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %23
  %36 = call i32 @LOGE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %39

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %18
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %35, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @decoder_push(i64, %struct.TYPE_5__*) #1

declare dso_local i32 @recorder_push(i64, %struct.TYPE_5__*) #1

declare dso_local i32 @LOGE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
