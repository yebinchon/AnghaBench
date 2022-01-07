; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_se_Release.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_se_Release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_extractor_private = type { i32, i64, i64, i32 (%struct.stream_extractor_private*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stream_extractor_private*)* @se_Release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se_Release(%struct.stream_extractor_private* %0) #0 {
  %2 = alloca %struct.stream_extractor_private*, align 8
  store %struct.stream_extractor_private* %0, %struct.stream_extractor_private** %2, align 8
  %3 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %2, align 8
  %4 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %3, i32 0, i32 3
  %5 = load i32 (%struct.stream_extractor_private*)*, i32 (%struct.stream_extractor_private*)** %4, align 8
  %6 = icmp ne i32 (%struct.stream_extractor_private*)* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %2, align 8
  %9 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %8, i32 0, i32 3
  %10 = load i32 (%struct.stream_extractor_private*)*, i32 (%struct.stream_extractor_private*)** %9, align 8
  %11 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %2, align 8
  %12 = call i32 %10(%struct.stream_extractor_private* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %2, align 8
  %15 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %2, align 8
  %20 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %2, align 8
  %23 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @module_unneed(i32 %21, i64 %24)
  %26 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %2, align 8
  %27 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %2, align 8
  %32 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @vlc_stream_Delete(i64 %33)
  br label %35

35:                                               ; preds = %30, %18
  br label %36

36:                                               ; preds = %35, %13
  %37 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %2, align 8
  %38 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @vlc_object_delete(i32 %39)
  ret void
}

declare dso_local i32 @module_unneed(i32, i64) #1

declare dso_local i32 @vlc_stream_Delete(i64) #1

declare dso_local i32 @vlc_object_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
