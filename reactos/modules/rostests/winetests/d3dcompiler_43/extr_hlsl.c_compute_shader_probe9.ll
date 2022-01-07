; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_hlsl.c_compute_shader_probe9.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_hlsl.c_compute_shader_probe9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_probe_info = type { i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@D3DFMT_A32B32G32R32F = common dso_local global i32 0, align 4
@D3DLOCK_READONLY = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"IDirect3DSurface9_LockRect returned: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"Line %d: At (%d, %d): %s: Expected (%.04f,%.04f,%.04f, %.04f), got (%.04f,%.04f,%.04f,%.04f)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"IDirect3DSurface9_UnlockRect returned: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"IDirect3DDevice9_Present returned: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, %struct.hlsl_probe_info*, i32, i32, i32, i32)* @compute_shader_probe9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_shader_probe9(i32* %0, i32* %1, i32* %2, i32* %3, %struct.hlsl_probe_info* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.hlsl_probe_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_7__, align 8
  %23 = alloca %struct.TYPE_6__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.hlsl_probe_info* %4, %struct.hlsl_probe_info** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* @D3DFMT_A32B32G32R32F, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @setup_device9(i32* %26, i32** %19, i32** %20, i32 %27, i32 %28, i32 %29, i32* %30, i32* %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @draw_quad_with_shader9(i32* %33, i32* %34)
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = load i32*, i32** %20, align 8
  %39 = call i32 @IDirect3DDevice9_GetRenderTargetData(i32* %36, i32* %37, i32* %38)
  %40 = load i32*, i32** %20, align 8
  %41 = load i32, i32* @D3DLOCK_READONLY, align 4
  %42 = call i32 @IDirect3DSurface9_LockRect(i32* %40, %struct.TYPE_7__* %22, i32* null, i32 %41)
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* @D3D_OK, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %21, align 4
  %48 = call i32 (i32, i8*, i32, ...) @ok(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %23, align 8
  store i32 0, i32* %24, align 4
  br label %51

51:                                               ; preds = %141, %9
  %52 = load i32, i32* %24, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %146

55:                                               ; preds = %51
  %56 = load %struct.hlsl_probe_info*, %struct.hlsl_probe_info** %14, align 8
  %57 = getelementptr inbounds %struct.hlsl_probe_info, %struct.hlsl_probe_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.hlsl_probe_info*, %struct.hlsl_probe_info** %14, align 8
  %61 = getelementptr inbounds %struct.hlsl_probe_info, %struct.hlsl_probe_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %62, %64
  %66 = sext i32 %65 to i64
  %67 = udiv i64 %66, 16
  %68 = add i64 %59, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %25, align 4
  %70 = load %struct.hlsl_probe_info*, %struct.hlsl_probe_info** %14, align 8
  %71 = getelementptr inbounds %struct.hlsl_probe_info, %struct.hlsl_probe_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %73 = load i32, i32* %25, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = load %struct.hlsl_probe_info*, %struct.hlsl_probe_info** %14, align 8
  %77 = getelementptr inbounds %struct.hlsl_probe_info, %struct.hlsl_probe_info* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = bitcast %struct.TYPE_8__* %71 to { i64, i64 }*
  %80 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 4
  %82 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %79, i32 0, i32 1
  %83 = load i64, i64* %82, align 4
  %84 = bitcast %struct.TYPE_6__* %75 to { i64, i64 }*
  %85 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 4
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %84, i32 0, i32 1
  %88 = load i64, i64* %87, align 4
  %89 = call i32 @colors_match(i64 %81, i64 %83, i64 %86, i64 %88, i32 %78)
  %90 = load i32, i32* %18, align 4
  %91 = load %struct.hlsl_probe_info*, %struct.hlsl_probe_info** %14, align 8
  %92 = getelementptr inbounds %struct.hlsl_probe_info, %struct.hlsl_probe_info* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.hlsl_probe_info*, %struct.hlsl_probe_info** %14, align 8
  %95 = getelementptr inbounds %struct.hlsl_probe_info, %struct.hlsl_probe_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hlsl_probe_info*, %struct.hlsl_probe_info** %14, align 8
  %98 = getelementptr inbounds %struct.hlsl_probe_info, %struct.hlsl_probe_info* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hlsl_probe_info*, %struct.hlsl_probe_info** %14, align 8
  %101 = getelementptr inbounds %struct.hlsl_probe_info, %struct.hlsl_probe_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hlsl_probe_info*, %struct.hlsl_probe_info** %14, align 8
  %105 = getelementptr inbounds %struct.hlsl_probe_info, %struct.hlsl_probe_info* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.hlsl_probe_info*, %struct.hlsl_probe_info** %14, align 8
  %109 = getelementptr inbounds %struct.hlsl_probe_info, %struct.hlsl_probe_info* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.hlsl_probe_info*, %struct.hlsl_probe_info** %14, align 8
  %113 = getelementptr inbounds %struct.hlsl_probe_info, %struct.hlsl_probe_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %117 = load i32, i32* %25, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %123 = load i32, i32* %25, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %129 = load i32, i32* %25, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %135 = load i32, i32* %25, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, i32, ...) @ok(i32 %89, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %93, i32 %96, i32 %99, i32 %103, i32 %107, i32 %111, i32 %115, i32 %121, i32 %127, i32 %133, i32 %139)
  br label %141

141:                                              ; preds = %55
  %142 = load i32, i32* %24, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %24, align 4
  %144 = load %struct.hlsl_probe_info*, %struct.hlsl_probe_info** %14, align 8
  %145 = getelementptr inbounds %struct.hlsl_probe_info, %struct.hlsl_probe_info* %144, i32 1
  store %struct.hlsl_probe_info* %145, %struct.hlsl_probe_info** %14, align 8
  br label %51

146:                                              ; preds = %51
  %147 = load i32*, i32** %20, align 8
  %148 = call i32 @IDirect3DSurface9_UnlockRect(i32* %147)
  store i32 %148, i32* %21, align 4
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* @D3D_OK, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %21, align 4
  %154 = call i32 (i32, i8*, i32, ...) @ok(i32 %152, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @IDirect3DDevice9_Present(i32* %155, i32* null, i32* null, i32* null, i32* null)
  store i32 %156, i32* %21, align 4
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* @D3D_OK, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %21, align 4
  %162 = call i32 (i32, i8*, i32, ...) @ok(i32 %160, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  %163 = load i32*, i32** %19, align 8
  %164 = call i32 @IDirect3DSurface9_Release(i32* %163)
  %165 = load i32*, i32** %20, align 8
  %166 = call i32 @IDirect3DSurface9_Release(i32* %165)
  ret void
}

declare dso_local i32 @setup_device9(i32*, i32**, i32**, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @draw_quad_with_shader9(i32*, i32*) #1

declare dso_local i32 @IDirect3DDevice9_GetRenderTargetData(i32*, i32*, i32*) #1

declare dso_local i32 @IDirect3DSurface9_LockRect(i32*, %struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @colors_match(i64, i64, i64, i64, i32) #1

declare dso_local i32 @IDirect3DSurface9_UnlockRect(i32*) #1

declare dso_local i32 @IDirect3DDevice9_Present(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @IDirect3DSurface9_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
