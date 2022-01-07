; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_speex.c_ProcessHeaders.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_speex.c_ProcessHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i8*, i64, i64 }

@XIPH_MAX_HEADER_COUNT = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"initial Speex header is corrupted\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @ProcessHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessHeaders(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %4, align 8
  %15 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8*, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @xiph_SplitHeaders(i32* %18, i8** %21, i32* %9, i32 %25, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %117

34:                                               ; preds = %1
  %35 = load i32, i32* %9, align 4
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %117

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i32 -1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds i32, i32* %18, i64 0
  %45 = load i32, i32* %44, align 16
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds i8*, i8** %21, i64 0
  %48 = load i8*, i8** %47, align 16
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  store i8* %48, i8** %49, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = call i64 @ProcessInitialHeader(%struct.TYPE_15__* %50, %struct.TYPE_14__* %5)
  %52 = load i64, i64* @VLC_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %39
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = call i32 @msg_Err(%struct.TYPE_15__* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %57, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %117

58:                                               ; preds = %39
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = getelementptr inbounds i32, i32* %18, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds i8*, i8** %21, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  store i8* %64, i8** %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = call i32 @ParseSpeexComments(%struct.TYPE_15__* %66, %struct.TYPE_14__* %5)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %114

72:                                               ; preds = %58
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @realloc(i8* %76, i32 %80)
  store i8* %81, i8** %11, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = icmp eq i8* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %88, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %117

89:                                               ; preds = %72
  %90 = load i8*, i8** %11, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @memcpy(i8* %104, i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %89, %58
  %115 = load i64, i64* @VLC_SUCCESS, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %117

117:                                              ; preds = %114, %87, %54, %37, %32
  %118 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @xiph_SplitHeaders(i32*, i8**, i32*, i32, i32) #2

declare dso_local i64 @ProcessInitialHeader(%struct.TYPE_15__*, %struct.TYPE_14__*) #2

declare dso_local i32 @msg_Err(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @ParseSpeexComments(%struct.TYPE_15__*, %struct.TYPE_14__*) #2

declare dso_local i8* @realloc(i8*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
