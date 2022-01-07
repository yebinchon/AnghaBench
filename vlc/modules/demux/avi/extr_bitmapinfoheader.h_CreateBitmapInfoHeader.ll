; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_bitmapinfoheader.h_CreateBitmapInfoHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_bitmapinfoheader.h_CreateBitmapInfoHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i64, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }

@BI_RGB = common dso_local global i64 0, align 8
@BI_BITFIELDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_11__*, i64*)* @CreateBitmapInfoHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @CreateBitmapInfoHeader(%struct.TYPE_11__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %46 [
    i32 130, label %18
    i32 136, label %28
    i32 129, label %28
    i32 137, label %28
    i32 131, label %38
    i32 132, label %40
    i32 133, label %40
    i32 128, label %42
    i32 135, label %42
    i32 134, label %44
  ]

18:                                               ; preds = %2
  store i32 32, i32* %6, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = call i32 @MatchBitmapRGBMasks(%struct.TYPE_11__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @BI_RGB, align 8
  br label %26

24:                                               ; preds = %18
  %25 = load i64, i64* @BI_BITFIELDS, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  store i64 %27, i64* %7, align 8
  br label %62

28:                                               ; preds = %2, %2, %2
  store i32 32, i32* %6, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = call i32 @MatchBitmapRGBMasks(%struct.TYPE_11__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @BI_RGB, align 8
  br label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @BI_BITFIELDS, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  store i64 %37, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %62

38:                                               ; preds = %2
  store i32 24, i32* %6, align 4
  %39 = load i64, i64* @BI_RGB, align 8
  store i64 %39, i64* %7, align 8
  br label %62

40:                                               ; preds = %2, %2
  store i32 16, i32* %6, align 4
  %41 = load i64, i64* @BI_BITFIELDS, align 8
  store i64 %41, i64* %7, align 8
  br label %62

42:                                               ; preds = %2, %2
  store i32 8, i32* %6, align 4
  %43 = load i64, i64* @BI_RGB, align 8
  store i64 %43, i64* %7, align 8
  br label %62

44:                                               ; preds = %2
  %45 = call i64 @VLC_FOURCC(i8 signext 88, i8 signext 86, i8 signext 73, i8 signext 68)
  store i64 %45, i64* %7, align 8
  br label %62

46:                                               ; preds = %2
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  br label %60

55:                                               ; preds = %46
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i64 [ %54, %51 ], [ %59, %55 ]
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %60, %44, %42, %40, %38, %36, %26
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @BI_BITFIELDS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 16, i32 12
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %10, align 8
  br label %100

72:                                               ; preds = %62
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 128
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = icmp ne %struct.TYPE_9__* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 4
  br label %92

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %83
  %93 = phi i32 [ %90, %83 ], [ 0, %91 ]
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %10, align 8
  br label %99

95:                                               ; preds = %72
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %95, %92
  br label %100

100:                                              ; preds = %99, %66
  %101 = load i64, i64* %9, align 8
  %102 = add i64 64, %101
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = call %struct.TYPE_12__* @malloc(i32 %105)
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %11, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %108 = icmp eq %struct.TYPE_12__* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %267

110:                                              ; preds = %100
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 1
  %113 = bitcast %struct.TYPE_12__* %112 to i32*
  store i32* %113, i32** %12, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %13, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* @BI_BITFIELDS, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %166

122:                                              ; preds = %110
  %123 = load i32*, i32** %13, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @SetDWBE(i32* %124, i32 %128)
  %130 = load i32*, i32** %13, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @SetDWBE(i32* %131, i32 %135)
  %137 = load i32*, i32** %13, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @SetDWBE(i32* %138, i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %122
  %147 = load i32*, i32** %13, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 12
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %152, %156
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %157, %161
  %163 = xor i32 %162, -1
  %164 = call i32 @SetDWBE(i32* %148, i32 %163)
  br label %165

165:                                              ; preds = %146, %122
  br label %227

166:                                              ; preds = %110
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 128
  br i1 %170, label %171, label %210

171:                                              ; preds = %166
  store i32 0, i32* %14, align 4
  br label %172

172:                                              ; preds = %198, %171
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %173, %179
  br i1 %180, label %181, label %201

181:                                              ; preds = %172
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* %14, align 4
  %184 = mul nsw i32 %183, 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @memcpy(i32* %186, i32 %196, i32 4)
  br label %198

198:                                              ; preds = %181
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %14, align 4
  br label %172

201:                                              ; preds = %172
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 5
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  br label %226

210:                                              ; preds = %166
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %210
  %216 = load i32*, i32** %12, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = trunc i64 %222 to i32
  %224 = call i32 @memcpy(i32* %216, i32 %219, i32 %223)
  br label %225

225:                                              ; preds = %215, %210
  br label %226

226:                                              ; preds = %225, %201
  br label %227

227:                                              ; preds = %226, %165
  %228 = load i64, i64* %9, align 8
  %229 = add i64 64, %228
  %230 = trunc i64 %229 to i32
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load i64, i64* %7, align 8
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 10
  store i64 %233, i64* %235, align 8
  %236 = load i32, i32* %6, align 4
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 9
  store i32 %242, i32* %244, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 8
  store i32 %248, i32* %250, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 3
  store i32 1, i32* %252, align 4
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 7
  store i64 0, i64* %254, align 8
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 6
  store i64 0, i64* %256, align 8
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 5
  store i64 0, i64* %258, align 8
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 4
  store i64 0, i64* %260, align 8
  %261 = load i64, i64* %9, align 8
  %262 = add i64 64, %261
  %263 = load i64, i64* %10, align 8
  %264 = add i64 %262, %263
  %265 = load i64*, i64** %5, align 8
  store i64 %264, i64* %265, align 8
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %266, %struct.TYPE_12__** %3, align 8
  br label %267

267:                                              ; preds = %227, %109
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %268
}

declare dso_local i32 @MatchBitmapRGBMasks(%struct.TYPE_11__*) #1

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i32 @SetDWBE(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
