; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_d3d9_filters.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_d3d9_filters.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32, %struct.TYPE_39__, i32, %struct.TYPE_56__, %struct.TYPE_53__, %struct.TYPE_51__, %struct.TYPE_49__ }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_56__ = type { i32 }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_40__ = type { %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_44__ = type { i8*, i8*, i64, i64 }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_46__ = type { %struct.TYPE_38__, %struct.TYPE_37__, i32, i64, %struct.TYPE_44__, i64, %struct.TYPE_55__, i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_55__ = type { %struct.TYPE_54__, %struct.TYPE_52__, %struct.TYPE_50__, %struct.TYPE_47__ }
%struct.TYPE_54__ = type { i8* }
%struct.TYPE_52__ = type { i8* }
%struct.TYPE_50__ = type { i8* }
%struct.TYPE_47__ = type { i8* }
%struct.TYPE_45__ = type { i32 }

@DXVA2_SampleProgressiveFrame = common dso_local global i32 0, align 4
@D3DTEXF_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_40__* (%struct.TYPE_42__*, %struct.TYPE_40__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_40__* @Filter(%struct.TYPE_42__* %0, %struct.TYPE_40__* %1) #0 {
  %3 = alloca %struct.TYPE_40__*, align 8
  %4 = alloca %struct.TYPE_42__*, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca %struct.TYPE_43__*, align 8
  %7 = alloca %struct.TYPE_41__*, align 8
  %8 = alloca %struct.TYPE_40__*, align 8
  %9 = alloca %struct.TYPE_41__*, align 8
  %10 = alloca %struct.TYPE_44__, align 8
  %11 = alloca %struct.TYPE_48__, align 4
  %12 = alloca %struct.TYPE_48__, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_46__, align 8
  %15 = alloca %struct.TYPE_45__, align 4
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %4, align 8
  store %struct.TYPE_40__* %1, %struct.TYPE_40__** %5, align 8
  %16 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  store %struct.TYPE_43__* %18, %struct.TYPE_43__** %6, align 8
  %19 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %20 = call %struct.TYPE_41__* @ActiveD3D9PictureSys(%struct.TYPE_40__* %19)
  store %struct.TYPE_41__* %20, %struct.TYPE_41__** %7, align 8
  %21 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %22 = call %struct.TYPE_40__* @filter_NewPicture(%struct.TYPE_42__* %21)
  store %struct.TYPE_40__* %22, %struct.TYPE_40__** %8, align 8
  %23 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %24 = icmp ne %struct.TYPE_40__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %147

26:                                               ; preds = %2
  %27 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_41__*, %struct.TYPE_41__** %28, align 8
  store %struct.TYPE_41__* %29, %struct.TYPE_41__** %9, align 8
  %30 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %31 = icmp ne %struct.TYPE_41__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %26
  br label %147

38:                                               ; preds = %32
  %39 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  %40 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %41 = call i32 @picture_CopyProperties(%struct.TYPE_40__* %39, %struct.TYPE_40__* %40)
  %42 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @IDirect3DSurface9_GetDesc(i32 %44, %struct.TYPE_48__* %11)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = call i64 @unlikely(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %147

51:                                               ; preds = %38
  %52 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IDirect3DSurface9_GetDesc(i32 %54, %struct.TYPE_48__* %12)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i64 @FAILED(i32 %56)
  %58 = call i64 @unlikely(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %147

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %10, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %10, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @__MIN(i32 %65, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %10, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %12, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @__MIN(i32 %71, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %10, i32 0, i32 0
  store i8* %74, i8** %75, align 8
  %76 = bitcast %struct.TYPE_46__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %76, i8 0, i64 104, i1 false)
  %77 = bitcast %struct.TYPE_45__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %77, i8 0, i64 4, i1 false)
  %78 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %79 = call i32 @FillSample(%struct.TYPE_45__* %15, %struct.TYPE_40__* %78, %struct.TYPE_44__* %10)
  %80 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %81, i32 0, i32 0
  %83 = call i8* @atomic_load(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %14, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %85, i32 0, i32 0
  store i8* %83, i8** %86, align 8
  %87 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %88, i32 0, i32 0
  %90 = call i8* @atomic_load(i32* %89)
  %91 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %14, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  %94 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %95, i32 0, i32 0
  %97 = call i8* @atomic_load(i32* %96)
  %98 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %14, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %102, i32 0, i32 0
  %104 = call i8* @atomic_load(i32* %103)
  %105 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %14, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %14, i32 0, i32 5
  store i64 0, i64* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %14, i32 0, i32 4
  %110 = bitcast %struct.TYPE_44__* %109 to i8*
  %111 = bitcast %struct.TYPE_44__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 32, i1 false)
  %112 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %14, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = call i32 (...) @DXVA2_Fixed32OpaqueAlpha()
  %114 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %14, i32 0, i32 2
  store i32 %113, i32* %114, align 8
  %115 = load i32, i32* @DXVA2_SampleProgressiveFrame, align 4
  %116 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %14, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %14, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %118, i32 0, i32 0
  store i32 65535, i32* %119, align 8
  %120 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @IDirectXVideoProcessor_VideoProcessBlt(i32 %122, i32 %125, %struct.TYPE_46__* %14, %struct.TYPE_45__* %15, i32 1, i32* null)
  store i32 %126, i32* %13, align 4
  %127 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_41__*, %struct.TYPE_41__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @D3DTEXF_NONE, align 4
  %138 = call i32 @IDirect3DDevice9_StretchRect(i32 %130, i32 %133, i32* null, i32 %136, i32* null, i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i64 @FAILED(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %61
  br label %147

143:                                              ; preds = %61
  %144 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %145 = call i32 @picture_Release(%struct.TYPE_40__* %144)
  %146 = load %struct.TYPE_40__*, %struct.TYPE_40__** %8, align 8
  store %struct.TYPE_40__* %146, %struct.TYPE_40__** %3, align 8
  br label %150

147:                                              ; preds = %142, %60, %50, %37, %25
  %148 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %149 = call i32 @picture_Release(%struct.TYPE_40__* %148)
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %3, align 8
  br label %150

150:                                              ; preds = %147, %143
  %151 = load %struct.TYPE_40__*, %struct.TYPE_40__** %3, align 8
  ret %struct.TYPE_40__* %151
}

declare dso_local %struct.TYPE_41__* @ActiveD3D9PictureSys(%struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_40__* @filter_NewPicture(%struct.TYPE_42__*) #1

declare dso_local i32 @picture_CopyProperties(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @IDirect3DSurface9_GetDesc(i32, %struct.TYPE_48__*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i8* @__MIN(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @FillSample(%struct.TYPE_45__*, %struct.TYPE_40__*, %struct.TYPE_44__*) #1

declare dso_local i8* @atomic_load(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DXVA2_Fixed32OpaqueAlpha(...) #1

declare dso_local i32 @IDirectXVideoProcessor_VideoProcessBlt(i32, i32, %struct.TYPE_46__*, %struct.TYPE_45__*, i32, i32*) #1

declare dso_local i32 @IDirect3DDevice9_StretchRect(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @picture_Release(%struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
