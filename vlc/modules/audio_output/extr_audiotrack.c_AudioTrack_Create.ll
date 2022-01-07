; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@jfields = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@getMinBufferSize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"getMinBufferSize returned an invalid size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i32, i32, i32)* @AudioTrack_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AudioTrack_Create(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %12, align 8
  %19 = load i32, i32* %11, align 4
  switch i32 %19, label %32 [
    i32 130, label %20
    i32 131, label %26
    i32 128, label %28
    i32 129, label %30
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 0), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 1), align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 2), align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %15, align 4
  br label %34

26:                                               ; preds = %5
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 0), align 4
  store i32 %27, i32* %15, align 4
  br label %34

28:                                               ; preds = %5
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 3), align 4
  store i32 %29, i32* %15, align 4
  br label %34

30:                                               ; preds = %5
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 4), align 4
  store i32 %31, i32* %15, align 4
  br label %34

32:                                               ; preds = %5
  %33 = call i32 (...) @vlc_assert_unreachable()
  br label %34

34:                                               ; preds = %32, %30, %28, %26, %20
  %35 = load i32, i32* @getMinBufferSize, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @JNI_AT_CALL_STATIC_INT(i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = call i32 @msg_Warn(%struct.TYPE_11__* %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %74

45:                                               ; preds = %34
  %46 = load i32, i32* %14, align 4
  %47 = mul nsw i32 %46, 2
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i64 @AudioTrack_New(i32* %48, %struct.TYPE_11__* %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  store i32 -1, i32* %6, align 4
  br label %74

57:                                               ; preds = %45
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %57, %56, %42
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @JNI_AT_CALL_STATIC_INT(i32, i32, i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @AudioTrack_New(i32*, %struct.TYPE_11__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
