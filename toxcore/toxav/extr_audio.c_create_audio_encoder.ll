; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_audio.c_create_audio_encoder.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_audio.c_create_audio_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPUS_OK = common dso_local global i32 0, align 4
@OPUS_APPLICATION_VOIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error while starting audio encoder: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Error while setting encoder ctl: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @create_audio_encoder(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @OPUS_OK, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @OPUS_APPLICATION_VOIP, align 4
  %14 = call i32* @opus_encoder_create(i32 %11, i32 %12, i32 %13, i32* %8)
  store i32* %14, i32** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @OPUS_OK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @opus_strerror(i32 %19)
  %21 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32* null, i32** %4, align 8
  br label %72

22:                                               ; preds = %3
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @OPUS_SET_BITRATE(i32 %24)
  %26 = call i32 @opus_encoder_ctl(i32* %23, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @OPUS_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @opus_strerror(i32 %31)
  %33 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %69

34:                                               ; preds = %22
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @OPUS_SET_INBAND_FEC(i32 1)
  %37 = call i32 @opus_encoder_ctl(i32* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @OPUS_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @opus_strerror(i32 %42)
  %44 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %69

45:                                               ; preds = %34
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @OPUS_SET_PACKET_LOSS_PERC(i32 10)
  %48 = call i32 @opus_encoder_ctl(i32* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @OPUS_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @opus_strerror(i32 %53)
  %55 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %69

56:                                               ; preds = %45
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @OPUS_SET_COMPLEXITY(i32 10)
  %59 = call i32 @opus_encoder_ctl(i32* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @OPUS_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @opus_strerror(i32 %64)
  %66 = call i32 @LOGGER_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %69

67:                                               ; preds = %56
  %68 = load i32*, i32** %9, align 8
  store i32* %68, i32** %4, align 8
  br label %72

69:                                               ; preds = %63, %52, %41, %30
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @opus_encoder_destroy(i32* %70)
  store i32* null, i32** %4, align 8
  br label %72

72:                                               ; preds = %69, %67, %18
  %73 = load i32*, i32** %4, align 8
  ret i32* %73
}

declare dso_local i32* @opus_encoder_create(i32, i32, i32, i32*) #1

declare dso_local i32 @LOGGER_ERROR(i8*, i32) #1

declare dso_local i32 @opus_strerror(i32) #1

declare dso_local i32 @opus_encoder_ctl(i32*, i32) #1

declare dso_local i32 @OPUS_SET_BITRATE(i32) #1

declare dso_local i32 @OPUS_SET_INBAND_FEC(i32) #1

declare dso_local i32 @OPUS_SET_PACKET_LOSS_PERC(i32) #1

declare dso_local i32 @OPUS_SET_COMPLEXITY(i32) #1

declare dso_local i32 @opus_encoder_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
