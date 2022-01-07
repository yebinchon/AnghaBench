; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avformat/extr_demux.c_FindStreamInfo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avformat/extr_demux.c_FindStreamInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Could not find stream info: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*)* @FindStreamInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FindStreamInfo(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 1, %24 ]
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %7, align 8
  %29 = alloca i32*, i64 %27, align 16
  store i64 %27, i64* %8, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 0
  store i32* %30, i32** %31, align 16
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %51, %25
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %29, i64 %38
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds i32*, i32** %29, i64 0
  %41 = load i32*, i32** %40, align 16
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %29, i64 %45
  %47 = getelementptr inbounds i32*, i32** %29, i64 0
  %48 = load i32*, i32** %47, align 16
  %49 = call i32 @av_dict_copy(i32** %46, i32* %48, i32 0)
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %32

54:                                               ; preds = %32
  %55 = call i32 (...) @vlc_avcodec_lock()
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = call i32 @avformat_find_stream_info(%struct.TYPE_9__* %58, i32** %29)
  store i32 %59, i32* %10, align 4
  %60 = call i32 (...) @vlc_avcodec_unlock()
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds i32*, i32** %29, i64 0
  %63 = call i32 @FreeUnclaimedOptions(%struct.TYPE_7__* %61, i32** %62)
  store i32 1, i32* %11, align 4
  br label %64

64:                                               ; preds = %73, %54
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %29, i64 %70
  %72 = call i32 @av_dict_free(i32** %71)
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %64

76:                                               ; preds = %64
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @AVUNERROR(i32 %81)
  %83 = call i32 @vlc_strerror_c(i32 %82)
  %84 = call i32 @msg_Warn(%struct.TYPE_7__* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_dict_copy(i32**, i32*, i32) #2

declare dso_local i32 @vlc_avcodec_lock(...) #2

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_9__*, i32**) #2

declare dso_local i32 @vlc_avcodec_unlock(...) #2

declare dso_local i32 @FreeUnclaimedOptions(%struct.TYPE_7__*, i32**) #2

declare dso_local i32 @av_dict_free(i32**) #2

declare dso_local i32 @msg_Warn(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32 @vlc_strerror_c(i32) #2

declare dso_local i32 @AVUNERROR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
