; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_opus.c_ProcessHeaders.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_opus.c_ProcessHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, i64, i64 }

@XIPH_MAX_HEADER_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"OpusHead\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"initial Opus header is corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @ProcessHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessHeaders(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %15 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8*, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 10
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = call i64 @memcmp(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35, %1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @opus_prepare_header(i32 %45, i32 %50, i32* %12)
  %52 = call i32 (...) @opus_get_version_string()
  %53 = call i64 @opus_write_header(i32** %10, i32* %9, i32* %12, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %56, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %109

57:                                               ; preds = %40
  store i32 1, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %35, %32
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i64 @xiph_SplitHeaders(i32* %18, i8** %21, i32* %8, i32 %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @free(i32* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %109

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @free(i32* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %81, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %109

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i32 -1, i32* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 5
  store i64 0, i64* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = getelementptr inbounds i32, i32* %18, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  store i32 %88, i32* %89, align 8
  %90 = getelementptr inbounds i8*, i8** %21, i64 0
  %91 = load i8*, i8** %90, align 16
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  store i8* %91, i8** %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = call i32 @ProcessInitialHeader(%struct.TYPE_12__* %93, %struct.TYPE_11__* %4)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @VLC_SUCCESS, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %82
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %100 = call i32 @msg_Err(%struct.TYPE_12__* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %82
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @free(i32* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %109

109:                                              ; preds = %107, %80, %69, %55
  %110 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

declare dso_local i32 @opus_prepare_header(i32, i32, i32*) #2

declare dso_local i64 @opus_write_header(i32**, i32*, i32*, i32) #2

declare dso_local i32 @opus_get_version_string(...) #2

declare dso_local i64 @xiph_SplitHeaders(i32*, i8**, i32*, i32, i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @ProcessInitialHeader(%struct.TYPE_12__*, %struct.TYPE_11__*) #2

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
