; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_render.c_CreateBuffers.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_render.c_CreateBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__*, %struct.TYPE_17__ }
%struct.TYPE_24__ = type { i32, i32, i32*, %struct.TYPE_21__, %struct.TYPE_25__, %struct.TYPE_20__, %struct.TYPE_19__, i32, i32* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_26__*)* @CreateBuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateBuffers(%struct.TYPE_23__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %5, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %6, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @xcb_create_pixmap(i32* %22, i32 32, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @xcb_create_pixmap(i32* %37, i32 32, i32 %41, i32 %44, i32 %48, i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @xcb_render_create_picture(i32* %54, i32 %58, i32 %62, i32 %66, i32 0, i32* null)
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @xcb_render_create_picture(i32* %68, i32 %72, i32 %76, i32 %80, i32 0, i32* null)
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 4
  store %struct.TYPE_25__* %83, %struct.TYPE_25__** %8, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %87 = call i32 @vout_display_PlacePicture(%struct.TYPE_25__* %84, %struct.TYPE_17__* %85, %struct.TYPE_26__* %86)
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %9, align 4
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %129 [
    i32 129, label %97
    i32 132, label %97
    i32 128, label %98
    i32 130, label %98
    i32 135, label %106
    i32 133, label %106
    i32 134, label %114
    i32 131, label %114
  ]

97:                                               ; preds = %2, %2
  br label %129

98:                                               ; preds = %2, %2
  %99 = load i32, i32* %9, align 4
  %100 = mul nsw i32 %99, -1
  store i32 %100, i32* %9, align 4
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %129

106:                                              ; preds = %2, %2
  %107 = load i32, i32* %10, align 4
  %108 = mul nsw i32 %107, -1
  store i32 %108, i32* %10, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %12, align 4
  br label %129

114:                                              ; preds = %2, %2
  %115 = load i32, i32* %9, align 4
  %116 = mul nsw i32 %115, -1
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = mul nsw i32 %117, -1
  store i32 %118, i32* %10, align 4
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %11, align 4
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %2, %114, %106, %98, %97
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = bitcast %struct.TYPE_22__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %136, i8 0, i64 52, i1 false)
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %140, %143
  store i32 %144, i32* %137, align 4
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @ORIENT_IS_SWAP(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %129
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %151, %154
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %157, %160
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 2
  store i32 %161, i32* %162, align 4
  br label %176

163:                                              ; preds = %129
  %164 = load i32, i32* %9, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %164, %167
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 3
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %170, %173
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 4
  store i32 %174, i32* %175, align 4
  br label %176

176:                                              ; preds = %163, %150
  %177 = load i32*, i32** %7, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @xcb_render_set_picture_transform(i32* %177, i32 %181, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8 %13)
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  %187 = zext i1 %186 to i32
  %188 = call i64 @likely(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %176
  %191 = load i32*, i32** %7, align 8
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @strlen(i32* %198)
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @xcb_render_set_picture_filter(i32* %191, i32 %195, i32 %199, i32* %202, i32 0, i32* null)
  br label %204

204:                                              ; preds = %190, %176
  ret void
}

declare dso_local i32 @xcb_create_pixmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xcb_render_create_picture(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vout_display_PlacePicture(%struct.TYPE_25__*, %struct.TYPE_17__*, %struct.TYPE_26__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @ORIENT_IS_SWAP(i32) #1

declare dso_local i32 @xcb_render_set_picture_transform(i32*, i32, %struct.TYPE_22__* byval(%struct.TYPE_22__) align 8) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @xcb_render_set_picture_filter(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
