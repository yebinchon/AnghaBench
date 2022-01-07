; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_logo.c_Mouse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_logo.c_Mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_21__, %struct.TYPE_27__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }

@MOUSE_BUTTON_LEFT = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*)* @Mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Mouse(%struct.TYPE_26__* %0, %struct.TYPE_22__* %1, %struct.TYPE_22__* %2, %struct.TYPE_22__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %9, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %10, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 3
  %24 = call i32 @vlc_mutex_lock(i32* %23)
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 4
  %27 = call %struct.TYPE_25__* @LogoListCurrent(i32* %26)
  store %struct.TYPE_25__* %27, %struct.TYPE_25__** %11, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  store %struct.TYPE_24__* %30, %struct.TYPE_24__** %12, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %32 = icmp ne %struct.TYPE_24__* %31, null
  br i1 %32, label %33, label %164

33:                                               ; preds = %4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %13, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %33
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = icmp slt i64 %52, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %49
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = icmp slt i64 %71, %77
  br label %79

79:                                               ; preds = %68, %60, %49, %33
  %80 = phi i1 [ false, %60 ], [ false, %49 ], [ false, %33 ], [ %78, %68 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %87 = load i32, i32* @MOUSE_BUTTON_LEFT, align 4
  %88 = call i64 @vlc_mouse_HasPressed(%struct.TYPE_22__* %85, %struct.TYPE_22__* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  br label %103

93:                                               ; preds = %84, %79
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %96 = load i32, i32* @MOUSE_BUTTON_LEFT, align 4
  %97 = call i64 @vlc_mouse_HasReleased(%struct.TYPE_22__* %94, %struct.TYPE_22__* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 2
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %93
  br label %103

103:                                              ; preds = %102, %90
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %150

108:                                              ; preds = %103
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %111 = call i32 @vlc_mouse_GetMotion(i32* %17, i32* %18, %struct.TYPE_22__* %109, %struct.TYPE_22__* %110)
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %14, align 4
  %126 = sub nsw i32 %124, %125
  %127 = call i8* @VLC_CLIP(i32 %118, i32 0, i32 %126)
  %128 = ptrtoint i8* %127 to i64
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %133, %135
  %137 = trunc i64 %136 to i32
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i32, i32* %15, align 4
  %145 = sub nsw i32 %143, %144
  %146 = call i8* @VLC_CLIP(i32 %137, i32 0, i32 %145)
  %147 = ptrtoint i8* %146 to i64
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %108, %103
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155, %150
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 3
  %161 = call i32 @vlc_mutex_unlock(i32* %160)
  %162 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %162, i32* %5, align 4
  br label %173

163:                                              ; preds = %155
  br label %164

164:                                              ; preds = %163, %4
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 3
  %167 = call i32 @vlc_mutex_unlock(i32* %166)
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %170 = bitcast %struct.TYPE_22__* %168 to i8*
  %171 = bitcast %struct.TYPE_22__* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %170, i8* align 8 %171, i64 16, i1 false)
  %172 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %164, %158
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_25__* @LogoListCurrent(i32*) #1

declare dso_local i64 @vlc_mouse_HasPressed(%struct.TYPE_22__*, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @vlc_mouse_HasReleased(%struct.TYPE_22__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @vlc_mouse_GetMotion(i32*, i32*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i8* @VLC_CLIP(i32, i32, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
