; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_oss.c_OpenAudioDevOss.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_oss.c_OpenAudioDevOss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot open OSS audio device (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@AFMT_S16_LE = common dso_local global i32 0, align 4
@SNDCTL_DSP_SETFMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot set audio format (16b little endian) (%s)\00", align 1
@SNDCTL_DSP_STEREO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cannot set audio channels count (%s)\00", align 1
@SNDCTL_DSP_SPEED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"cannot set audio sample rate (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @OpenAudioDevOss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenAudioDevOss(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = load i32, i32* @O_NONBLOCK, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @vlc_open(i32 %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @vlc_strerror_c(i32 %22)
  %24 = call i32 @msg_Err(%struct.TYPE_5__* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %68

25:                                               ; preds = %1
  %26 = load i32, i32* @AFMT_S16_LE, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SNDCTL_DSP_SETFMT, align 4
  %29 = call i64 @ioctl(i32 %27, i32 %28, i32* %6)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @AFMT_S16_LE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31, %25
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @vlc_strerror_c(i32 %37)
  %39 = call i32 @msg_Err(%struct.TYPE_5__* %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %68

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SNDCTL_DSP_STEREO, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i64 @ioctl(i32 %41, i32 %42, i32* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @vlc_strerror_c(i32 %49)
  %51 = call i32 @msg_Err(%struct.TYPE_5__* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %68

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SNDCTL_DSP_SPEED, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = call i64 @ioctl(i32 %53, i32 %54, i32* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @vlc_strerror_c(i32 %61)
  %63 = call i32 @msg_Err(%struct.TYPE_5__* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %68

64:                                               ; preds = %52
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i32 6144, i32* %66, align 4
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %75

68:                                               ; preds = %59, %47, %35, %20
  %69 = load i32, i32* %5, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @vlc_close(i32 %72)
  br label %74

74:                                               ; preds = %71, %68
  store i32 -1, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @vlc_open(i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @vlc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
