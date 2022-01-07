; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_avi.c_Mux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_avi.c_Mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_23__**, %struct.TYPE_26__* }
%struct.TYPE_23__ = type { i32, i32*, i64 }
%struct.TYPE_26__ = type { i32, i64, %struct.TYPE_24__, %struct.TYPE_28__* }
%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i64, i64, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i64, i64, i32, i32, i8* }

@.str = private unnamed_addr constant [15 x i8] c"writing header\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"argg length < 0 l\00", align 1
@BLOCK_FLAG_TYPE_MASK = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_I = common dso_local global i32 0, align 4
@AVIIF_KEYFRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @Mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Mux(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %4, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %23 = call i32 @msg_Dbg(%struct.TYPE_25__* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %25 = call %struct.TYPE_27__* @avi_HeaderCreateRIFF(%struct.TYPE_25__* %24)
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %8, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %27 = icmp ne %struct.TYPE_27__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %29, i32* %2, align 4
  br label %313

30:                                               ; preds = %21
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %35 = call i32 @sout_AccessOutWrite(i32 %33, %struct.TYPE_27__* %34)
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %30, %1
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %309, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %312

45:                                               ; preds = %39
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %48, i64 %50
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  br label %309

57:                                               ; preds = %45
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %60, i64 %62
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %6, align 4
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i64 %73
  store %struct.TYPE_28__* %74, %struct.TYPE_28__** %5, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %77, i64 %79
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @block_FifoCount(i32* %84)
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %305, %132, %120, %57
  %87 = load i32, i32* %9, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %308

89:                                               ; preds = %86
  %90 = load i32*, i32** %10, align 8
  %91 = call %struct.TYPE_27__* @block_FifoGet(i32* %90)
  store %struct.TYPE_27__* %91, %struct.TYPE_27__** %12, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @block_FifoCount(i32* %92)
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i32*, i32** %10, align 8
  %97 = call %struct.TYPE_27__* @block_FifoShow(i32* %96)
  store %struct.TYPE_27__* %97, %struct.TYPE_27__** %13, align 8
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %95, %89
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %111, i64 %113
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = call i64 @PrepareSamples(%struct.TYPE_28__* %108, i32* %116, %struct.TYPE_27__** %12)
  %118 = load i64, i64* @VLC_SUCCESS, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %107
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %9, align 4
  br label %86

123:                                              ; preds = %107
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %123
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %134 = call i32 @msg_Warn(%struct.TYPE_25__* %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %136 = call i32 @block_Release(%struct.TYPE_27__* %135)
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %9, align 4
  br label %86

139:                                              ; preds = %123
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %142
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %158, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i64 %163
  store %struct.TYPE_29__* %164, %struct.TYPE_29__** %11, align 8
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @memcpy(i32 %167, i32 %170, i32 4)
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 2
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @BLOCK_FLAG_TYPE_MASK, align 4
  %178 = and i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %139
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %180, %139
  %188 = load i64, i64* @AVIIF_KEYFRAME, align 8
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %187, %180
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, 4
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 1
  store i64 %195, i64* %197, align 8
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %205, align 8
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp uge i64 %211, %215
  br i1 %216, label %217, label %237

217:                                              ; preds = %191
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = add i64 %221, 10000
  store i64 %222, i64* %220, align 8
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %225, align 8
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = mul i64 %230, 32
  %232 = trunc i64 %231 to i32
  %233 = call %struct.TYPE_29__* @xrealloc(%struct.TYPE_29__* %226, i32 %232)
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 2
  store %struct.TYPE_29__* %233, %struct.TYPE_29__** %236, align 8
  br label %237

237:                                              ; preds = %217, %191
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call %struct.TYPE_27__* @block_Realloc(%struct.TYPE_27__* %238, i32 8, i32 %241)
  store %struct.TYPE_27__* %242, %struct.TYPE_27__** %12, align 8
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %244 = icmp ne %struct.TYPE_27__* %243, null
  br i1 %244, label %245, label %305

245:                                              ; preds = %237
  %246 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %246, i32 0, i32 4
  %248 = load i8*, i8** %247, align 8
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @SetFCC(i8* %248, i32 %251)
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 4
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 4
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = sub nsw i32 %259, 8
  %261 = call i32 @SetDWLE(i8* %256, i32 %260)
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %264, 1
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %287

267:                                              ; preds = %245
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  %273 = call %struct.TYPE_27__* @block_Realloc(%struct.TYPE_27__* %268, i32 0, i32 %272)
  store %struct.TYPE_27__* %273, %struct.TYPE_27__** %12, align 8
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %275 = icmp ne %struct.TYPE_27__* %274, null
  br i1 %275, label %276, label %286

276:                                              ; preds = %267
  %277 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %277, i32 0, i32 4
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = sub nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %279, i64 %284
  store i8 0, i8* %285, align 1
  br label %286

286:                                              ; preds = %276, %267
  br label %287

287:                                              ; preds = %286, %245
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %289 = icmp ne %struct.TYPE_27__* %288, null
  br i1 %289, label %290, label %304

290:                                              ; preds = %287
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %297, %294
  store i64 %298, i64* %296, align 8
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %303 = call i32 @sout_AccessOutWrite(i32 %301, %struct.TYPE_27__* %302)
  br label %304

304:                                              ; preds = %290, %287
  br label %305

305:                                              ; preds = %304, %237
  %306 = load i32, i32* %9, align 4
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %9, align 4
  br label %86

308:                                              ; preds = %86
  br label %309

309:                                              ; preds = %308, %56
  %310 = load i32, i32* %7, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %7, align 4
  br label %39

312:                                              ; preds = %39
  store i32 0, i32* %2, align 4
  br label %313

313:                                              ; preds = %312, %28
  %314 = load i32, i32* %2, align 4
  ret i32 %314
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_25__*, i8*) #1

declare dso_local %struct.TYPE_27__* @avi_HeaderCreateRIFF(%struct.TYPE_25__*) #1

declare dso_local i32 @sout_AccessOutWrite(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @block_FifoCount(i32*) #1

declare dso_local %struct.TYPE_27__* @block_FifoGet(i32*) #1

declare dso_local %struct.TYPE_27__* @block_FifoShow(i32*) #1

declare dso_local i64 @PrepareSamples(%struct.TYPE_28__*, i32*, %struct.TYPE_27__**) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @block_Release(%struct.TYPE_27__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_29__* @xrealloc(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_27__* @block_Realloc(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @SetFCC(i8*, i32) #1

declare dso_local i32 @SetDWLE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
