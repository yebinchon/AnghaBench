; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_se_AttachWrapper.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_se_AttachWrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_extractor_private = type { %struct.TYPE_9__*, %struct.TYPE_9__*, i64 (%struct.stream_extractor_private*, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { %struct.stream_extractor_private*, i32 }

@se_StreamDelete = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream_extractor_private*, %struct.TYPE_9__*)* @se_AttachWrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se_AttachWrapper(%struct.stream_extractor_private* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stream_extractor_private*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.stream_extractor_private* %0, %struct.stream_extractor_private** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %8 = call i32 @vlc_object_parent(%struct.TYPE_9__* %7)
  %9 = load i32, i32* @se_StreamDelete, align 4
  %10 = call %struct.TYPE_9__* @vlc_stream_CommonNew(i32 %8, i32 %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %4, align 8
  %21 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %20, i32 0, i32 2
  %22 = load i64 (%struct.stream_extractor_private*, %struct.TYPE_9__*)*, i64 (%struct.stream_extractor_private*, %struct.TYPE_9__*)** %21, align 8
  %23 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %4, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = call i64 %22(%struct.stream_extractor_private* %23, %struct.TYPE_9__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = call i32 @stream_CommonDelete(%struct.TYPE_9__* %28)
  %30 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %30, i32* %3, align 4
  br label %57

31:                                               ; preds = %19
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %4, align 8
  %34 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %33, i32 0, i32 0
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %4, align 8
  %39 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 8
  %42 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %4, align 8
  %43 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %4, align 8
  %44 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store %struct.stream_extractor_private* %42, %struct.stream_extractor_private** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %4, align 8
  %49 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %48, i32 0, i32 1
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %49, align 8
  %50 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %4, align 8
  %51 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = call %struct.TYPE_9__* @stream_FilterChainNew(%struct.TYPE_9__* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %4, align 8
  %55 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %54, i32 0, i32 0
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %55, align 8
  %56 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %31, %27, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_9__* @vlc_stream_CommonNew(i32, i32) #1

declare dso_local i32 @vlc_object_parent(%struct.TYPE_9__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @stream_CommonDelete(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @stream_FilterChainNew(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
