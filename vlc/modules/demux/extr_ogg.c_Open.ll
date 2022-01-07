; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (%struct.TYPE_9__*)*, i64, i32, %struct.TYPE_10__*, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"OggS\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"application/ogg\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"video/ogg\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"audio/ogg\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @vlc_stream_Peek(i32 %12, i32** %6, i32 4)
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %16, i32* %2, align 4
  br label %114

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @memcmp(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @stream_ContentType(i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %35, i32* %2, align 4
  br label %114

36:                                               ; preds = %27
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %51, i32* %2, align 4
  br label %114

52:                                               ; preds = %44, %40, %36
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %53, %23, %17
  %57 = call %struct.TYPE_10__* @calloc(i32 1, i32 20)
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %5, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = icmp ne %struct.TYPE_10__* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %63, i32* %2, align 4
  br label %114

64:                                               ; preds = %56
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i64 (%struct.TYPE_9__*)* @Demux, i64 (%struct.TYPE_9__*)** %70, align 8
  %71 = load i32, i32* @Control, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 4
  %76 = call i32 @ogg_sync_init(i32* %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @TAB_INIT(i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %98, %64
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64 (%struct.TYPE_9__*)*, i64 (%struct.TYPE_9__*)** %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = call i64 %92(%struct.TYPE_9__* %93)
  %95 = icmp sgt i64 %94, 0
  br label %96

96:                                               ; preds = %89, %84
  %97 = phi i1 [ false, %84 ], [ %95, %89 ]
  br i1 %97, label %98, label %99

98:                                               ; preds = %96
  br label %84

99:                                               ; preds = %96
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = call i32 @Ogg_CreateES(%struct.TYPE_9__* %110)
  br label %112

112:                                              ; preds = %109, %104, %99
  %113 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %62, %48, %34, %15
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i8* @stream_ContentType(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_10__* @calloc(i32, i32) #1

declare dso_local i64 @Demux(%struct.TYPE_9__*) #1

declare dso_local i32 @ogg_sync_init(i32*) #1

declare dso_local i32 @TAB_INIT(i32, i32) #1

declare dso_local i32 @Ogg_CreateES(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
