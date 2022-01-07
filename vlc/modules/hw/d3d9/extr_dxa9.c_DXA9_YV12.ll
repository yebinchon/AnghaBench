; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_dxa9.c_DXA9_YV12.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_dxa9.c_DXA9_YV12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64, i64, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_25__ = type { i32, i32* }

@VLC_CODEC_I420 = common dso_local global i64 0, align 8
@VLC_CODEC_I420_10L = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Unsupported DXA9 conversion from 0x%08X to YV12\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_21__*)* @DXA9_YV12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DXA9_YV12(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_24__, align 8
  %10 = alloca %struct.TYPE_25__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [3 x i64], align 16
  %14 = alloca [3 x i32*], align 16
  %15 = alloca i32*, align 8
  %16 = alloca [2 x i32*], align 16
  %17 = alloca [2 x i64], align 16
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %7, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = call %struct.TYPE_22__* @ActiveD3D9PictureSys(%struct.TYPE_21__* %22)
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %8, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GetLock(%struct.TYPE_23__* %24, i32 %27, %struct.TYPE_25__* %10, %struct.TYPE_24__* %9)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %238

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @MAKEFOURCC(i8 signext 89, i8 signext 86, i8 signext 49, i8 signext 50)
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @MAKEFOURCC(i8 signext 73, i8 signext 77, i8 signext 67, i8 signext 51)
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %135

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VLC_CODEC_I420, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = call i32 @picture_SwapUV(%struct.TYPE_21__* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @MAKEFOURCC(i8 signext 73, i8 signext 77, i8 signext 67, i8 signext 51)
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  br label %66

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sdiv i32 %64, 2
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i32 [ %61, %59 ], [ %65, %62 ]
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %12, align 8
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %69, align 8
  %73 = getelementptr inbounds i64, i64* %69, i64 1
  %74 = load i64, i64* %12, align 8
  store i64 %74, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 1
  %76 = load i64, i64* %12, align 8
  store i64 %76, i64* %75, align 8
  %77 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %77, align 8
  %80 = getelementptr inbounds i32*, i32** %77, i64 1
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %84 = load i64, i64* %83, align 16
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = mul i64 %84, %86
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  store i32* %88, i32** %80, align 8
  %89 = getelementptr inbounds i32*, i32** %80, i64 1
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %93 = load i64, i64* %92, align 16
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = mul i64 %93, %95
  %97 = getelementptr inbounds i32, i32* %91, i64 %96
  %98 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = mul i64 %99, %101
  %103 = udiv i64 %102, 2
  %104 = getelementptr inbounds i32, i32* %97, i64 %103
  store i32* %104, i32** %89, align 8
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %66
  %108 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 1
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %15, align 8
  %110 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 2
  %111 = load i32*, i32** %110, align 16
  %112 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 1
  store i32* %111, i32** %112, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 2
  store i32* %113, i32** %114, align 16
  br label %115

115:                                              ; preds = %107, %66
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %117 = getelementptr inbounds [3 x i32*], [3 x i32*]* %14, i64 0, i64 0
  %118 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @Copy420_P_to_P(%struct.TYPE_21__* %116, i32** %117, i64* %118, i32 %122, i32* %123)
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @VLC_CODEC_I420, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %115
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %133 = call i32 @picture_SwapUV(%struct.TYPE_21__* %132)
  br label %134

134:                                              ; preds = %131, %115
  br label %233

135:                                              ; preds = %36
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @MAKEFOURCC(i8 signext 78, i8 signext 86, i8 signext 49, i8 signext 50)
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @MAKEFOURCC(i8 signext 80, i8 signext 48, i8 signext 49, i8 signext 48)
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %227

145:                                              ; preds = %140, %135
  %146 = getelementptr inbounds [2 x i32*], [2 x i32*]* %16, i64 0, i64 0
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  store i32* %148, i32** %146, align 8
  %149 = getelementptr inbounds i32*, i32** %146, i64 1
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = mul i64 %154, %156
  %158 = getelementptr inbounds i32, i32* %151, i64 %157
  store i32* %158, i32** %149, align 8
  %159 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 0
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %159, align 8
  %163 = getelementptr inbounds i64, i64* %159, i64 1
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %163, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @MAKEFOURCC(i8 signext 78, i8 signext 86, i8 signext 49, i8 signext 50)
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %190

171:                                              ; preds = %145
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %173 = getelementptr inbounds [2 x i32*], [2 x i32*]* %16, i64 0, i64 0
  %174 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 0
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %181, %185
  %187 = call i32 @__MIN(i32 %177, i64 %186)
  %188 = load i32*, i32** %7, align 8
  %189 = call i32 @Copy420_SP_to_P(%struct.TYPE_21__* %172, i32** %173, i64* %174, i32 %187, i32* %188)
  br label %209

190:                                              ; preds = %145
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %192 = getelementptr inbounds [2 x i32*], [2 x i32*]* %16, i64 0, i64 0
  %193 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 0
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %200, %204
  %206 = call i32 @__MIN(i32 %196, i64 %205)
  %207 = load i32*, i32** %7, align 8
  %208 = call i32 @Copy420_16_SP_to_P(%struct.TYPE_21__* %191, i32** %192, i64* %193, i32 %206, i32 6, i32* %207)
  br label %209

209:                                              ; preds = %190, %171
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @VLC_CODEC_I420, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %209
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @VLC_CODEC_I420_10L, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %216
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %225 = call i32 @picture_SwapUV(%struct.TYPE_21__* %224)
  br label %226

226:                                              ; preds = %223, %216, %209
  br label %232

227:                                              ; preds = %140
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @msg_Err(%struct.TYPE_23__* %228, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %230)
  br label %232

232:                                              ; preds = %227, %226
  br label %233

233:                                              ; preds = %232, %134
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @IDirect3DSurface9_UnlockRect(i32 %236)
  br label %238

238:                                              ; preds = %233, %30
  ret void
}

declare dso_local %struct.TYPE_22__* @ActiveD3D9PictureSys(%struct.TYPE_21__*) #1

declare dso_local i32 @GetLock(%struct.TYPE_23__*, i32, %struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i64 @MAKEFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @picture_SwapUV(%struct.TYPE_21__*) #1

declare dso_local i32 @Copy420_P_to_P(%struct.TYPE_21__*, i32**, i64*, i32, i32*) #1

declare dso_local i32 @Copy420_SP_to_P(%struct.TYPE_21__*, i32**, i64*, i32, i32*) #1

declare dso_local i32 @__MIN(i32, i64) #1

declare dso_local i32 @Copy420_16_SP_to_P(%struct.TYPE_21__*, i32**, i64*, i32, i32, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_23__*, i8*, i64) #1

declare dso_local i32 @IDirect3DSurface9_UnlockRect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
