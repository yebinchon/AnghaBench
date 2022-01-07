; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_render.c_Prepare.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_render.c_Prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, i32, i32, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_35__*, %struct.TYPE_27__*, %struct.TYPE_28__ }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_37__, i32, i32, %struct.TYPE_36__, i32, %struct.TYPE_32__, i32, i32* }
%struct.TYPE_37__ = type { i32, i32, i32, i32 }
%struct.TYPE_36__ = type { i32, i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_30__* }
%struct.TYPE_39__ = type { i32, i32, i32, i32 }

@XCB_IMAGE_FORMAT_Z_PIXMAP = common dso_local global i32 0, align 4
@XCB_RENDER_PICT_OP_SRC = common dso_local global i32 0, align 4
@XCB_RENDER_PICTURE_NONE = common dso_local global i32 0, align 4
@Prepare.black_color = internal constant %struct.TYPE_38__ { i32 0, i32 0, i32 0, i32 65535 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_40__*, %struct.TYPE_31__*, %struct.TYPE_29__*, i32)* @Prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Prepare(%struct.TYPE_40__* %0, %struct.TYPE_31__* %1, %struct.TYPE_29__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1 x %struct.TYPE_39__], align 16
  %14 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %15, i32 0, i32 2
  store %struct.TYPE_28__* %16, %struct.TYPE_28__** %9, align 8
  %17 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  store %struct.TYPE_27__* %19, %struct.TYPE_27__** %10, align 8
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %25 = call i64 @PictureAttach(%struct.TYPE_40__* %23, %struct.TYPE_31__* %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, -1
  br i1 %27, label %28, label %75

28:                                               ; preds = %4
  %29 = load i32*, i32** %11, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %41, %46
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %57, %62
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_33__*, %struct.TYPE_33__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @XCB_IMAGE_FORMAT_Z_PIXMAP, align 4
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @xcb_shm_put_image(i32* %29, i32 %33, i32 %36, i32 %47, i32 %52, i32 0, i32 0, i32 %63, i32 %68, i32 0, i32 0, i32 32, i32 %69, i32 0, i32 %72, i64 %73)
  br label %118

75:                                               ; preds = %4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* @XCB_IMAGE_FORMAT_Z_PIXMAP, align 4
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %89, %94
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %105, %110
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @xcb_put_image(i32* %76, i32 %77, i32 %81, i32 %84, i32 %95, i32 %100, i32 0, i32 0, i32 0, i32 32, i32 %111, i32 %116)
  br label %118

118:                                              ; preds = %75, %28
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* @XCB_RENDER_PICT_OP_SRC, align 4
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @XCB_RENDER_PICTURE_NONE, align 4
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @xcb_render_composite(i32* %119, i32 %120, i32 %124, i32 %125, i32 %129, i32 %132, i32 %135, i32 0, i32 0, i32 0, i32 0, i32 %138, i32 %141)
  %143 = getelementptr inbounds [1 x %struct.TYPE_39__], [1 x %struct.TYPE_39__]* %13, i64 0, i64 0
  %144 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %143, i32 0, i32 0
  store i32 0, i32* %144, align 16
  %145 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %143, i32 0, i32 1
  store i32 0, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %143, i32 0, i32 2
  %147 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_35__*, %struct.TYPE_35__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %146, align 8
  %153 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %143, i32 0, i32 3
  %154 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_35__*, %struct.TYPE_35__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %153, align 4
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* @XCB_RENDER_PICT_OP_SRC, align 4
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds [1 x %struct.TYPE_39__], [1 x %struct.TYPE_39__]* %13, i64 0, i64 0
  %167 = call i32 @ARRAY_SIZE(%struct.TYPE_39__* %166)
  %168 = getelementptr inbounds [1 x %struct.TYPE_39__], [1 x %struct.TYPE_39__]* %13, i64 0, i64 0
  %169 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_38__* @Prepare.black_color to { i64, i64 }*), i32 0, i32 0), align 4
  %170 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_38__* @Prepare.black_color to { i64, i64 }*), i32 0, i32 1), align 4
  %171 = call i32 @xcb_render_fill_rectangles(i32* %160, i32 %161, i32 %165, i64 %169, i64 %170, i32 %167, %struct.TYPE_39__* %168)
  %172 = load i32*, i32** %11, align 8
  %173 = load i32, i32* @XCB_RENDER_PICT_OP_SRC, align 4
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @XCB_RENDER_PICTURE_NONE, align 4
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @xcb_render_composite(i32* %172, i32 %173, i32 %177, i32 %178, i32 %182, i32 %185, i32 %188, i32 0, i32 0, i32 %192, i32 %196, i32 %200, i32 %204)
  %206 = load i64, i64* %12, align 8
  %207 = icmp ne i64 %206, -1
  br i1 %207, label %208, label %211

208:                                              ; preds = %118
  %209 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %210 = call i32 @PictureDetach(%struct.TYPE_40__* %209)
  br label %211

211:                                              ; preds = %208, %118
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %213 = icmp ne %struct.TYPE_29__* %212, null
  br i1 %213, label %214, label %231

214:                                              ; preds = %211
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %216, align 8
  store %struct.TYPE_30__* %217, %struct.TYPE_30__** %14, align 8
  br label %218

218:                                              ; preds = %226, %214
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %220 = icmp ne %struct.TYPE_30__* %219, null
  br i1 %220, label %221, label %230

221:                                              ; preds = %218
  %222 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %225 = call i32 @RenderRegion(%struct.TYPE_40__* %222, %struct.TYPE_29__* %223, %struct.TYPE_30__* %224)
  br label %226

226:                                              ; preds = %221
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %228, align 8
  store %struct.TYPE_30__* %229, %struct.TYPE_30__** %14, align 8
  br label %218

230:                                              ; preds = %218
  br label %231

231:                                              ; preds = %230, %211
  %232 = load i32*, i32** %11, align 8
  %233 = call i32 @xcb_flush(i32* %232)
  %234 = load i32, i32* %8, align 4
  ret void
}

declare dso_local i64 @PictureAttach(%struct.TYPE_40__*, %struct.TYPE_31__*) #1

declare dso_local i32 @xcb_shm_put_image(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @xcb_put_image(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xcb_render_composite(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xcb_render_fill_rectangles(i32*, i32, i32, i64, i64, i32, %struct.TYPE_39__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_39__*) #1

declare dso_local i32 @PictureDetach(%struct.TYPE_40__*) #1

declare dso_local i32 @RenderRegion(%struct.TYPE_40__*, %struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @xcb_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
