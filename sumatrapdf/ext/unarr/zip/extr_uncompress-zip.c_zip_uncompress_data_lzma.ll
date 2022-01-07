; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_uncompress_data_lzma.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_uncompress-zip.c_zip_uncompress_data_lzma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_archive_zip_uncomp = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64*, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Insufficient data in compressed stream\00", align 1
@ERR_UNCOMP = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@LZMA_FINISH_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unexpected LZMA error %d\00", align 1
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Premature EOS in LZMA stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ar_archive_zip_uncomp*, i8*, i64, i32)* @zip_uncompress_data_lzma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zip_uncompress_data_lzma(%struct.ar_archive_zip_uncomp* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ar_archive_zip_uncomp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ar_archive_zip_uncomp* %0, %struct.ar_archive_zip_uncomp** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %17 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %121, label %23

23:                                               ; preds = %4
  %24 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %25 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 9
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %31, i64* %5, align 8
  br label %208

32:                                               ; preds = %23
  %33 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %34 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %38 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %36, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %15, align 8
  %45 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %46 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %50 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %48, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %32
  %59 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %60 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %15, align 8
  %65 = add nsw i64 4, %64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58, %32
  %68 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %69 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %69, i64* %5, align 8
  br label %208

70:                                               ; preds = %58
  %71 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %72 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %76 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %80 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %78, i64 %84
  %86 = load i64, i64* %15, align 8
  %87 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %88 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = call i64 @LzmaDec_Allocate(%struct.TYPE_10__* %74, i64* %85, i64 %86, i32* %90)
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %15, align 8
  %93 = add nsw i64 4, %92
  %94 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %95 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %93
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 8
  %101 = load i64, i64* %15, align 8
  %102 = add nsw i64 4, %101
  %103 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %104 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %107, %102
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* @SZ_OK, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %70
  %114 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %114, i64* %5, align 8
  br label %208

115:                                              ; preds = %70
  %116 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %117 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = call i32 @LzmaDec_Init(%struct.TYPE_10__* %119)
  br label %121

121:                                              ; preds = %115, %4
  %122 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %123 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  store i64 %126, i64* %10, align 8
  %127 = load i64, i64* %8, align 8
  store i64 %127, i64* %11, align 8
  %128 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %129 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %121
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %138 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  br label %144

142:                                              ; preds = %133, %121
  %143 = load i32, i32* @LZMA_FINISH_ANY, align 4
  br label %144

144:                                              ; preds = %142, %136
  %145 = phi i32 [ %141, %136 ], [ %143, %142 ]
  store i32 %145, i32* %13, align 4
  %146 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %147 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i8*, i8** %7, align 8
  %151 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %152 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %156 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %154, i64 %159
  %161 = load i32, i32* %13, align 4
  %162 = call i64 @LzmaDec_DecodeToBuf(%struct.TYPE_10__* %149, i8* %150, i64* %11, i64* %160, i64* %10, i32 %161, i64* %12)
  store i64 %162, i64* %14, align 8
  %163 = load i64, i64* %10, align 8
  %164 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %165 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %163
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %166, align 8
  %171 = load i64, i64* %10, align 8
  %172 = load %struct.ar_archive_zip_uncomp*, %struct.ar_archive_zip_uncomp** %6, align 8
  %173 = getelementptr inbounds %struct.ar_archive_zip_uncomp, %struct.ar_archive_zip_uncomp* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = sub nsw i64 %176, %171
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %174, align 8
  %179 = load i64, i64* %14, align 8
  %180 = load i64, i64* @SZ_OK, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %188, label %182

182:                                              ; preds = %144
  %183 = load i64, i64* %10, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load i64, i64* %11, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185, %144
  %189 = load i64, i64* %14, align 8
  %190 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %189)
  %191 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %191, i64* %5, align 8
  br label %208

192:                                              ; preds = %185, %182
  %193 = load i64, i64* %12, align 8
  %194 = load i64, i64* @LZMA_STATUS_FINISHED_WITH_MARK, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %192
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i64, i64* %11, align 8
  %201 = load i64, i64* %8, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %199, %196
  %204 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %205 = load i64, i64* @ERR_UNCOMP, align 8
  store i64 %205, i64* %5, align 8
  br label %208

206:                                              ; preds = %199, %192
  %207 = load i64, i64* %11, align 8
  store i64 %207, i64* %5, align 8
  br label %208

208:                                              ; preds = %206, %203, %188, %113, %67, %29
  %209 = load i64, i64* %5, align 8
  ret i64 %209
}

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @LzmaDec_Allocate(%struct.TYPE_10__*, i64*, i64, i32*) #1

declare dso_local i32 @LzmaDec_Init(%struct.TYPE_10__*) #1

declare dso_local i64 @LzmaDec_DecodeToBuf(%struct.TYPE_10__*, i8*, i64*, i64*, i64*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
