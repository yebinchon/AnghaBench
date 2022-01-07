; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_render.c_ParseFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_render.c_ParseFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@XCB_RENDER_PICT_TYPE_DIRECT = common dso_local global i64 0, align 8
@VLC_CODEC_RGBA = common dso_local global i32 0, align 4
@VLC_CODEC_BGRA = common dso_local global i32 0, align 4
@VLC_CODEC_ARGB = common dso_local global i32 0, align 4
@VLC_CODEC_RGB32 = common dso_local global i32 0, align 4
@VLC_CODEC_RGB24 = common dso_local global i32 0, align 4
@VLC_CODEC_RGB16 = common dso_local global i32 0, align 4
@VLC_CODEC_RGB15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @ParseFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseFormat(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XCB_RENDER_PICT_TYPE_DIRECT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %216

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_8__* @vlc_xcb_DepthToPixmapFormat(i32* %16, i32 %19)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %216

27:                                               ; preds = %15
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %8, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %215 [
    i32 32, label %36
    i32 24, label %112
    i32 16, label %163
    i32 15, label %189
  ]

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %39, label %111

39:                                               ; preds = %36
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 255
  br i1 %43, label %44, label %111

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 255
  br i1 %48, label %49, label %111

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 255
  br i1 %53, label %54, label %111

54:                                               ; preds = %49
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 255
  br i1 %58, label %59, label %111

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 16
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @VLC_CODEC_RGBA, align 4
  store i32 %75, i32* %3, align 4
  br label %216

76:                                               ; preds = %69, %64, %59
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 16
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @VLC_CODEC_BGRA, align 4
  store i32 %92, i32* %3, align 4
  br label %216

93:                                               ; preds = %86, %81, %76
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 8
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 16
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 24
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @VLC_CODEC_ARGB, align 4
  store i32 %109, i32* %3, align 4
  br label %216

110:                                              ; preds = %103, %98, %93
  br label %111

111:                                              ; preds = %110, %54, %49, %44, %39, %36
  br label %215

112:                                              ; preds = %27
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %113, 32
  br i1 %114, label %115, label %137

115:                                              ; preds = %112
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 255
  br i1 %119, label %120, label %137

120:                                              ; preds = %115
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 255
  br i1 %124, label %125, label %137

125:                                              ; preds = %120
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 255
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @VLC_CODEC_RGB32, align 4
  store i32 %136, i32* %3, align 4
  br label %216

137:                                              ; preds = %130, %125, %120, %115, %112
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, 24
  br i1 %139, label %140, label %162

140:                                              ; preds = %137
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 255
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 255
  br i1 %149, label %150, label %162

150:                                              ; preds = %145
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 255
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, i32* @VLC_CODEC_RGB24, align 4
  store i32 %161, i32* %3, align 4
  br label %216

162:                                              ; preds = %155, %150, %145, %140, %137
  br label %215

163:                                              ; preds = %27
  %164 = load i32, i32* %7, align 4
  %165 = icmp eq i32 %164, 16
  br i1 %165, label %166, label %188

166:                                              ; preds = %163
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 31
  br i1 %170, label %171, label %188

171:                                              ; preds = %166
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 63
  br i1 %175, label %176, label %188

176:                                              ; preds = %171
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 31
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* @VLC_CODEC_RGB16, align 4
  store i32 %187, i32* %3, align 4
  br label %216

188:                                              ; preds = %181, %176, %171, %166, %163
  br label %215

189:                                              ; preds = %27
  %190 = load i32, i32* %7, align 4
  %191 = icmp eq i32 %190, 16
  br i1 %191, label %192, label %214

192:                                              ; preds = %189
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 31
  br i1 %196, label %197, label %214

197:                                              ; preds = %192
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 31
  br i1 %201, label %202, label %214

202:                                              ; preds = %197
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 31
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, i32* @VLC_CODEC_RGB15, align 4
  store i32 %213, i32* %3, align 4
  br label %216

214:                                              ; preds = %207, %202, %197, %192, %189
  br label %215

215:                                              ; preds = %27, %214, %188, %162, %111
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %212, %186, %160, %135, %108, %91, %74, %26, %14
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local %struct.TYPE_8__* @vlc_xcb_DepthToPixmapFormat(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
