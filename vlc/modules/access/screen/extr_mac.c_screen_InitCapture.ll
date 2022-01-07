; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/screen/extr_mac.c_screen_InitCapture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/screen/extr_mac.c_screen_InitCapture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, i64, i64, %struct.TYPE_13__, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i64, i64, i64, i64, i32, i32, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@kCGDirectMainDisplay = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"screen-fps\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_RGB32 = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @screen_InitCapture(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %4, align 8
  %14 = call %struct.TYPE_17__* @calloc(i32 1, i32 56)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %5, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 5
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %16, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %20, i32* %2, align 4
  br label %224

21:                                               ; preds = %1
  %22 = load i64, i64* @kCGDirectMainDisplay, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 7
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = call i32 @var_InheritFloat(%struct.TYPE_18__* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %7, align 4
  %29 = call i32 @CGGetOnlineDisplayList(i32 0, i64* null, i32* %7)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %100, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = call i64* @vlc_alloc(i32 %33, i32 8)
  store i64* %34, i64** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i64*, i64** %8, align 8
  %37 = call i32 @CGGetOnlineDisplayList(i32 %35, i64* %36, i32* %7)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %97, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %53, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load i64*, i64** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 7
  store i64 %65, i64* %67, align 8
  br label %72

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %46

72:                                               ; preds = %60, %46
  br label %96

73:                                               ; preds = %40
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ugt i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %73
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = icmp ule i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load i64*, i64** %8, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sub i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %85, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 7
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %84, %78, %73
  br label %96

96:                                               ; preds = %95, %72
  br label %97

97:                                               ; preds = %96, %32
  %98 = load i64*, i64** %8, align 8
  %99 = call i32 @free(i64* %98)
  br label %100

100:                                              ; preds = %97, %21
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  call void @CGDisplayBounds(%struct.TYPE_20__* sret %10, i64 %103)
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 4
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp sle i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %100
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp sle i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %138, %100
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  store i64 %146, i64* %148, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 4
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %143, %138
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 4
  %157 = load i32, i32* @VIDEO_ES, align 4
  %158 = load i32, i32* @VLC_CODEC_RGB32, align 4
  %159 = call i32 @es_format_Init(%struct.TYPE_13__* %156, i32 %157, i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  store i64 %162, i64* %166, align 8
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  store i64 %162, i64* %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 3
  store i64 %173, i64* %177, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  store i64 %173, i64* %181, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 4
  store i32 32, i32* %185, align 8
  %186 = load i32, i32* @VLC_CODEC_RGB32, align 4
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 12
  store i32 %186, i32* %190, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 5
  store i32 16711680, i32* %194, align 4
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 6
  store i32 65280, i32* %198, align 8
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 7
  store i32 255, i32* %202, align 4
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 9
  store i32 1, i32* %206, align 4
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 8
  store i32 1, i32* %210, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = mul nsw i32 1000, %213
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 10
  store i32 %214, i32* %218, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 11
  store i32 1000, i32* %222, align 4
  %223 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %154, %19
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local %struct.TYPE_17__* @calloc(i32, i32) #1

declare dso_local i32 @var_InheritFloat(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @CGGetOnlineDisplayList(i32, i64*, i32*) #1

declare dso_local i64* @vlc_alloc(i32, i32) #1

declare dso_local i32 @free(i64*) #1

declare dso_local void @CGDisplayBounds(%struct.TYPE_20__* sret, i64) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
