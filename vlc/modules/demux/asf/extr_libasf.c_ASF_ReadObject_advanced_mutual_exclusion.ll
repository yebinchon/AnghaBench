; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/asf/extr_libasf.c_ASF_ReadObject_advanced_mutual_exclusion.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/asf/extr_libasf.c_ASF_ReadObject_advanced_mutual_exclusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i8** }

@INT32_MAX = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@ASF_OBJECT_COMMON_SIZE = common dso_local global i64 0, align 8
@asf_guid_mutex_language = common dso_local global i32 0, align 4
@LANGUAGE = common dso_local global i64 0, align 8
@asf_guid_mutex_bitrate = common dso_local global i32 0, align 4
@BITRATE = common dso_local global i64 0, align 8
@VLC_ENOMEM = common dso_local global i32 0, align 4
@ASF_MAX_STREAMNUMBER = common dso_local global i8* null, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @ASF_ReadObject_advanced_mutual_exclusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ASF_ReadObject_advanced_mutual_exclusion(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INT32_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %3, align 4
  br label %111

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @vlc_stream_Peek(i32* %21, i32** %7, i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 42
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %29, i32* %3, align 4
  br label %111

30:                                               ; preds = %20
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* @ASF_OBJECT_COMMON_SIZE, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %8, align 8
  %34 = call i32 @ASF_HAVE(i32 32)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %3, align 4
  br label %111

38:                                               ; preds = %30
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @guidcmp(i32* %39, i32* @asf_guid_mutex_language)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* @LANGUAGE, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %55

46:                                               ; preds = %38
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @guidcmp(i32* %47, i32* @asf_guid_mutex_bitrate)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* @BITRATE, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %42
  %56 = call i32 @ASF_SKIP(i32 16)
  %57 = call i8* (...) @ASF_READ2()
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i8** @calloc(i64 %63, i32 8)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  store i8** %64, i8*** %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i8**, i8*** %68, align 8
  %70 = icmp ne i8** %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %55
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %74, i32* %3, align 4
  br label %111

75:                                               ; preds = %55
  store i64 0, i64* %9, align 8
  br label %76

76:                                               ; preds = %103, %75
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %76
  %83 = call i32 @ASF_HAVE(i32 2)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  br label %106

86:                                               ; preds = %82
  %87 = call i8* (...) @ASF_READ2()
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i8**, i8*** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  store i8* %87, i8** %92, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load i8**, i8*** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds i8*, i8** %95, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** @ASF_MAX_STREAMNUMBER, align 8
  %100 = icmp ugt i8* %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %106

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %9, align 8
  br label %76

106:                                              ; preds = %101, %85, %76
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %71, %36, %28, %18
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @vlc_stream_Peek(i32*, i32**, i64) #1

declare dso_local i32 @ASF_HAVE(i32) #1

declare dso_local i64 @guidcmp(i32*, i32*) #1

declare dso_local i32 @ASF_SKIP(i32) #1

declare dso_local i8* @ASF_READ2(...) #1

declare dso_local i8** @calloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
