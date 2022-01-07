; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_ParseText.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_subsusf.c_ParseText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32, i64, i64 }

@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"subtitle without a date\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no subtitle data\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"USF subtitles must be in UTF-8 format.\0AThis stream contains USF subtitles which aren't.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"can't get spu buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_14__*, %struct.TYPE_16__*)* @ParseText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @ParseText(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %108

19:                                               ; preds = %2
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VLC_TICK_INVALID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = call i32 @msg_Warn(%struct.TYPE_14__* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %108

28:                                               ; preds = %19
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = call i32 @msg_Warn(%struct.TYPE_14__* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %108

36:                                               ; preds = %28
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @strndup(i8* %40, i32 %43)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %108

48:                                               ; preds = %36
  %49 = load i8*, i8** %8, align 8
  %50 = call i32* @EnsureUTF8(i8* %49)
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = call i32 @msg_Err(%struct.TYPE_14__* %53, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %48
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = call %struct.TYPE_13__* @decoder_NewSubpicture(%struct.TYPE_14__* %56, i32* null)
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %7, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = call i32 @msg_Warn(%struct.TYPE_14__* %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @free(i8* %63)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %108

65:                                               ; preds = %55
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @ParseUSFString(%struct.TYPE_14__* %66, i8* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @VLC_TICK_INVALID, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 3
  store i32 0, i32* %94, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %3, align 8
  br label %108

108:                                              ; preds = %65, %60, %47, %33, %25, %18
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %109
}

declare dso_local i32 @msg_Warn(%struct.TYPE_14__*, i8*) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32* @EnsureUTF8(i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.TYPE_13__* @decoder_NewSubpicture(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ParseUSFString(%struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
