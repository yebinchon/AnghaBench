; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_ActivateSets.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_ActivateSets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, i32, i8*, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_16__, i32*, i32*, i32* }
%struct.TYPE_16__ = type { i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@COLOR_PRIMARIES_UNDEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, i32*, i32*)* @ActivateSets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ActivateSets(%struct.TYPE_14__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %218

29:                                               ; preds = %4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %104, label %43

43:                                               ; preds = %36, %29
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @hevc_get_frame_rate(i32* %44, i32* %45, i32* %10, i32* %11)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %86

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %48
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = mul i32 2, %70
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @UINT_MAX, align 4
  %76 = sdiv i32 %75, 2
  %77 = icmp ule i32 %74, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %10, align 4
  %82 = mul i32 2, %81
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @date_Change(%struct.TYPE_16__* %80, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %73, %65, %48
  br label %86

86:                                               ; preds = %85, %43
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %86, %36
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @COLOR_PRIMARIES_UNDEF, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %104
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 9
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 7
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 6
  %130 = call i32 @hevc_get_colorimetry(i32* %113, i32* %117, i32* %121, i32* %125, i32* %129)
  br label %131

131:                                              ; preds = %112, %104
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %137 = call i64 @hevc_get_picture_size(i32* %132, i32* %133, i32* %134, i32* %135, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %172

139:                                              ; preds = %131
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %141 = load i32, i32* %140, align 16
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  store i32 %141, i32* %145, align 8
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  store i32 %147, i32* %151, align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %139
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 4
  store i32 %160, i32* %164, align 8
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 5
  store i32 %166, i32* %170, align 4
  br label %171

171:                                              ; preds = %158, %139
  br label %172

172:                                              ; preds = %171, %131
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %192

178:                                              ; preds = %172
  %179 = load i32*, i32** %7, align 8
  %180 = call i64 @hevc_get_sps_profile_tier_level(i32* %179, i8** %13, i8** %14)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = load i8*, i8** %13, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 3
  store i8* %183, i8** %186, align 8
  %187 = load i8*, i8** %14, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  store i8* %187, i8** %190, align 8
  br label %191

191:                                              ; preds = %182, %178
  br label %192

192:                                              ; preds = %191, %172
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %217

198:                                              ; preds = %192
  %199 = load i32*, i32** %8, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %217

201:                                              ; preds = %198
  %202 = load i32*, i32** %6, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %217

204:                                              ; preds = %201
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %206 = load i32*, i32** %6, align 8
  %207 = load i32*, i32** %7, align 8
  %208 = load i32*, i32** %8, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = bitcast i32* %211 to i8***
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = call i32 @SetsToAnnexB(%struct.TYPE_15__* %205, i32* %206, i32* %207, i32* %208, i8*** %212, i32* %215)
  br label %217

217:                                              ; preds = %204, %201, %198, %192
  br label %218

218:                                              ; preds = %217, %4
  ret void
}

declare dso_local i64 @hevc_get_frame_rate(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @date_Change(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @hevc_get_colorimetry(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @hevc_get_picture_size(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @hevc_get_sps_profile_tier_level(i32*, i8**, i8**) #1

declare dso_local i32 @SetsToAnnexB(%struct.TYPE_15__*, i32*, i32*, i32*, i8***, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
