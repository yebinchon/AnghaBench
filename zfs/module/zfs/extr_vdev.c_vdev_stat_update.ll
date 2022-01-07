; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_stat_update.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_stat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, i32, i64, i64, %struct.TYPE_21__*, i64, i64, i32, i64, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__*, i32, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_23__ = type { i32**, i32**, i32**, i32**, i32** }
%struct.TYPE_22__ = type { i64, i32*, i32*, i32 }
%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }

@ZIO_FLAG_IO_BYPASS = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_REPAIR = common dso_local global i32 0, align 4
@ZIO_FLAG_SCAN_THREAD = common dso_local global i32 0, align 4
@ZIO_FLAG_SELF_HEAL = common dso_local global i32 0, align 4
@ZIO_PRIORITY_NUM_QUEUEABLE = common dso_local global i64 0, align 8
@ZIO_TYPE_TRIM = common dso_local global i64 0, align 8
@ZIO_TYPE_IOCTL = common dso_local global i64 0, align 8
@ZIO_FLAG_DELEGATED = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@ZIO_FLAG_IO_RETRY = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_PROPAGATE = common dso_local global i32 0, align 4
@SPA_LOAD_NONE = common dso_local global i64 0, align 8
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@DTL_SCRUB = common dso_local global i32 0, align 4
@DTL_MISSING = common dso_local global i32 0, align 4
@DTL_PARTIAL = common dso_local global i32 0, align 4
@VDD_DTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_stat_update(%struct.TYPE_20__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i64 %1, i64* %4, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 10
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  store %struct.TYPE_24__* %20, %struct.TYPE_24__** %5, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %6, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = icmp ne %struct.TYPE_21__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  br label %34

32:                                               ; preds = %2
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi %struct.TYPE_21__* [ %31, %28 ], [ %33, %32 ]
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %7, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 5
  store %struct.TYPE_22__* %40, %struct.TYPE_22__** %10, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 4
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %11, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %13, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 9
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  br label %413

54:                                               ; preds = %34
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %264

59:                                               ; preds = %54
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = icmp eq %struct.TYPE_21__* %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %413

64:                                               ; preds = %59
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = icmp eq %struct.TYPE_21__* %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @ZIO_FLAG_IO_BYPASS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %413

77:                                               ; preds = %64
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 3
  %80 = call i32 @mutex_enter(i32* %79)
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @ZIO_FLAG_IO_REPAIR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %129

85:                                               ; preds = %77
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @ZIO_FLAG_SCAN_THREAD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %85
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  store %struct.TYPE_25__* %96, %struct.TYPE_25__** %14, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  store i64* %98, i64** %15, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %90
  %106 = load i64*, i64** %15, align 8
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @atomic_add_64(i64* %106, i64 %107)
  br label %109

109:                                              ; preds = %105, %90
  %110 = load i64, i64* %4, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %109, %85
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @ZIO_FLAG_SELF_HEAL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load i64, i64* %4, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %121
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 8
  br label %128

128:                                              ; preds = %120, %115
  br label %129

129:                                              ; preds = %128, %77
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %260

136:                                              ; preds = %129
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ZIO_PRIORITY_NUM_QUEUEABLE, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %260

142:                                              ; preds = %136
  %143 = load i64, i64* %12, align 8
  store i64 %143, i64* %16, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* @ZIO_TYPE_TRIM, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i64, i64* @ZIO_TYPE_IOCTL, align 8
  store i64 %148, i64* %16, align 8
  br label %149

149:                                              ; preds = %147, %142
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %16, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load i64, i64* %4, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* %16, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %157
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @ZIO_FLAG_DELEGATED, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %187

171:                                              ; preds = %149
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 4
  %174 = load i32**, i32*** %173, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i32*, i32** %174, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @RQ_HISTO(i32 %182)
  %184 = getelementptr inbounds i32, i32* %179, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  br label %203

187:                                              ; preds = %149
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 3
  %190 = load i32**, i32*** %189, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds i32*, i32** %190, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @RQ_HISTO(i32 %198)
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %187, %171
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 6
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %259

208:                                              ; preds = %203
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 7
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %259

213:                                              ; preds = %208
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 2
  %216 = load i32**, i32*** %215, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds i32*, i32** %216, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 7
  %227 = load i64, i64* %226, align 8
  %228 = sub nsw i64 %224, %227
  %229 = call i64 @L_HISTO(i64 %228)
  %230 = getelementptr inbounds i32, i32* %221, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 1
  %235 = load i32**, i32*** %234, align 8
  %236 = load i64, i64* %12, align 8
  %237 = getelementptr inbounds i32*, i32** %235, i64 %236
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 7
  %241 = load i64, i64* %240, align 8
  %242 = call i64 @L_HISTO(i64 %241)
  %243 = getelementptr inbounds i32, i32* %238, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 4
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 0
  %248 = load i32**, i32*** %247, align 8
  %249 = load i64, i64* %12, align 8
  %250 = getelementptr inbounds i32*, i32** %248, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 6
  %254 = load i64, i64* %253, align 8
  %255 = call i64 @L_HISTO(i64 %254)
  %256 = getelementptr inbounds i32, i32* %251, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %213, %208, %203
  br label %260

260:                                              ; preds = %259, %136, %129
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 3
  %263 = call i32 @mutex_exit(i32* %262)
  br label %413

264:                                              ; preds = %54
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  br label %413

270:                                              ; preds = %264
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @EIO, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %284

276:                                              ; preds = %270
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @ZIO_FLAG_IO_RETRY, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %276
  br label %413

284:                                              ; preds = %276, %270
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 5
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %286, align 8
  %288 = icmp eq %struct.TYPE_21__* %287, null
  br i1 %288, label %289, label %297

289:                                              ; preds = %284
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @ZIO_FLAG_DONT_PROPAGATE, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %289
  br label %413

297:                                              ; preds = %289, %284
  %298 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @SPA_LOAD_NONE, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %413

303:                                              ; preds = %297
  %304 = load i64, i64* %12, align 8
  %305 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %413

307:                                              ; preds = %303
  %308 = load i64, i64* %9, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %413

310:                                              ; preds = %307
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* @ZIO_FLAG_IO_REPAIR, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %325

315:                                              ; preds = %310
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* @ZIO_FLAG_SCAN_THREAD, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %325, label %320

320:                                              ; preds = %315
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %413

325:                                              ; preds = %320, %315, %310
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %403

332:                                              ; preds = %325
  %333 = load i64, i64* %9, align 8
  store i64 %333, i64* %17, align 8
  %334 = load i32, i32* %13, align 4
  %335 = load i32, i32* @ZIO_FLAG_SCAN_THREAD, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %354

338:                                              ; preds = %332
  %339 = load i32, i32* %13, align 4
  %340 = load i32, i32* @ZIO_FLAG_IO_REPAIR, align 4
  %341 = and i32 %339, %340
  %342 = call i32 @ASSERT(i32 %341)
  %343 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %344 = call i32 @spa_sync_pass(%struct.TYPE_24__* %343)
  %345 = icmp eq i32 %344, 1
  %346 = zext i1 %345 to i32
  %347 = call i32 @ASSERT(i32 %346)
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %349 = load i32, i32* @DTL_SCRUB, align 4
  %350 = load i64, i64* %9, align 8
  %351 = call i32 @vdev_dtl_dirty(%struct.TYPE_21__* %348, i32 %349, i64 %350, i32 1)
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %353 = call i64 @spa_syncing_txg(%struct.TYPE_24__* %352)
  store i64 %353, i64* %17, align 8
  br label %367

354:                                              ; preds = %332
  %355 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %354
  %360 = load i32, i32* %13, align 4
  %361 = load i32, i32* @ZIO_FLAG_IO_REPAIR, align 4
  %362 = and i32 %360, %361
  %363 = call i32 @ASSERT(i32 %362)
  %364 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %365 = call i64 @spa_first_txg(%struct.TYPE_24__* %364)
  store i64 %365, i64* %17, align 8
  br label %366

366:                                              ; preds = %359, %354
  br label %367

367:                                              ; preds = %366, %338
  %368 = load i64, i64* %17, align 8
  %369 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %370 = call i64 @spa_syncing_txg(%struct.TYPE_24__* %369)
  %371 = icmp sge i64 %368, %370
  %372 = zext i1 %371 to i32
  %373 = call i32 @ASSERT(i32 %372)
  %374 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %375 = load i32, i32* @DTL_MISSING, align 4
  %376 = load i64, i64* %9, align 8
  %377 = call i64 @vdev_dtl_contains(%struct.TYPE_21__* %374, i32 %375, i64 %376, i32 1)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %367
  br label %413

380:                                              ; preds = %367
  %381 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %381, %struct.TYPE_21__** %8, align 8
  br label %382

382:                                              ; preds = %391, %380
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %385 = icmp ne %struct.TYPE_21__* %383, %384
  br i1 %385, label %386, label %395

386:                                              ; preds = %382
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %388 = load i32, i32* @DTL_PARTIAL, align 4
  %389 = load i64, i64* %9, align 8
  %390 = call i32 @vdev_dtl_dirty(%struct.TYPE_21__* %387, i32 %388, i64 %389, i32 1)
  br label %391

391:                                              ; preds = %386
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %393, align 8
  store %struct.TYPE_21__* %394, %struct.TYPE_21__** %8, align 8
  br label %382

395:                                              ; preds = %382
  %396 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @VDD_DTL, align 4
  %400 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %401 = load i64, i64* %17, align 8
  %402 = call i32 @vdev_dirty(i32 %398, i32 %399, %struct.TYPE_21__* %400, i64 %401)
  br label %403

403:                                              ; preds = %395, %325
  %404 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %405 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %406 = icmp ne %struct.TYPE_21__* %404, %405
  br i1 %406, label %407, label %412

407:                                              ; preds = %403
  %408 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %409 = load i32, i32* @DTL_MISSING, align 4
  %410 = load i64, i64* %9, align 8
  %411 = call i32 @vdev_dtl_dirty(%struct.TYPE_21__* %408, i32 %409, i64 %410, i32 1)
  br label %412

412:                                              ; preds = %407, %403
  br label %413

413:                                              ; preds = %53, %63, %76, %260, %269, %283, %296, %379, %412, %320, %307, %303, %297
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @atomic_add_64(i64*, i64) #1

declare dso_local i64 @RQ_HISTO(i32) #1

declare dso_local i64 @L_HISTO(i64) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_sync_pass(%struct.TYPE_24__*) #1

declare dso_local i32 @vdev_dtl_dirty(%struct.TYPE_21__*, i32, i64, i32) #1

declare dso_local i64 @spa_syncing_txg(%struct.TYPE_24__*) #1

declare dso_local i64 @spa_first_txg(%struct.TYPE_24__*) #1

declare dso_local i64 @vdev_dtl_contains(%struct.TYPE_21__*, i32, i64, i32) #1

declare dso_local i32 @vdev_dirty(i32, i32, %struct.TYPE_21__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
