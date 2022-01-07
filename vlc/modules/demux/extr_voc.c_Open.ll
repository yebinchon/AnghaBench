; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_voc.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_voc.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i64, i64, i64, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@ct_header = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"CT Voice file v%d.%d\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_TICK_0 = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @vlc_stream_Peek(i32 %13, i32** %5, i32 26)
  %15 = icmp slt i32 %14, 26
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %2, align 4
  br label %115

18:                                               ; preds = %1
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @ct_header, align 4
  %21 = call i64 @memcmp(i32* %19, i32 %20, i32 20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %2, align 4
  br label %115

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 20
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @GetWLE(i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 26
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %2, align 4
  br label %115

34:                                               ; preds = %25
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @GetWLE(i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 266
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 276
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %45, i32* %2, align 4
  br label %115

46:                                               ; preds = %41, %34
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @GetWLE(i32* %49)
  %51 = load i32, i32* %7, align 4
  %52 = xor i32 %51, -1
  %53 = add nsw i32 4660, %52
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %56, i32* %2, align 4
  br label %115

57:                                               ; preds = %46
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 8
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 255
  %63 = call i32 @msg_Dbg(%struct.TYPE_5__* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @vlc_stream_Read(i32 %66, i32* null, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %72, i32* %2, align 4
  br label %115

73:                                               ; preds = %57
  %74 = load i32*, i32** %3, align 8
  %75 = call %struct.TYPE_6__* @vlc_obj_malloc(i32* %74, i32 48)
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %8, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = icmp eq %struct.TYPE_6__* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %82, i32* %2, align 4
  br label %115

83:                                               ; preds = %73
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 6
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  store i32* null, i32** %93, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = call i32 @date_Init(i32* %95, i32 1, i32 1)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* @VLC_TICK_0, align 4
  %100 = call i32 @date_Set(i32* %98, i32 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* @AUDIO_ES, align 4
  %104 = call i32 @es_format_Init(i32* %102, i32 %103, i32 0)
  %105 = load i32, i32* @Demux, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @Control, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store %struct.TYPE_6__* %111, %struct.TYPE_6__** %113, align 8
  %114 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %83, %81, %71, %55, %44, %32, %23, %16
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @GetWLE(i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @vlc_stream_Read(i32, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

declare dso_local i32 @date_Set(i32*, i32) #1

declare dso_local i32 @es_format_Init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
