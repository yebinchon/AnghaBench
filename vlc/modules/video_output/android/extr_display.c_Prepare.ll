; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_Prepare.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_Prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_17__*, i32*, %struct.TYPE_21__*, %struct.TYPE_16__*, i32*, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"picture way too early to release at time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_20__*, i32*, i64)* @Prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Prepare(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %9, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @PoolLockPicture(i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %31 = call i32 @picture_Copy(i32 %29, %struct.TYPE_20__* %30)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PoolUnlockPicture(i32 %34)
  br label %36

36:                                               ; preds = %26, %20
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %138

40:                                               ; preds = %37
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = icmp ne %struct.TYPE_16__* %43, null
  br i1 %44, label %45, label %138

45:                                               ; preds = %40
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %45
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %54, align 8
  %56 = icmp ne %struct.TYPE_21__* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = call i32 @picture_Release(%struct.TYPE_21__* %60)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %63, align 8
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @filter_DeleteBlend(i32* %72)
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 3
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %69, %64
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @free(i32* %79)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 6
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %76, %45
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = icmp ne %struct.TYPE_21__* %86, null
  br i1 %87, label %104, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = call i64 @AndroidWindow_Setup(%struct.TYPE_19__* %89, %struct.TYPE_16__* %92, i32 1)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %88
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = call %struct.TYPE_21__* @PictureAlloc(%struct.TYPE_19__* %96, i32* %100, i32 0)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 4
  store %struct.TYPE_21__* %101, %struct.TYPE_21__** %103, align 8
  br label %104

104:                                              ; preds = %95, %88, %83
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %124, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = icmp ne %struct.TYPE_21__* %112, null
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %116 = call i32 @VLC_OBJECT(%struct.TYPE_18__* %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = call i32* @filter_NewBlend(i32 %116, i32* %120)
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 3
  store i32* %121, i32** %123, align 8
  br label %124

124:                                              ; preds = %114, %109, %104
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %126, align 8
  %128 = icmp ne %struct.TYPE_21__* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %129, %124
  br label %138

138:                                              ; preds = %137, %40, %37
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @SubpicturePrepare(%struct.TYPE_18__* %144, i32* %145)
  %147 = load i32*, i32** %7, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %143
  br label %153

153:                                              ; preds = %152, %138
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %188

160:                                              ; preds = %153
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @AndroidOpaquePicture_CanReleaseAtTime(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %160
  %167 = call i64 (...) @vlc_tick_now()
  store i64 %167, i64* %10, align 8
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* %10, align 8
  %170 = icmp sgt i64 %168, %169
  br i1 %170, label %171, label %187

171:                                              ; preds = %166
  %172 = load i64, i64* %8, align 8
  %173 = load i64, i64* %10, align 8
  %174 = sub nsw i64 %172, %173
  %175 = call i64 @VLC_TICK_FROM_SEC(i32 1)
  %176 = icmp sle i64 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i64, i64* %8, align 8
  %182 = call i32 @AndroidOpaquePicture_ReleaseAtTime(i32 %180, i64 %181)
  br label %186

183:                                              ; preds = %171
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %185 = call i32 @msg_Warn(%struct.TYPE_18__* %184, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %177
  br label %187

187:                                              ; preds = %186, %166
  br label %188

188:                                              ; preds = %187, %160, %153
  ret void
}

declare dso_local i64 @PoolLockPicture(i32) #1

declare dso_local i32 @picture_Copy(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @PoolUnlockPicture(i32) #1

declare dso_local i32 @picture_Release(%struct.TYPE_21__*) #1

declare dso_local i32 @filter_DeleteBlend(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @AndroidWindow_Setup(%struct.TYPE_19__*, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_21__* @PictureAlloc(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32* @filter_NewBlend(i32, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_18__*) #1

declare dso_local i32 @SubpicturePrepare(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @AndroidOpaquePicture_CanReleaseAtTime(i32) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i64 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32 @AndroidOpaquePicture_ReleaseAtTime(i32, i64) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_18__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
