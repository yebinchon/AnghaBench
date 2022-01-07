; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/screen/extr_xcb.c_InitES.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/screen/extr_xcb.c_InitES.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i64 }

@VLC_CODEC_ARGB = common dso_local global i64 0, align 8
@VLC_CODEC_RGB32 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB24 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB16 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB15 = common dso_local global i64 0, align 8
@VLC_CODEC_RGB8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"unsupported pixmap formats\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, i8*, i8*, i32, i32*)* @InitES to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @InitES(%struct.TYPE_14__* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %12, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @xcb_get_setup(i32 %23)
  store i32* %24, i32** %13, align 8
  store i64 0, i64* %14, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call %struct.TYPE_12__* @xcb_setup_pixmap_formats(i32* %25)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %15, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @xcb_setup_pixmap_formats_length(i32* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 %30
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %16, align 8
  br label %32

32:                                               ; preds = %104, %5
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %35 = icmp ult %struct.TYPE_12__* %33, %34
  br i1 %35, label %36, label %107

36:                                               ; preds = %32
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %104

43:                                               ; preds = %36
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %95 [
    i32 32, label %47
    i32 24, label %55
    i32 16, label %71
    i32 15, label %79
    i32 8, label %87
  ]

47:                                               ; preds = %43
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @VLC_CODEC_ARGB, align 8
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %52, %47
  br label %95

55:                                               ; preds = %43
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i64, i64* @VLC_CODEC_RGB32, align 8
  store i64 %61, i64* %14, align 8
  br label %70

62:                                               ; preds = %55
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 24
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* @VLC_CODEC_RGB24, align 8
  store i64 %68, i64* %14, align 8
  br label %69

69:                                               ; preds = %67, %62
  br label %70

70:                                               ; preds = %69, %60
  br label %95

71:                                               ; preds = %43
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 16
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i64, i64* @VLC_CODEC_RGB16, align 8
  store i64 %77, i64* %14, align 8
  br label %78

78:                                               ; preds = %76, %71
  br label %95

79:                                               ; preds = %43
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 16
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i64, i64* @VLC_CODEC_RGB15, align 8
  store i64 %85, i64* %14, align 8
  br label %86

86:                                               ; preds = %84, %79
  br label %95

87:                                               ; preds = %43
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i64, i64* @VLC_CODEC_RGB8, align 8
  store i64 %93, i64* %14, align 8
  br label %94

94:                                               ; preds = %92, %87
  br label %95

95:                                               ; preds = %43, %94, %86, %78, %70, %54
  %96 = load i64, i64* %14, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  br label %107

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %42
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 1
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %15, align 8
  br label %32

107:                                              ; preds = %98, %32
  %108 = load i64, i64* %14, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %112 = call i32 @msg_Err(%struct.TYPE_14__* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  br label %150

113:                                              ; preds = %107
  %114 = load i32, i32* @VIDEO_ES, align 4
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @es_format_Init(%struct.TYPE_13__* %17, i32 %114, i64 %115)
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 9
  store i64 %117, i64* %119, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  store i32 1, i32* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 1000, %130
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  store i32 1000, i32* %135, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 7
  store i8* %136, i8** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 8
  store i8* %136, i8** %140, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 5
  store i8* %141, i8** %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 6
  store i8* %141, i8** %145, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32* @es_out_Add(i32 %148, %struct.TYPE_13__* %17)
  store i32* %149, i32** %6, align 8
  br label %150

150:                                              ; preds = %113, %110
  %151 = load i32*, i32** %6, align 8
  ret i32* %151
}

declare dso_local i32* @xcb_get_setup(i32) #1

declare dso_local %struct.TYPE_12__* @xcb_setup_pixmap_formats(i32*) #1

declare dso_local i32 @xcb_setup_pixmap_formats_length(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i32* @es_out_Add(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
