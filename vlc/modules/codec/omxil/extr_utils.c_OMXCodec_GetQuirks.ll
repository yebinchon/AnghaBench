; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_OMXCodec_GetQuirks.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_OMXCodec_GetQuirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str2quirks = type { i8*, i32, i8*, i32 }

@OMXCodec_GetQuirks.quirks_prefix = internal constant [9 x %struct.str2quirks] [%struct.str2quirks { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i32 134, i8* null, i32 0 }, %struct.str2quirks { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 135, i8* null, i32 0 }, %struct.str2quirks { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 133, i8* null, i32 0 }, %struct.str2quirks { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 133, i8* null, i32 0 }, %struct.str2quirks { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 133, i8* null, i32 0 }, %struct.str2quirks { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 133, i8* null, i32 0 }, %struct.str2quirks { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 133, i8* null, i32 0 }, %struct.str2quirks { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i32 132, i8* null, i32 0 }, %struct.str2quirks zeroinitializer], align 16
@.str = private unnamed_addr constant [28 x i8] c"OMX.MTK.VIDEO.DECODER.MPEG4\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"OMX.Marvell\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"OMX.SEC.avc.dec\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"OMX.SEC.avcdec\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"OMX.SEC.MPEG4.Decoder\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"OMX.SEC.mpeg4.dec\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"OMX.SEC.vc1.dec\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"OMX.amlogic.avc.decoder.awesome\00", align 1
@OMXCodec_GetQuirks.quirks_suffix = internal global [1 x %struct.str2quirks] zeroinitializer, align 16
@OMXCODEC_NO_QUIRKS = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OMXCodec_GetQuirks(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.str2quirks*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.str2quirks*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @OMXCODEC_NO_QUIRKS, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VIDEO_ES, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %24 [
    i32 131, label %21
    i32 129, label %21
  ]

21:                                               ; preds = %19, %19
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, 134
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %19, %21
  br label %36

25:                                               ; preds = %4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @AUDIO_ES, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %34 [
    i32 128, label %31
    i32 130, label %31
  ]

31:                                               ; preds = %29, %29
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, 134
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %29, %31
  br label %35

35:                                               ; preds = %34, %25
  br label %36

36:                                               ; preds = %35, %24
  store %struct.str2quirks* getelementptr inbounds ([9 x %struct.str2quirks], [9 x %struct.str2quirks]* @OMXCodec_GetQuirks.quirks_prefix, i64 0, i64 0), %struct.str2quirks** %10, align 8
  br label %37

37:                                               ; preds = %61, %36
  %38 = load %struct.str2quirks*, %struct.str2quirks** %10, align 8
  %39 = getelementptr inbounds %struct.str2quirks, %struct.str2quirks* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load %struct.str2quirks*, %struct.str2quirks** %10, align 8
  %44 = getelementptr inbounds %struct.str2quirks, %struct.str2quirks* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @__MIN(i64 %49, i32 %50)
  %52 = call i32 @strncmp(i8* %46, i8* %47, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %42
  %55 = load %struct.str2quirks*, %struct.str2quirks** %10, align 8
  %56 = getelementptr inbounds %struct.str2quirks, %struct.str2quirks* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %54, %42
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.str2quirks*, %struct.str2quirks** %10, align 8
  %63 = getelementptr inbounds %struct.str2quirks, %struct.str2quirks* %62, i32 1
  store %struct.str2quirks* %63, %struct.str2quirks** %10, align 8
  br label %37

64:                                               ; preds = %37
  store %struct.str2quirks* getelementptr inbounds ([1 x %struct.str2quirks], [1 x %struct.str2quirks]* @OMXCodec_GetQuirks.quirks_suffix, i64 0, i64 0), %struct.str2quirks** %12, align 8
  br label %65

65:                                               ; preds = %99, %64
  %66 = load %struct.str2quirks*, %struct.str2quirks** %12, align 8
  %67 = getelementptr inbounds %struct.str2quirks, %struct.str2quirks* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %102

70:                                               ; preds = %65
  %71 = load %struct.str2quirks*, %struct.str2quirks** %12, align 8
  %72 = getelementptr inbounds %struct.str2quirks, %struct.str2quirks* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %13, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = call i64 @strlen(i8* %74)
  store i64 %75, i64* %14, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = load i64, i64* %14, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %70
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i64, i64* %14, align 8
  %86 = sub i64 0, %85
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8*, i8** %13, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @strncmp(i8* %87, i8* %88, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %80
  %93 = load %struct.str2quirks*, %struct.str2quirks** %12, align 8
  %94 = getelementptr inbounds %struct.str2quirks, %struct.str2quirks* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %92, %80, %70
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.str2quirks*, %struct.str2quirks** %12, align 8
  %101 = getelementptr inbounds %struct.str2quirks, %struct.str2quirks* %100, i32 1
  store %struct.str2quirks* %101, %struct.str2quirks** %12, align 8
  br label %65

102:                                              ; preds = %65
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @__MIN(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
