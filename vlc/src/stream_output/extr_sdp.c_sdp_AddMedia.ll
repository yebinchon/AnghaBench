; ModuleID = '/home/carl/AnghaBench/vlc/src/stream_output/extr_sdp.c_sdp_AddMedia.c'
source_filename = "/home/carl/AnghaBench/vlc/src/stream_output/extr_sdp.c_sdp_AddMedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"RTP/AVP\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"m=%s %u %s %u\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"b=%s:%u\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TIAS\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"AS\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"RR\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"a=rtpmap:%u %s/%u\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"/%u\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"a=fmtp:%u %s\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_AddMedia(%struct.vlc_memstream* noalias %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32 %8, i32 %9, i8* %10) #0 {
  %12 = alloca %struct.vlc_memstream*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.vlc_memstream* %0, %struct.vlc_memstream** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i8* %10, i8** %22, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %26

26:                                               ; preds = %25, %11
  %27 = load i8*, i8** %14, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %16, align 4
  %32 = icmp ult i32 %31, 128
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.vlc_memstream*, %struct.vlc_memstream** %12, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i8*, i8** %14, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %37, i8* %38, i32 %39)
  %41 = load i32, i32* %18, align 4
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load %struct.vlc_memstream*, %struct.vlc_memstream** %12, align 8
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %49 = load i32, i32* %18, align 4
  %50 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %30
  %52 = load %struct.vlc_memstream*, %struct.vlc_memstream** %12, align 8
  %53 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %54 = load i8*, i8** %19, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load %struct.vlc_memstream*, %struct.vlc_memstream** %12, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i8*, i8** %19, align 8
  %60 = load i32, i32* %20, align 4
  %61 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %58, i8* %59, i32 %60)
  %62 = load i8*, i8** %13, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i32, i32* %21, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.vlc_memstream*, %struct.vlc_memstream** %12, align 8
  %70 = load i32, i32* %21, align 4
  %71 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %65, %56
  %73 = load %struct.vlc_memstream*, %struct.vlc_memstream** %12, align 8
  %74 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %51
  %76 = load i8*, i8** %22, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.vlc_memstream*, %struct.vlc_memstream** %12, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i8*, i8** %22, align 8
  %82 = call i32 (%struct.vlc_memstream*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %78, %75
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
