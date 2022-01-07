; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_siz.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_siz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"          <ImageAndFileSize Marker=\22SIZ\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"            <Xsiz>%d</Xsiz>\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"            <Ysiz>%d</Ysiz>\0A\00", align 1
@notes = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"            <!-- Xsiz, Ysiz is the size of the reference grid. -->\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"            <XOsiz>%d</XOsiz>\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"            <YOsiz>%d</YOsiz>\0A\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"            <!-- XOsiz, YOsiz are offsets from grid origin to image origin. -->\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"            <XTsiz>%d</XTsiz>\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"            <YTsiz>%d</YTsiz>\0A\00", align 1
@.str.9 = private unnamed_addr constant [85 x i8] c"            <!-- XTsiz, YTsiz is the size of one tile with respect to the grid. -->\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"            <XTOsiz>%d</XTOsiz>\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"            <YTOsiz>%d</YTOsiz>\0A\00", align 1
@.str.12 = private unnamed_addr constant [88 x i8] c"            <!-- XTOsiz, YTOsiz are offsets from grid origin to first tile origin. -->\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"            <Csiz>%d</Csiz>\0A\00", align 1
@.str.14 = private unnamed_addr constant [69 x i8] c"            <!-- Csiz is the number of components in the image. -->\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"            <!-- For image components next: -->\0A\00", align 1
@.str.16 = private unnamed_addr constant [98 x i8] c"            <!--   XRsiz, YRsiz denote pixel-sample-spacing on the grid, per Part I Annex B. -->\0A\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"            <!--   Bits per pixel (bpp) is the pixel depth. -->\0A\00", align 1
@.str.18 = private unnamed_addr constant [117 x i8] c"            <!--   WidthOfData and HeightOfData are calculated values, e.g.: w = roundup((Xsiz - XOsiz)/ XRsiz) -->\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"            <Component Num=\22%d\22>\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"              <Ssiz>\0A\00", align 1
@raw = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [39 x i8] c"                <AsHex>0x%02x</AsHex>\0A\00", align 1
@derived = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [37 x i8] c"                <Signed>%d</Signed>\0A\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"                <PrecisionInBits>%d</PrecisionInBits>\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"              </Ssiz>\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"              <XRsiz>%d</XRsiz>\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"              <YRsiz>%d</YRsiz>\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"              <WidthOfData>%d</WidthOfData>\0A\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"              <HeightOfData>%d</HeightOfData>\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"            </Component>\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"          </ImageAndFileSize>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_out_frame_siz(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i64, i64* @notes, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @notes, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %26
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* @notes, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.9, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %42
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %67)
  %69 = load i64, i64* @notes, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.12, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %58
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %78)
  %80 = load i64, i64* @notes, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.14, i64 0, i64 0))
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0))
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.16, i64 0, i64 0))
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i64 0, i64 0))
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.18, i64 0, i64 0))
  br label %93

93:                                               ; preds = %82, %74
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %166, %93
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %169

100:                                              ; preds = %94
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %7, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %109)
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %113 = load i64, i64* @raw, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %100
  %116 = load i32*, i32** %4, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 7
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = and i32 %120, %124
  %126 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %115, %100
  %128 = load i64, i64* @derived, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load i32*, i32** %4, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32*, i8*, ...) @fprintf(i32* %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), i32 %134)
  %136 = load i32*, i32** %4, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %130, %127
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 (i32*, i8*, ...) @fprintf(i32* %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %144 = load i32*, i32** %4, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %4, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i32 %152)
  %154 = load i32*, i32** %4, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32*, i8*, ...) @fprintf(i32* %154, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %4, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %159, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i32 %162)
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
  br label %166

166:                                              ; preds = %141
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %94

169:                                              ; preds = %94
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 (i32*, i8*, ...) @fprintf(i32* %170, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
