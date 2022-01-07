; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_FindD3D11Format.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_FindD3D11Format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64*, i32* }
%struct.TYPE_8__ = type { i32 }

@D3D11_FORMAT_SUPPORT_TEXTURE2D = common dso_local global i32 0, align 4
@DXGI_FORMAT_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @FindD3D11Format(i32* %0, %struct.TYPE_8__* %1, i64 %2, i32 %3, i64 %4, i64 %5, i64 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = load i32, i32* @D3D11_FORMAT_SUPPORT_TEXTURE2D, align 4
  %23 = load i32, i32* %19, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %19, align 4
  %25 = call %struct.TYPE_7__* (...) @GetRenderFormatList()
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %20, align 8
  br label %26

26:                                               ; preds = %129, %9
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %132

31:                                               ; preds = %26
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i64, i64* %13, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %129

41:                                               ; preds = %34, %31
  %42 = load i64, i64* %15, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i64, i64* %15, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %129

51:                                               ; preds = %44, %41
  %52 = load i32, i32* %18, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @is_d3d11_opaque(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %129

61:                                               ; preds = %54, %51
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @vlc_fourcc_IsYUV(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %129

71:                                               ; preds = %64, %61
  %72 = load i64, i64* %16, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i64, i64* %16, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %129

81:                                               ; preds = %74, %71
  %82 = load i64, i64* %17, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i64, i64* %17, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %129

91:                                               ; preds = %84, %81
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DXGI_FORMAT_UNKNOWN, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 5
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %21, align 8
  br label %107

103:                                              ; preds = %91
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %21, align 8
  br label %107

107:                                              ; preds = %103, %97
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* %21, align 8
  %112 = load i32, i32* %19, align 4
  %113 = call i64 @DeviceSupportsFormat(i32 %110, i64 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = load i32*, i32** %11, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @CanReallyUseFormat(i32* %116, %struct.TYPE_8__* %117, i64 %120, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %115
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %10, align 8
  br label %133

128:                                              ; preds = %115, %107
  br label %129

129:                                              ; preds = %128, %90, %80, %70, %60, %50, %40
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 1
  store %struct.TYPE_7__* %131, %struct.TYPE_7__** %20, align 8
  br label %26

132:                                              ; preds = %26
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %133

133:                                              ; preds = %132, %126
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  ret %struct.TYPE_7__* %134
}

declare dso_local %struct.TYPE_7__* @GetRenderFormatList(...) #1

declare dso_local i64 @is_d3d11_opaque(i64) #1

declare dso_local i64 @vlc_fourcc_IsYUV(i64) #1

declare dso_local i64 @DeviceSupportsFormat(i32, i64, i32) #1

declare dso_local i64 @CanReallyUseFormat(i32*, %struct.TYPE_8__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
