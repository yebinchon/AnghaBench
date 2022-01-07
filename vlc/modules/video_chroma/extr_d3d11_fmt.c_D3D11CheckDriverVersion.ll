; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_D3D11CheckDriverVersion.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_D3D11CheckDriverVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.wddm_version = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @D3D11CheckDriverVersion(%struct.TYPE_7__* %0, i64 %1, %struct.wddm_version* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wddm_version*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.wddm_version* %2, %struct.wddm_version** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @D3D11DeviceAdapter(i32 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %4, align 4
  br label %153

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @IDXGIAdapter_GetDesc(i32* %20, %struct.TYPE_8__* %9)
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @IDXGIAdapter_Release(i32* %22)
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %28, i32* %4, align 4
  br label %153

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %38, i32* %4, align 4
  br label %153

39:                                               ; preds = %32, %29
  %40 = load %struct.wddm_version*, %struct.wddm_version** %7, align 8
  %41 = getelementptr inbounds %struct.wddm_version, %struct.wddm_version* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.wddm_version*, %struct.wddm_version** %7, align 8
  %50 = getelementptr inbounds %struct.wddm_version, %struct.wddm_version* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %54, i32* %4, align 4
  br label %153

55:                                               ; preds = %44
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.wddm_version*, %struct.wddm_version** %7, align 8
  %61 = getelementptr inbounds %struct.wddm_version, %struct.wddm_version* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %65, i32* %4, align 4
  br label %153

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %39
  %68 = load %struct.wddm_version*, %struct.wddm_version** %7, align 8
  %69 = getelementptr inbounds %struct.wddm_version, %struct.wddm_version* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.wddm_version*, %struct.wddm_version** %7, align 8
  %78 = getelementptr inbounds %struct.wddm_version, %struct.wddm_version* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %82, i32* %4, align 4
  br label %153

83:                                               ; preds = %72
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.wddm_version*, %struct.wddm_version** %7, align 8
  %89 = getelementptr inbounds %struct.wddm_version, %struct.wddm_version* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %93, i32* %4, align 4
  br label %153

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %67
  %96 = load %struct.wddm_version*, %struct.wddm_version** %7, align 8
  %97 = getelementptr inbounds %struct.wddm_version, %struct.wddm_version* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %95
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.wddm_version*, %struct.wddm_version** %7, align 8
  %106 = getelementptr inbounds %struct.wddm_version, %struct.wddm_version* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %104, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %110, i32* %4, align 4
  br label %153

111:                                              ; preds = %100
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.wddm_version*, %struct.wddm_version** %7, align 8
  %117 = getelementptr inbounds %struct.wddm_version, %struct.wddm_version* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %121, i32* %4, align 4
  br label %153

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122, %95
  %124 = load %struct.wddm_version*, %struct.wddm_version** %7, align 8
  %125 = getelementptr inbounds %struct.wddm_version, %struct.wddm_version* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %123
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.wddm_version*, %struct.wddm_version** %7, align 8
  %134 = getelementptr inbounds %struct.wddm_version, %struct.wddm_version* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %132, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %138, i32* %4, align 4
  br label %153

139:                                              ; preds = %128
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.wddm_version*, %struct.wddm_version** %7, align 8
  %145 = getelementptr inbounds %struct.wddm_version, %struct.wddm_version* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %143, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %149, i32* %4, align 4
  br label %153

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150, %123
  %152 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %148, %137, %120, %109, %92, %81, %64, %53, %37, %27, %17
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32* @D3D11DeviceAdapter(i32) #1

declare dso_local i32 @IDXGIAdapter_GetDesc(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @IDXGIAdapter_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
