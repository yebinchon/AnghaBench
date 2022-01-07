; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_zone_module.c_ngx_stream_upstream_zone_copy_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_zone_module.c_ngx_stream_upstream_zone_copy_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__* }

@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_14__*, %struct.TYPE_15__*)* @ngx_stream_upstream_zone_copy_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @ngx_stream_upstream_zone_copy_peer(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i8* @ngx_slab_calloc_locked(i32* %11, i32 48)
  %13 = bitcast i8* %12 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = icmp eq %struct.TYPE_15__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %156

17:                                               ; preds = %2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = call i32 @ngx_memcpy(%struct.TYPE_15__* %21, %struct.TYPE_15__* %22, i32 48)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %31, align 8
  br label %32

32:                                               ; preds = %20, %17
  %33 = load i32*, i32** %6, align 8
  %34 = call i8* @ngx_slab_calloc_locked(i32* %33, i32 4)
  %35 = bitcast i8* %34 to %struct.TYPE_15__*
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %37, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = icmp eq %struct.TYPE_15__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %115

43:                                               ; preds = %32
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %46 = call i8* @ngx_slab_calloc_locked(i32* %44, i32 %45)
  %47 = bitcast i8* %46 to %struct.TYPE_15__*
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = icmp eq %struct.TYPE_15__* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %115

57:                                               ; preds = %43
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = icmp ne %struct.TYPE_15__* %58, null
  br i1 %59, label %60, label %113

60:                                               ; preds = %57
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ngx_memcpy(%struct.TYPE_15__* %63, %struct.TYPE_15__* %66, i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ngx_memcpy(%struct.TYPE_15__* %74, %struct.TYPE_15__* %78, i32 %82)
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.TYPE_15__* @ngx_slab_alloc_locked(i32* %84, i32 %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %92, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = icmp eq %struct.TYPE_15__* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %60
  br label %115

99:                                               ; preds = %60
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ngx_memcpy(%struct.TYPE_15__* %103, %struct.TYPE_15__* %107, i32 %111)
  br label %113

113:                                              ; preds = %99, %57
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %3, align 8
  br label %156

115:                                              ; preds = %98, %56, %42
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = icmp ne %struct.TYPE_15__* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load i32*, i32** %6, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = call i32 @ngx_slab_free_locked(i32* %122, %struct.TYPE_15__* %126)
  br label %128

128:                                              ; preds = %121, %115
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = icmp ne %struct.TYPE_15__* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load i32*, i32** %6, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = call i32 @ngx_slab_free_locked(i32* %135, %struct.TYPE_15__* %139)
  br label %141

141:                                              ; preds = %134, %128
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = icmp ne %struct.TYPE_15__* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = call i32 @ngx_slab_free_locked(i32* %147, %struct.TYPE_15__* %150)
  br label %152

152:                                              ; preds = %146, %141
  %153 = load i32*, i32** %6, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %155 = call i32 @ngx_slab_free_locked(i32* %153, %struct.TYPE_15__* %154)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %156

156:                                              ; preds = %152, %113, %16
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %157
}

declare dso_local i8* @ngx_slab_calloc_locked(i32*, i32) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_15__* @ngx_slab_alloc_locked(i32*, i32) #1

declare dso_local i32 @ngx_slab_free_locked(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
