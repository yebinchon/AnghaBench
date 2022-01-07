; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_lavc_CopyPicture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_lavc_CopyPicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64, i32, i32* }
%struct.TYPE_14__ = type { i64, i64, i32 }
%struct.TYPE_19__ = type { i32, i32, i64*, i32**, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Unsupported decoded output format %d (%s)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"dropping frame because the vout changed\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_19__*)* @lavc_CopyPicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lavc_CopyPicture(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %8, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @FindVlcChroma(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @av_get_pix_fmt_name(i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i8*, i8** %10, align 8
  br label %43

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i8* [ %41, %40 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %42 ]
  %45 = call i32 @msg_Err(%struct.TYPE_17__* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %44)
  %46 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %46, i32* %4, align 4
  br label %152

47:                                               ; preds = %3
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @chroma_compatible(i32 %48, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %47
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = icmp ne i32 %58, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %55
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = icmp slt i32 %68, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %65, %55, %47
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = call i32 @msg_Warn(%struct.TYPE_17__* %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %78, i32* %4, align 4
  br label %152

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %147, %80
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %150

87:                                               ; preds = %81
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %12, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %13, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 2
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %14, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %15, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* %15, align 8
  %120 = call i64 @__MIN(i64 %118, i64 %119)
  store i64 %120, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %121

121:                                              ; preds = %143, %87
  %122 = load i32, i32* %17, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %122, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %121
  %133 = load i32*, i32** %13, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = load i64, i64* %16, align 8
  %136 = call i32 @memcpy(i32* %133, i32* %134, i64 %135)
  %137 = load i64, i64* %14, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 %137
  store i32* %139, i32** %12, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 %140
  store i32* %142, i32** %13, align 8
  br label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %17, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %17, align 4
  br label %121

146:                                              ; preds = %121
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %81

150:                                              ; preds = %81
  %151 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %150, %75, %43
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @FindVlcChroma(i32) #1

declare dso_local i8* @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_17__*, i8*, i32, i8*) #1

declare dso_local i32 @chroma_compatible(i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @__MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
