; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_probe_stream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_probe_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64 }

@CHUNK_PEEK_COUNT = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Can't peek %d chunks\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@TIVO_SERIES_UNKNOWN = common dso_local global i64 0, align 8
@TIVO_AUDIO_UNKNOWN = common dso_local global i64 0, align 8
@TIVO_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Can't determine Tivo Series.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Can't determine Tivo Audio Type.\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Can't determine Tivo Type (SA/DTivo).\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @probe_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_stream(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CHUNK_PEEK_COUNT, align 4
  %15 = load i32, i32* @CHUNK_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = call i32 @vlc_stream_Peek(i32 %13, i32** %5, i32 %16)
  %18 = load i32, i32* @CHUNK_PEEK_COUNT, align 4
  %19 = load i32, i32* @CHUNK_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = load i32, i32* @CHUNK_PEEK_COUNT, align 4
  %25 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Err(%struct.TYPE_6__* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %2, align 4
  br label %98

27:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CHUNK_PEEK_COUNT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @analyze_chunk(%struct.TYPE_6__* %33, i32* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TIVO_SERIES_UNKNOWN, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %32
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TIVO_AUDIO_UNKNOWN, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TIVO_TYPE_UNKNOWN, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %62

54:                                               ; preds = %47, %41, %32
  %55 = load i32, i32* @CHUNK_SIZE, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %5, align 8
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %28

62:                                               ; preds = %53, %28
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TIVO_SERIES_UNKNOWN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Err(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TIVO_AUDIO_UNKNOWN, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Err(%struct.TYPE_6__* %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %71
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TIVO_TYPE_UNKNOWN, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Err(%struct.TYPE_6__* %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %89

89:                                               ; preds = %86, %80
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @VLC_EGENERIC, align 4
  br label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @VLC_SUCCESS, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %22
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @analyze_chunk(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
