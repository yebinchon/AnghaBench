; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_chain.c_BuildChromaChain.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_chain.c_BuildChromaChain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_17__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Trying to use chroma %4.4s as middle man\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @BuildChromaChain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BuildChromaChain(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %8 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = call i64* @get_allowed_chromas(%struct.TYPE_14__* %9)
  store i64* %10, i64** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %65, %1
  %12 = load i64*, i64** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %68

18:                                               ; preds = %11
  %19 = load i64*, i64** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %18
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %18
  br label %65

38:                                               ; preds = %30
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = bitcast i64* %7 to i8*
  %41 = call i32 @msg_Dbg(%struct.TYPE_14__* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = call i32 @es_format_Copy(%struct.TYPE_15__* %3, %struct.TYPE_17__* %43)
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  %56 = call i32 @video_format_FixRgb(%struct.TYPE_16__* %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %58 = call i32 @CreateChain(%struct.TYPE_14__* %57, %struct.TYPE_15__* %3)
  store i32 %58, i32* %4, align 4
  %59 = call i32 @es_format_Clean(%struct.TYPE_15__* %3)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @VLC_SUCCESS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %38
  br label %68

64:                                               ; preds = %38
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %11

68:                                               ; preds = %63, %11
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64* @get_allowed_chromas(%struct.TYPE_14__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*, i8*) #1

declare dso_local i32 @es_format_Copy(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @video_format_FixRgb(%struct.TYPE_16__*) #1

declare dso_local i32 @CreateChain(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
