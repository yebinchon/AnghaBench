; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_vlc_vaapi.c_vlc_vaapi_PoolNew.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_vlc_vaapi.c_vlc_vaapi_PoolNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.pic_sys_vaapi_instance = type { i32, i32*, i8*, i32, i32, %struct.TYPE_16__, %struct.pic_sys_vaapi_instance* }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.pic_sys_vaapi_instance* }

@VAGenericValueTypeInteger = common dso_local global i32 0, align 4
@VA_SURFACE_ATTRIB_SETTABLE = common dso_local global i32 0, align 4
@VASurfaceAttribPixelFormat = common dso_local global i32 0, align 4
@vaCreateSurfaces = common dso_local global i32 0, align 4
@pic_sys_ctx_destroy_cb = common dso_local global i32 0, align 4
@pic_ctx_copy_cb = common dso_local global i32 0, align 4
@pool_pic_destroy_cb = common dso_local global i32 0, align 4
@vaDestroySurfaces = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_vaapi_PoolNew(i32* %0, i32* %1, i8* %2, i32 %3, i32** %4, %struct.TYPE_17__* noalias %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.pic_sys_vaapi_instance*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [1 x %struct.TYPE_19__], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.pic_sys_vaapi_instance*, align 8
  %26 = alloca %struct.TYPE_18__, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32** %4, i32*** %13, align 8
  store %struct.TYPE_17__* %5, %struct.TYPE_17__** %14, align 8
  store i32 %6, i32* %15, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vlc_chroma_to_vaapi(i32 %31, i32* %16, i32* %17)
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = add i64 72, %35
  %37 = trunc i64 %36 to i32
  %38 = call %struct.pic_sys_vaapi_instance* @malloc(i32 %37)
  store %struct.pic_sys_vaapi_instance* %38, %struct.pic_sys_vaapi_instance** %18, align 8
  %39 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %40 = icmp ne %struct.pic_sys_vaapi_instance* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %214

42:                                               ; preds = %7
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %45 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %47 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %46, i32 0, i32 4
  %48 = call i32 @atomic_init(i32* %47, i32 0)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %19, align 8
  store i32 0, i32* %20, align 4
  %49 = getelementptr inbounds [1 x %struct.TYPE_19__], [1 x %struct.TYPE_19__]* %21, i64 0, i64 0
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %17, align 4
  br label %58

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  store i32 %59, i32* %52, align 16
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %61 = load i32, i32* @VAGenericValueTypeInteger, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %63 = load i32, i32* @VA_SURFACE_ATTRIB_SETTABLE, align 4
  store i32 %63, i32* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %65 = load i32, i32* @VASurfaceAttribPixelFormat, align 4
  store i32 %65, i32* %64, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = getelementptr inbounds [1 x %struct.TYPE_19__], [1 x %struct.TYPE_19__]* %21, i64 0, i64 0
  store %struct.TYPE_19__* %69, %struct.TYPE_19__** %19, align 8
  store i32 1, i32* %20, align 4
  br label %70

70:                                               ; preds = %68, %58
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %22, align 8
  %74 = alloca i32*, i64 %72, align 16
  store i64 %72, i64* %23, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* @vaCreateSurfaces, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %86 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %89 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %92 = load i32, i32* %20, align 4
  %93 = call i32 (i32*, i32, i8*, i32, i32, ...) @VA_CALL(i32* %75, i32 %76, i8* %77, i32 %78, i32 %81, i32 %84, i32* %87, i32 %90, %struct.TYPE_19__* %91, i32 %92)
  store i32 0, i32* %24, align 4
  br label %94

94:                                               ; preds = %158, %70
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %161

98:                                               ; preds = %94
  %99 = call %struct.pic_sys_vaapi_instance* @malloc(i32 72)
  store %struct.pic_sys_vaapi_instance* %99, %struct.pic_sys_vaapi_instance** %25, align 8
  %100 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %25, align 8
  %101 = icmp eq %struct.pic_sys_vaapi_instance* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %24, align 4
  store i32 %103, i32* %12, align 4
  br label %184

104:                                              ; preds = %98
  %105 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %106 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %25, align 8
  %107 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %106, i32 0, i32 6
  store %struct.pic_sys_vaapi_instance* %105, %struct.pic_sys_vaapi_instance** %107, align 8
  %108 = load i32, i32* @pic_sys_ctx_destroy_cb, align 4
  %109 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %25, align 8
  %110 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store i32 %108, i32* %113, align 4
  %114 = load i32, i32* @pic_ctx_copy_cb, align 4
  %115 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %25, align 8
  %116 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 4
  %120 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %121 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %24, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %25, align 8
  %128 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  store i32 %126, i32* %130, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %25, align 8
  %133 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  store i8* %131, i8** %135, align 8
  %136 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %25, align 8
  %137 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %140 = load i32, i32* @pool_pic_destroy_cb, align 4
  store i32 %140, i32* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %142 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %25, align 8
  store %struct.pic_sys_vaapi_instance* %142, %struct.pic_sys_vaapi_instance** %141, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %144 = call i32* @picture_NewFromResource(%struct.TYPE_17__* %143, %struct.TYPE_18__* %26)
  %145 = load i32, i32* %24, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %74, i64 %146
  store i32* %144, i32** %147, align 8
  %148 = load i32, i32* %24, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %74, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %104
  %154 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %25, align 8
  %155 = call i32 @free(%struct.pic_sys_vaapi_instance* %154)
  %156 = load i32, i32* %24, align 4
  store i32 %156, i32* %12, align 4
  br label %184

157:                                              ; preds = %104
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %24, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %24, align 4
  br label %94

161:                                              ; preds = %94
  %162 = load i32, i32* %12, align 4
  %163 = call i32* @picture_pool_New(i32 %162, i32** %74)
  store i32* %163, i32** %27, align 8
  %164 = load i32*, i32** %27, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %161
  br label %184

167:                                              ; preds = %161
  %168 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %169 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %168, i32 0, i32 4
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @atomic_store(i32* %169, i32 %170)
  %172 = load i8*, i8** %11, align 8
  %173 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %174 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  %175 = load i32*, i32** %10, align 8
  %176 = call i32 @vlc_decoder_device_Hold(i32* %175)
  %177 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %178 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %180 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32**, i32*** %13, align 8
  store i32* %181, i32** %182, align 8
  %183 = load i32*, i32** %27, align 8
  store i32* %183, i32** %8, align 8
  store i32 1, i32* %28, align 4
  br label %212

184:                                              ; preds = %166, %153, %102
  br label %185

185:                                              ; preds = %188, %184
  %186 = load i32, i32* %12, align 4
  %187 = icmp ugt i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load i32, i32* %12, align 4
  %190 = add i32 %189, -1
  store i32 %190, i32* %12, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %74, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @picture_Release(i32* %193)
  br label %185

195:                                              ; preds = %185
  %196 = load i32*, i32** %9, align 8
  %197 = load i32, i32* @vaDestroySurfaces, align 4
  %198 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %199 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %202 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = ptrtoint i32* %203 to i32
  %205 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %206 = getelementptr inbounds %struct.pic_sys_vaapi_instance, %struct.pic_sys_vaapi_instance* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (i32*, i32, i8*, i32, i32, ...) @VA_CALL(i32* %196, i32 %197, i8* %200, i32 %204, i32 %207)
  br label %209

209:                                              ; preds = %195
  %210 = load %struct.pic_sys_vaapi_instance*, %struct.pic_sys_vaapi_instance** %18, align 8
  %211 = call i32 @free(%struct.pic_sys_vaapi_instance* %210)
  store i32* null, i32** %8, align 8
  store i32 1, i32* %28, align 4
  br label %212

212:                                              ; preds = %209, %167
  %213 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %213)
  br label %214

214:                                              ; preds = %212, %41
  %215 = load i32*, i32** %8, align 8
  ret i32* %215
}

declare dso_local i32 @vlc_chroma_to_vaapi(i32, i32*, i32*) #1

declare dso_local %struct.pic_sys_vaapi_instance* @malloc(i32) #1

declare dso_local i32 @atomic_init(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @VA_CALL(i32*, i32, i8*, i32, i32, ...) #1

declare dso_local i32* @picture_NewFromResource(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @free(%struct.pic_sys_vaapi_instance*) #1

declare dso_local i32* @picture_pool_New(i32, i32**) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @vlc_decoder_device_Hold(i32*) #1

declare dso_local i32 @picture_Release(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
