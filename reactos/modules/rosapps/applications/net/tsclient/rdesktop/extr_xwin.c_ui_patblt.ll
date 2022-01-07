; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_patblt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_patblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, i32, i32 }

@hatch_patterns = common dso_local global i32 0, align 4
@FillOpaqueStippled = common dso_local global i32 0, align 4
@FillSolid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"brush %d\0A\00", align 1
@sw = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_patblt(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_11__* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [8 x i32], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @SET_FUNCTION(i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %193 [
    i32 0, label %27
    i32 2, label %35
    i32 3, label %109
  ]

27:                                               ; preds = %9
  %28 = load i32, i32* %18, align 4
  %29 = call i32 @SET_FOREGROUND(i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @FILL_RECTANGLE_BACKSTORE(i32 %30, i32 %31, i32 %32, i32 %33)
  br label %198

35:                                               ; preds = %9
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = load i32, i32* @hatch_patterns, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 8
  %44 = add nsw i32 %37, %43
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @ui_create_glyph(%struct.TYPE_10__* %36, i32 8, i32 8, i32* %46)
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %18, align 4
  %49 = call i32 @SET_FOREGROUND(i32 %48)
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @SET_BACKGROUND(i32 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FillOpaqueStippled, align 4
  %60 = call i32 @XSetFillStyle(i32 %54, i32 %58, i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %19, align 4
  %69 = call i32 @XSetStipple(i32 %63, i32 %67, i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @XSetTSOrigin(i32 %72, i32 %76, i32 %79, i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @FILL_RECTANGLE_BACKSTORE(i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FillSolid, align 4
  %97 = call i32 @XSetFillStyle(i32 %91, i32 %95, i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @XSetTSOrigin(i32 %100, i32 %104, i32 0, i32 0)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %107 = load i32, i32* %19, align 4
  %108 = call i32 @ui_destroy_glyph(%struct.TYPE_10__* %106, i32 %107)
  br label %198

109:                                              ; preds = %9
  store i32 0, i32* %20, align 4
  br label %110

110:                                              ; preds = %125, %109
  %111 = load i32, i32* %20, align 4
  %112 = icmp ne i32 %111, 8
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %20, align 4
  %122 = sub nsw i32 7, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 %123
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %113
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %20, align 4
  br label %110

128:                                              ; preds = %110
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 0
  %131 = call i32 @ui_create_glyph(%struct.TYPE_10__* %129, i32 8, i32 8, i32* %130)
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @SET_FOREGROUND(i32 %132)
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @SET_BACKGROUND(i32 %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @FillOpaqueStippled, align 4
  %144 = call i32 @XSetFillStyle(i32 %138, i32 %142, i32 %143)
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %19, align 4
  %153 = call i32 @XSetStipple(i32 %147, i32 %151, i32 %152)
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @XSetTSOrigin(i32 %156, i32 %160, i32 %163, i32 %166)
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %15, align 4
  %172 = call i32 @FILL_RECTANGLE_BACKSTORE(i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @FillSolid, align 4
  %181 = call i32 @XSetFillStyle(i32 %175, i32 %179, i32 %180)
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @XSetTSOrigin(i32 %184, i32 %188, i32 0, i32 0)
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %191 = load i32, i32* %19, align 4
  %192 = call i32 @ui_destroy_glyph(%struct.TYPE_10__* %190, i32 %191)
  br label %198

193:                                              ; preds = %9
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @unimpl(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %193, %128, %35, %27
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @RESET_FUNCTION(i32 %199)
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %227

205:                                              ; preds = %198
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* %15, align 4
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %13, align 4
  %226 = call i32 @XCopyArea(i32 %208, i32 %212, i32 %215, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %205, %198
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %227
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  br label %244

240:                                              ; preds = %227
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  br label %244

244:                                              ; preds = %240, %235
  %245 = phi i32 [ %239, %235 ], [ %243, %240 ]
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sw, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sw, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = sub nsw i64 %258, %261
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sw, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = sub nsw i64 %264, %267
  %269 = trunc i64 %268 to i32
  %270 = call i32 @ON_ALL_SEAMLESS_WINDOWS(i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @XCopyArea, i32 %269)
  ret void
}

declare dso_local i32 @SET_FUNCTION(i32) #1

declare dso_local i32 @SET_FOREGROUND(i32) #1

declare dso_local i32 @FILL_RECTANGLE_BACKSTORE(i32, i32, i32, i32) #1

declare dso_local i32 @ui_create_glyph(%struct.TYPE_10__*, i32, i32, i32*) #1

declare dso_local i32 @SET_BACKGROUND(i32) #1

declare dso_local i32 @XSetFillStyle(i32, i32, i32) #1

declare dso_local i32 @XSetStipple(i32, i32, i32) #1

declare dso_local i32 @XSetTSOrigin(i32, i32, i32, i32) #1

declare dso_local i32 @ui_destroy_glyph(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

declare dso_local i32 @RESET_FUNCTION(i32) #1

declare dso_local i32 @XCopyArea(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ON_ALL_SEAMLESS_WINDOWS(i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
