; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_Play.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_Play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32 }

@jfields = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@.str = private unnamed_addr constant [45 x i8] c"ERROR_DEAD_OBJECT: try recreating AudioTrack\00", align 1
@play = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ERROR_INVALID_OPERATION\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ERROR_BAD_VALUE\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Write failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_18__*, i64, i64, i32)* @AudioTrack_Play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AudioTrack_Play(i32* %0, %struct.TYPE_18__* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %11, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %51 [
    i32 131, label %20
    i32 130, label %26
    i32 128, label %32
    i32 132, label %38
    i32 129, label %45
  ]

20:                                               ; preds = %5
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @AudioTrack_PlayByteArrayV23(i32* %21, %struct.TYPE_18__* %22, i64 %23, i64 %24)
  store i32 %25, i32* %12, align 4
  br label %53

26:                                               ; preds = %5
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @AudioTrack_PlayByteBuffer(i32* %27, %struct.TYPE_18__* %28, i64 %29, i64 %30)
  store i32 %31, i32* %12, align 4
  br label %53

32:                                               ; preds = %5
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @AudioTrack_PlayShortArrayV23(i32* %33, %struct.TYPE_18__* %34, i64 %35, i64 %36)
  store i32 %37, i32* %12, align 4
  br label %53

38:                                               ; preds = %5
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @AudioTrack_PlayByteArray(i32* %39, %struct.TYPE_18__* %40, i64 %41, i64 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  br label %53

45:                                               ; preds = %5
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @AudioTrack_PlayFloatArray(i32* %46, %struct.TYPE_18__* %47, i64 %48, i64 %49)
  store i32 %50, i32* %12, align 4
  br label %53

51:                                               ; preds = %5
  %52 = call i32 (...) @vlc_assert_unreachable()
  br label %53

53:                                               ; preds = %51, %45, %38, %32, %26, %20
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %97

56:                                               ; preds = %53
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @jfields, i32 0, i32 1, i32 1), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @jfields, i32 0, i32 1, i32 0), align 8
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = call i32 @msg_Warn(%struct.TYPE_18__* %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %68 = call i32 @AudioTrack_Recreate(i32* %66, %struct.TYPE_18__* %67)
  store i32 %68, i32* %12, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %73 = call i32 @AudioTrack_Reset(i32* %71, %struct.TYPE_18__* %72)
  %74 = load i32, i32* @play, align 4
  %75 = call i32 @JNI_AT_CALL_VOID(i32 %74)
  %76 = call i32 @CHECK_AT_EXCEPTION(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %70, %63
  br label %96

78:                                               ; preds = %59, %56
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @jfields, i32 0, i32 0, i32 0), align 8
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %90

83:                                               ; preds = %78
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @jfields, i32 0, i32 0, i32 1), align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %89

88:                                               ; preds = %83
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89, %82
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 @msg_Err(%struct.TYPE_18__* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %92)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %77
  br label %106

97:                                               ; preds = %53
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @BYTES_TO_FRAMES(i32 %98)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  br label %106

106:                                              ; preds = %97, %96
  %107 = load i32, i32* %12, align 4
  ret i32 %107
}

declare dso_local i32 @AudioTrack_PlayByteArrayV23(i32*, %struct.TYPE_18__*, i64, i64) #1

declare dso_local i32 @AudioTrack_PlayByteBuffer(i32*, %struct.TYPE_18__*, i64, i64) #1

declare dso_local i32 @AudioTrack_PlayShortArrayV23(i32*, %struct.TYPE_18__*, i64, i64) #1

declare dso_local i32 @AudioTrack_PlayByteArray(i32*, %struct.TYPE_18__*, i64, i64, i32) #1

declare dso_local i32 @AudioTrack_PlayFloatArray(i32*, %struct.TYPE_18__*, i64, i64) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @AudioTrack_Recreate(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @AudioTrack_Reset(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @JNI_AT_CALL_VOID(i32) #1

declare dso_local i32 @CHECK_AT_EXCEPTION(i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_18__*, i8*, i8*) #1

declare dso_local i64 @BYTES_TO_FRAMES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
