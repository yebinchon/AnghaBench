; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/nvdec/extr_nvdec_gl.c_tc_nvdec_gl_allocate_texture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/nvdec/extr_nvdec_gl.c_tc_nvdec_gl_allocate_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i64 (...)*, i32 (i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i32* }

@cuCtxPushCurrent = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@GL_NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"could not alloc PBO buffers\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@cuGraphicsGLRegisterImage = common dso_local global i32 0, align 4
@CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD = common dso_local global i32 0, align 4
@cuGraphicsMapResources = common dso_local global i32 0, align 4
@cuGraphicsSubResourceGetMappedArray = common dso_local global i32 0, align 4
@cuGraphicsUnmapResources = common dso_local global i32 0, align 4
@cuCtxPopCurrent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32*, i32*)* @tc_nvdec_gl_allocate_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_nvdec_gl_allocate_texture(%struct.TYPE_10__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %10, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call %struct.TYPE_11__* @GetNVDECOpaqueDevice(i32* %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %12, align 8
  %23 = load i32, i32* @cuCtxPushCurrent, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  br label %36

32:                                               ; preds = %4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32* [ %31, %28 ], [ %35, %32 ]
  %38 = ptrtoint i32* %37 to i32
  %39 = call i32 (i32, i32, ...) @CALL_CUDA(i32 %23, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @VLC_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %191

45:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %184, %45
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %187

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32 (i32, i32)*, i32 (i32, i32)** %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %14, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 %57(i32 %60, i32 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)** %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %14, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %14, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 %71(i32 %74, i32 0, i32 %82, i32 %87, i32 %92, i32 0, i32 %100, i32 %108, i32* null)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64 (...)*, i64 (...)** %113, align 8
  %115 = call i64 (...) %114()
  %116 = load i64, i64* @GL_NO_ERROR, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %52
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @msg_Err(i32 %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %123 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %123, i32* %5, align 4
  br label %191

124:                                              ; preds = %52
  %125 = load i32, i32* @cuGraphicsGLRegisterImage, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = ptrtoint i32* %131 to i32
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %14, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD, align 4
  %142 = call i32 (i32, i32, ...) @CALL_CUDA(i32 %125, i32 %132, i32 %137, i32 %140, i32 %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* @cuGraphicsMapResources, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = call i32 (i32, i32, ...) @CALL_CUDA(i32 %143, i32 1, i32* %149, i32 0)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* @cuGraphicsSubResourceGetMappedArray, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = ptrtoint i32* %157 to i32
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i32, ...) @CALL_CUDA(i32 %151, i32 %158, i32 %165, i32 0, i32 0)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* @cuGraphicsUnmapResources, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = call i32 (i32, i32, ...) @CALL_CUDA(i32 %167, i32 1, i32* %173, i32 0)
  store i32 %174, i32* %13, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i32 (i32, i32)*, i32 (i32, i32)** %178, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 %179(i32 %182, i32 0)
  br label %184

184:                                              ; preds = %124
  %185 = load i32, i32* %14, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %14, align 4
  br label %46

187:                                              ; preds = %46
  %188 = load i32, i32* @cuCtxPopCurrent, align 4
  %189 = call i32 (i32, i32, ...) @CALL_CUDA(i32 %188, i32 0)
  %190 = load i32, i32* %13, align 4
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %187, %118, %43
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local %struct.TYPE_11__* @GetNVDECOpaqueDevice(i32*) #1

declare dso_local i32 @CALL_CUDA(i32, i32, ...) #1

declare dso_local i32 @msg_Err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
