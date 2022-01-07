; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_resource.c_input_resource_GetVoutDecoderDevice.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_resource.c_input_resource_GetVoutDecoderDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32*, i32**, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32*, i32* }

@VLC_VOUT_ORDER_PRIMARY = common dso_local global i32 0, align 4
@VLC_VOUT_ORDER_SECONDARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"trying to reuse free vout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @input_resource_GetVoutDecoderDevice(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32** %3, i32*** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = call i32 @vlc_mutex_lock(i32* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %99

30:                                               ; preds = %4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = bitcast %struct.TYPE_6__* %9 to i8*
  %33 = bitcast %struct.TYPE_6__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32* %36, i32** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %91

43:                                               ; preds = %30
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32* @VLC_OBJECT(i32 %51)
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i32* [ %52, %48 ], [ %56, %53 ]
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32* @vout_Create(i32* %59)
  store i32* %60, i32** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32* %60, i32** %61, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %170

65:                                               ; preds = %57
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = call i32 @vlc_mutex_lock(i32* %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @VLC_VOUT_ORDER_PRIMARY, align 4
  br label %77

75:                                               ; preds = %65
  %76 = load i32, i32* @VLC_VOUT_ORDER_SECONDARY, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @TAB_APPEND(i64 %82, i32** %85, i32* %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  %90 = call i32 @vlc_mutex_unlock(i32* %89)
  br label %98

91:                                               ; preds = %30
  %92 = load i32, i32* @VLC_VOUT_ORDER_PRIMARY, align 4
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @msg_Dbg(i32* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %91, %77
  br label %128

99:                                               ; preds = %4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = call i32 @vlc_mutex_lock(i32* %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %113, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %99
  %119 = load i32, i32* @VLC_VOUT_ORDER_PRIMARY, align 4
  br label %122

120:                                              ; preds = %99
  %121 = load i32, i32* @VLC_VOUT_ORDER_SECONDARY, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = call i32 @vlc_mutex_unlock(i32* %126)
  br label %128

128:                                              ; preds = %122, %98
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load i32**, i32*** %133, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @TAB_FIND(i64 %131, i32** %134, i32* %137, i32 %138)
  %140 = load i32, i32* %12, align 4
  %141 = icmp sge i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %128
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %151, %154
  br label %156

156:                                              ; preds = %148, %128
  %157 = phi i1 [ true, %128 ], [ %155, %148 ]
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load i32**, i32*** %8, align 8
  %161 = icmp ne i32** %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %164 = call i32* @vout_GetDevice(%struct.TYPE_6__* %163)
  %165 = load i32**, i32*** %8, align 8
  store i32* %164, i32** %165, align 8
  br label %166

166:                                              ; preds = %162, %156
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  store i32* %169, i32** %10, align 8
  br label %170

170:                                              ; preds = %166, %64
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = call i32 @vlc_mutex_unlock(i32* %172)
  %174 = load i32*, i32** %10, align 8
  ret i32* %174
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @VLC_OBJECT(i32) #1

declare dso_local i32* @vout_Create(i32*) #1

declare dso_local i32 @TAB_APPEND(i64, i32**, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @TAB_FIND(i64, i32**, i32*, i32) #1

declare dso_local i32* @vout_GetDevice(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
