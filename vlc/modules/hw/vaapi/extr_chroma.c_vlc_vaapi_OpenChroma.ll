; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_chroma.c_vlc_vaapi_OpenChroma.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_chroma.c_vlc_vaapi_OpenChroma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_16__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i32*, i32, i32*, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@UploadSurface = common dso_local global i32 0, align 4
@DownloadSurface = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unable to allocate memory\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@DEST_PICS_POOL_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Using SW chroma filter for %dx%d %4.4s -> %4.4s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_vaapi_OpenChroma(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %4, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %26, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %21
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %38, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33, %21, %1
  %46 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %46, i32* %2, align 4
  br label %191

47:                                               ; preds = %33
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = call i64 @CheckFmt(%struct.TYPE_12__* %50, %struct.TYPE_17__* %53, i32* %6, i32* %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %57, i32* %2, align 4
  br label %191

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @UploadSurface, align 4
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @DownloadSurface, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = call %struct.TYPE_16__* @calloc(i32 1, i32 48)
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %5, align 8
  %70 = icmp ne %struct.TYPE_16__* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @msg_Err(i32* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %74, i32* %2, align 4
  br label %191

75:                                               ; preds = %65
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %128

82:                                               ; preds = %75
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 5
  %86 = call i32* @vlc_vaapi_FilterHoldInstance(%struct.TYPE_15__* %83, i32** %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = call i32 @free(%struct.TYPE_16__* %94)
  %96 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %96, i32* %2, align 4
  br label %191

97:                                               ; preds = %82
  %98 = load i32*, i32** %3, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @DEST_PICS_POOL_SZ, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 6
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = call i32* @vlc_vaapi_PoolNew(i32* %98, i32* %101, i32* %104, i32 %105, i32* %107, %struct.TYPE_17__* %110, i32 1)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %97
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @vlc_vaapi_FilterReleaseInstance(%struct.TYPE_15__* %119, i32* %122)
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = call i32 @free(%struct.TYPE_16__* %124)
  %126 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %126, i32* %2, align 4
  br label %191

127:                                              ; preds = %97
  br label %135

128:                                              ; preds = %75
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  store i32* null, i32** %130, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 5
  store i32* null, i32** %132, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 3
  store i32* null, i32** %134, align 8
  br label %135

135:                                              ; preds = %128, %127
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = mul nsw i32 %142, %143
  %145 = call i64 @CopyInitCache(i32* %137, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %135
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @picture_pool_Release(i32* %153)
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @vlc_vaapi_FilterReleaseInstance(%struct.TYPE_15__* %155, i32* %158)
  br label %160

160:                                              ; preds = %150, %147
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %162 = call i32 @free(%struct.TYPE_16__* %161)
  %163 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %163, i32* %2, align 4
  br label %191

164:                                              ; preds = %135
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  store %struct.TYPE_16__* %165, %struct.TYPE_16__** %167, align 8
  %168 = load i32*, i32** %3, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 3
  %183 = bitcast i32* %182 to i8*
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 3
  %188 = bitcast i32* %187 to i8*
  %189 = call i32 @msg_Warn(i32* %168, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %173, i64 %178, i8* %183, i8* %188)
  %190 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %164, %160, %118, %93, %71, %56, %45
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i64 @CheckFmt(%struct.TYPE_12__*, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @calloc(i32, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32* @vlc_vaapi_FilterHoldInstance(%struct.TYPE_15__*, i32**) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

declare dso_local i32* @vlc_vaapi_PoolNew(i32*, i32*, i32*, i32, i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @vlc_vaapi_FilterReleaseInstance(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @CopyInitCache(i32*, i32) #1

declare dso_local i32 @picture_pool_Release(i32*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i32, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
