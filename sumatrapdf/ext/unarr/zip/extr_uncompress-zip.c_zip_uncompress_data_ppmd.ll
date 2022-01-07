; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_uncompress_data_ppmd.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_uncompress_data_ppmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_archive_zip_uncomp = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32*, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Insufficient data in compressed stream\00", align 1
@ERR_UNCOMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid PPMd data stream\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"PPMd freeze method isn't supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ar_archive_zip_uncomp*, i8*, i64, i32)* @zip_uncompress_data_ppmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zip_uncompress_data_ppmd(%struct.ar_archive_zip_uncomp* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ar_archive_zip_uncomp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ar_archive_zip_uncomp* %0, %struct.ar_archive_zip_uncomp** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %16 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %17 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %139, label %23

23:                                               ; preds = %4
  %24 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %25 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %31, i64* %5, align 8
  br label %186

32:                                               ; preds = %23
  %33 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %34 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %38 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 15
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %46 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %50 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 4
  %56 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %57 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %61 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 4
  %68 = and i32 %67, 255
  %69 = or i32 %55, %68
  store i32 %69, i32* %12, align 4
  %70 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %71 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %75 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 4
  store i32 %81, i32* %13, align 4
  %82 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %83 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 2
  store i32 %86, i32* %84, align 8
  %87 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %88 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 2
  store i64 %91, i64* %89, align 8
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %97, label %94

94:                                               ; preds = %32
  %95 = load i32, i32* %13, align 4
  %96 = icmp sgt i32 %95, 2
  br i1 %96, label %97, label %100

97:                                               ; preds = %94, %32
  %98 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %99, i64* %5, align 8
  br label %186

100:                                              ; preds = %94
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %105, i64* %5, align 8
  br label %186

106:                                              ; preds = %100
  %107 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %108 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  %113 = shl i32 %112, 20
  %114 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %115 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = call i32 @Ppmd8_Alloc(%struct.TYPE_12__* %110, i32 %113, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %106
  %121 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %121, i64* %5, align 8
  br label %186

122:                                              ; preds = %106
  %123 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %124 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = call i32 @Ppmd8_RangeDec_Init(%struct.TYPE_12__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %122
  %130 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %130, i64* %5, align 8
  br label %186

131:                                              ; preds = %122
  %132 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %133 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @Ppmd8_Init(%struct.TYPE_12__* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %131, %4
  br label %140

140:                                              ; preds = %155, %139
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* %8, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %162

144:                                              ; preds = %140
  %145 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %146 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = call i32 @Ppmd8_DecodeSymbol(%struct.TYPE_12__* %148)
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %154 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %154, i64* %5, align 8
  br label %186

155:                                              ; preds = %144
  %156 = load i32, i32* %14, align 4
  %157 = load i8*, i8** %7, align 8
  %158 = bitcast i8* %157 to i32*
  %159 = load i64, i64* %10, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %10, align 8
  %161 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32 %156, i32* %161, align 4
  br label %140

162:                                              ; preds = %140
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %184

165:                                              ; preds = %162
  %166 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %167 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = call i32 @Ppmd8_DecodeSymbol(%struct.TYPE_12__* %169)
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp ne i32 %171, -1
  br i1 %172, label %180, label %173

173:                                              ; preds = %165
  %174 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %175 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = call i32 @Ppmd8_RangeDec_IsFinishedOK(%struct.TYPE_12__* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %173, %165
  %181 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %182 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %182, i64* %5, align 8
  br label %186

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183, %162
  %185 = load i64, i64* %10, align 8
  store i64 %185, i64* %5, align 8
  br label %186

186:                                              ; preds = %184, %180, %152, %129, %120, %103, %97, %29
  %187 = load i64, i64* %5, align 8
  ret i64 %187
}

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @Ppmd8_Alloc(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @Ppmd8_RangeDec_Init(%struct.TYPE_12__*) #1

declare dso_local i32 @Ppmd8_Init(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @Ppmd8_DecodeSymbol(%struct.TYPE_12__*) #1

declare dso_local i32 @Ppmd8_RangeDec_IsFinishedOK(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
