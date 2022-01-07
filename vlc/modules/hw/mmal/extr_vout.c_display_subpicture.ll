; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_vout.c_display_subpicture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_vout.c_display_subpicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.dmx_region_t* }
%struct.dmx_region_t = type { i64, i64, %struct.dmx_region_t*, i32*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_18__*, i64, %struct.TYPE_16__, i32* }
%struct.TYPE_16__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_17__*)* @display_subpicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_subpicture(%struct.TYPE_14__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.dmx_region_t**, align 8
  %7 = alloca %struct.dmx_region_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.dmx_region_t*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %5, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store %struct.dmx_region_t** %17, %struct.dmx_region_t*** %6, align 8
  store i64 0, i64* %8, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = icmp ne %struct.TYPE_17__* %18, null
  br i1 %19, label %20, label %146

20:                                               ; preds = %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %12, align 8
  br label %24

24:                                               ; preds = %138, %20
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %26 = icmp ne %struct.TYPE_18__* %25, null
  br i1 %26, label %27, label %145

27:                                               ; preds = %24
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %9, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 4
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %10, align 8
  %33 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %34 = load %struct.dmx_region_t*, %struct.dmx_region_t** %33, align 8
  %35 = icmp ne %struct.dmx_region_t* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %27
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i64 @vc_dispmanx_update_start(i32 10)
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %45 = call %struct.dmx_region_t* @dmx_region_new(%struct.TYPE_14__* %42, i64 %43, %struct.TYPE_18__* %44)
  %46 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  store %struct.dmx_region_t* %45, %struct.dmx_region_t** %46, align 8
  br label %138

47:                                               ; preds = %27
  %48 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %49 = load %struct.dmx_region_t*, %struct.dmx_region_t** %48, align 8
  %50 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %95, label %57

57:                                               ; preds = %47
  %58 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %59 = load %struct.dmx_region_t*, %struct.dmx_region_t** %58, align 8
  %60 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %95, label %67

67:                                               ; preds = %57
  %68 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %69 = load %struct.dmx_region_t*, %struct.dmx_region_t** %68, align 8
  %70 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %95, label %76

76:                                               ; preds = %67
  %77 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %78 = load %struct.dmx_region_t*, %struct.dmx_region_t** %77, align 8
  %79 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %95, label %85

85:                                               ; preds = %76
  %86 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %87 = load %struct.dmx_region_t*, %struct.dmx_region_t** %86, align 8
  %88 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %85, %76, %67, %57, %47
  %96 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %97 = load %struct.dmx_region_t*, %struct.dmx_region_t** %96, align 8
  %98 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %97, i32 0, i32 2
  %99 = load %struct.dmx_region_t*, %struct.dmx_region_t** %98, align 8
  store %struct.dmx_region_t* %99, %struct.dmx_region_t** %11, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %95
  %103 = call i64 @vc_dispmanx_update_start(i32 10)
  store i64 %103, i64* %8, align 8
  br label %104

104:                                              ; preds = %102, %95
  %105 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %106 = load %struct.dmx_region_t*, %struct.dmx_region_t** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @dmx_region_delete(%struct.dmx_region_t* %106, i64 %107)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %112 = call %struct.dmx_region_t* @dmx_region_new(%struct.TYPE_14__* %109, i64 %110, %struct.TYPE_18__* %111)
  %113 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  store %struct.dmx_region_t* %112, %struct.dmx_region_t** %113, align 8
  %114 = load %struct.dmx_region_t*, %struct.dmx_region_t** %11, align 8
  %115 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %116 = load %struct.dmx_region_t*, %struct.dmx_region_t** %115, align 8
  %117 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %116, i32 0, i32 2
  store %struct.dmx_region_t* %114, %struct.dmx_region_t** %117, align 8
  br label %137

118:                                              ; preds = %85
  %119 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %120 = load %struct.dmx_region_t*, %struct.dmx_region_t** %119, align 8
  %121 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = icmp ne i32* %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %118
  %126 = load i64, i64* %8, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = call i64 @vc_dispmanx_update_start(i32 10)
  store i64 %129, i64* %8, align 8
  br label %130

130:                                              ; preds = %128, %125
  %131 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %132 = load %struct.dmx_region_t*, %struct.dmx_region_t** %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @dmx_region_update(%struct.dmx_region_t* %132, i64 %133, i32* %134)
  br label %136

136:                                              ; preds = %130, %118
  br label %137

137:                                              ; preds = %136, %104
  br label %138

138:                                              ; preds = %137, %41
  %139 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %140 = load %struct.dmx_region_t*, %struct.dmx_region_t** %139, align 8
  %141 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %140, i32 0, i32 2
  store %struct.dmx_region_t** %141, %struct.dmx_region_t*** %6, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  store %struct.TYPE_18__* %144, %struct.TYPE_18__** %12, align 8
  br label %24

145:                                              ; preds = %24
  br label %146

146:                                              ; preds = %145, %2
  %147 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  %148 = load %struct.dmx_region_t*, %struct.dmx_region_t** %147, align 8
  store %struct.dmx_region_t* %148, %struct.dmx_region_t** %7, align 8
  br label %149

149:                                              ; preds = %160, %146
  %150 = load %struct.dmx_region_t*, %struct.dmx_region_t** %7, align 8
  %151 = icmp ne %struct.dmx_region_t* %150, null
  br i1 %151, label %152, label %165

152:                                              ; preds = %149
  %153 = load %struct.dmx_region_t*, %struct.dmx_region_t** %7, align 8
  %154 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %153, i32 0, i32 2
  %155 = load %struct.dmx_region_t*, %struct.dmx_region_t** %154, align 8
  store %struct.dmx_region_t* %155, %struct.dmx_region_t** %11, align 8
  %156 = load i64, i64* %8, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %152
  %159 = call i64 @vc_dispmanx_update_start(i32 10)
  store i64 %159, i64* %8, align 8
  br label %160

160:                                              ; preds = %158, %152
  %161 = load %struct.dmx_region_t*, %struct.dmx_region_t** %7, align 8
  %162 = load i64, i64* %8, align 8
  %163 = call i32 @dmx_region_delete(%struct.dmx_region_t* %161, i64 %162)
  %164 = load %struct.dmx_region_t*, %struct.dmx_region_t** %11, align 8
  store %struct.dmx_region_t* %164, %struct.dmx_region_t** %7, align 8
  br label %149

165:                                              ; preds = %149
  %166 = load %struct.dmx_region_t**, %struct.dmx_region_t*** %6, align 8
  store %struct.dmx_region_t* null, %struct.dmx_region_t** %166, align 8
  %167 = load i64, i64* %8, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i64, i64* %8, align 8
  %171 = call i32 @vc_dispmanx_update_submit_sync(i64 %170)
  br label %172

172:                                              ; preds = %169, %165
  ret void
}

declare dso_local i64 @vc_dispmanx_update_start(i32) #1

declare dso_local %struct.dmx_region_t* @dmx_region_new(%struct.TYPE_14__*, i64, %struct.TYPE_18__*) #1

declare dso_local i32 @dmx_region_delete(%struct.dmx_region_t*, i64) #1

declare dso_local i32 @dmx_region_update(%struct.dmx_region_t*, i64, i32*) #1

declare dso_local i32 @vc_dispmanx_update_submit_sync(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
