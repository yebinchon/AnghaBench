; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_select_visual.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_select_visual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i8*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, i32 }

@.str = private unnamed_addr constant [52 x i8] c"Unable to get list of pixmap formats from display.\0A\00", align 1
@False = common dso_local global i8* null, align 8
@TrueColor = common dso_local global i32 0, align 4
@VisualClassMask = common dso_local global i32 0, align 4
@True = common dso_local global i8* null, align 8
@PseudoColor = common dso_local global i32 0, align 4
@VisualDepthMask = common dso_local global i32 0, align 4
@VisualColormapSizeMask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"No usable TrueColor or PseudoColor visuals on this display.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_14__*)* @select_visual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @select_visual(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @DefaultScreen(i32 %30)
  %32 = call i32 @DisplayPlanes(i32 %27, i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %24, %1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_13__* @XListPixmapFormats(i32 %38, i32* %5)
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %4, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = icmp eq %struct.TYPE_13__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @XCloseDisplay(i32 %46)
  %48 = load i8*, i8** @False, align 8
  store i8* %48, i8** %2, align 8
  br label %470

49:                                               ; preds = %35
  %50 = load i32, i32* @TrueColor, align 4
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 7
  store i32 %50, i32* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VisualClassMask, align 4
  %56 = call %struct.TYPE_13__* @XGetVisualInfo(i32 %54, i32 %55, %struct.TYPE_13__* %8, i32* %6)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %7, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %59, align 8
  %60 = load i8*, i8** @False, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load i8*, i8** @False, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %72, label %299

72:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %293, %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %296

77:                                               ; preds = %73
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %80
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %13, align 8
  %82 = load i8*, i8** @False, align 8
  store i8* %82, i8** %14, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %189, label %88

88:                                               ; preds = %77
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 15
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 31744
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 992
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 31
  br i1 %107, label %148, label %108

108:                                              ; preds = %103, %98, %93, %88
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 16
  br i1 %112, label %113, label %128

113:                                              ; preds = %108
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 63488
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 2016
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 31
  br i1 %127, label %148, label %128

128:                                              ; preds = %123, %118, %113, %108
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 24
  br i1 %132, label %133, label %189

133:                                              ; preds = %128
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 16711680
  br i1 %137, label %138, label %189

138:                                              ; preds = %133
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 65280
  br i1 %142, label %143, label %189

143:                                              ; preds = %138
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 255
  br i1 %147, label %148, label %189

148:                                              ; preds = %143, %123, %103
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 6
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 4
  store %struct.TYPE_11__* %151, %struct.TYPE_11__** %154, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 11
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %173, %176
  %178 = zext i1 %177 to i32
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %148
  br label %296

188:                                              ; preds = %148
  br label %195

189:                                              ; preds = %143, %138, %133, %128, %77
  %190 = load i8*, i8** @False, align 8
  %191 = ptrtoint i8* %190 to i32
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 4
  br label %195

195:                                              ; preds = %189, %188
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp sgt i32 %198, 24
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %293

201:                                              ; preds = %195
  store i32 0, i32* %15, align 4
  br label %202

202:                                              ; preds = %245, %201
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %5, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %248

206:                                              ; preds = %202
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %212, %215
  br i1 %216, label %217, label %244

217:                                              ; preds = %206
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 16
  br i1 %224, label %241, label %225

225:                                              ; preds = %217
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %227 = load i32, i32* %15, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, 24
  br i1 %232, label %241, label %233

233:                                              ; preds = %225
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 32
  br i1 %240, label %241, label %243

241:                                              ; preds = %233, %225, %217
  %242 = load i8*, i8** @True, align 8
  store i8* %242, i8** %14, align 8
  br label %243

243:                                              ; preds = %241, %233
  br label %248

244:                                              ; preds = %206
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  br label %202

248:                                              ; preds = %243, %202
  %249 = load i8*, i8** %14, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %292

251:                                              ; preds = %248
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @calculate_mask_weight(i32 %254)
  store i32 %255, i32* %16, align 4
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @calculate_mask_weight(i32 %258)
  store i32 %259, i32* %17, align 4
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @calculate_mask_weight(i32 %262)
  store i32 %263, i32* %18, align 4
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %10, align 4
  %266 = icmp uge i32 %264, %265
  br i1 %266, label %267, label %291

267:                                              ; preds = %251
  %268 = load i32, i32* %17, align 4
  %269 = load i32, i32* %12, align 4
  %270 = icmp uge i32 %268, %269
  br i1 %270, label %271, label %291

271:                                              ; preds = %267
  %272 = load i32, i32* %18, align 4
  %273 = load i32, i32* %11, align 4
  %274 = icmp uge i32 %272, %273
  br i1 %274, label %275, label %291

275:                                              ; preds = %271
  %276 = load i32, i32* %16, align 4
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* %17, align 4
  store i32 %277, i32* %12, align 4
  %278 = load i32, i32* %18, align 4
  store i32 %278, i32* %11, align 4
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 6
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %280, align 8
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 4
  store %struct.TYPE_11__* %281, %struct.TYPE_11__** %284, align 8
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 2
  store i32 %287, i32* %290, align 8
  br label %291

291:                                              ; preds = %275, %271, %267, %251
  br label %292

292:                                              ; preds = %291, %248
  br label %293

293:                                              ; preds = %292, %200
  %294 = load i32, i32* %9, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %9, align 4
  br label %73

296:                                              ; preds = %187, %73
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %298 = call i32 @XFree(%struct.TYPE_13__* %297)
  br label %299

299:                                              ; preds = %296, %49
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 4
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %302, align 8
  %304 = icmp ne %struct.TYPE_11__* %303, null
  br i1 %304, label %305, label %348

305:                                              ; preds = %299
  %306 = load i8*, i8** @False, align 8
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 2
  store i8* %306, i8** %308, align 8
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 4
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 10
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 9
  %321 = call i32 @calculate_shifts(i32 %314, i32* %317, i32* %320)
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 4
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 8
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 7
  %334 = call i32 @calculate_shifts(i32 %327, i32* %330, i32* %333)
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 4
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 6
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 5
  %347 = call i32 @calculate_shifts(i32 %340, i32* %343, i32* %346)
  br label %391

348:                                              ; preds = %299
  %349 = load i32, i32* @PseudoColor, align 4
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 7
  store i32 %349, i32* %350, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 8, i32* %351, align 8
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 5
  store i32 256, i32* %352, align 4
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @VisualClassMask, align 4
  %357 = load i32, i32* @VisualDepthMask, align 4
  %358 = or i32 %356, %357
  %359 = load i32, i32* @VisualColormapSizeMask, align 4
  %360 = or i32 %358, %359
  %361 = call %struct.TYPE_13__* @XGetVisualInfo(i32 %355, i32 %360, %struct.TYPE_13__* %8, i32* %6)
  store %struct.TYPE_13__* %361, %struct.TYPE_13__** %7, align 8
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %363 = icmp eq %struct.TYPE_13__* %362, null
  br i1 %363, label %364, label %373

364:                                              ; preds = %348
  %365 = call i32 @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @XCloseDisplay(i32 %368)
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %371 = call i32 @XFree(%struct.TYPE_13__* %370)
  %372 = load i8*, i8** @False, align 8
  store i8* %372, i8** %2, align 8
  br label %470

373:                                              ; preds = %348
  %374 = load i8*, i8** @True, align 8
  %375 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 2
  store i8* %374, i8** %376, align 8
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i64 0
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 6
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %379, align 8
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 4
  store %struct.TYPE_11__* %380, %struct.TYPE_11__** %383, align 8
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i64 0
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 2
  store i32 %387, i32* %390, align 8
  br label %391

391:                                              ; preds = %373, %305
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 3
  store i32 0, i32* %394, align 4
  store i32 0, i32* %9, align 4
  br label %395

395:                                              ; preds = %463, %391
  %396 = load i32, i32* %9, align 4
  %397 = load i32, i32* %5, align 4
  %398 = icmp slt i32 %396, %397
  br i1 %398, label %399, label %466

399:                                              ; preds = %395
  %400 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %401 = load i32, i32* %9, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i64 %402
  store %struct.TYPE_13__* %403, %struct.TYPE_13__** %19, align 8
  %404 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = icmp eq i32 %406, %410
  br i1 %411, label %412, label %462

412:                                              ; preds = %399
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %414 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 3
  store i32 %415, i32* %418, align 4
  %419 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %461

424:                                              ; preds = %412
  %425 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  switch i32 %427, label %454 [
    i32 15, label %428
    i32 16, label %428
    i32 24, label %441
  ]

428:                                              ; preds = %424, %424
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %432, 16
  br i1 %433, label %434, label %440

434:                                              ; preds = %428
  %435 = load i8*, i8** @False, align 8
  %436 = ptrtoint i8* %435 to i32
  %437 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %438, i32 0, i32 0
  store i32 %436, i32* %439, align 8
  br label %440

440:                                              ; preds = %434, %428
  br label %460

441:                                              ; preds = %424
  %442 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 4
  %446 = icmp ne i32 %445, 24
  br i1 %446, label %447, label %453

447:                                              ; preds = %441
  %448 = load i8*, i8** @False, align 8
  %449 = ptrtoint i8* %448 to i32
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 0
  store i32 %449, i32* %452, align 8
  br label %453

453:                                              ; preds = %447, %441
  br label %460

454:                                              ; preds = %424
  %455 = load i8*, i8** @False, align 8
  %456 = ptrtoint i8* %455 to i32
  %457 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %458 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %458, i32 0, i32 0
  store i32 %456, i32* %459, align 8
  br label %460

460:                                              ; preds = %454, %453, %440
  br label %461

461:                                              ; preds = %460, %412
  br label %466

462:                                              ; preds = %399
  br label %463

463:                                              ; preds = %462
  %464 = load i32, i32* %9, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %9, align 4
  br label %395

466:                                              ; preds = %461, %395
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %468 = call i32 @XFree(%struct.TYPE_13__* %467)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  %469 = load i8*, i8** @True, align 8
  store i8* %469, i8** %2, align 8
  br label %470

470:                                              ; preds = %466, %364, %42
  %471 = load i8*, i8** %2, align 8
  ret i8* %471
}

declare dso_local i32 @DisplayPlanes(i32, i32) #1

declare dso_local i32 @DefaultScreen(i32) #1

declare dso_local %struct.TYPE_13__* @XListPixmapFormats(i32, i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @XCloseDisplay(i32) #1

declare dso_local %struct.TYPE_13__* @XGetVisualInfo(i32, i32, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @calculate_mask_weight(i32) #1

declare dso_local i32 @XFree(%struct.TYPE_13__*) #1

declare dso_local i32 @calculate_shifts(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
