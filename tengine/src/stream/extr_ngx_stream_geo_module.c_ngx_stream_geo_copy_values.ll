; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo_copy_values.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo_copy_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_12__*)* @ngx_stream_geo_copy_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_stream_geo_copy_values(i32* %0, i32* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %14 = icmp eq %struct.TYPE_12__* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  store i32* %16, i32** %5, align 8
  br label %76

17:                                               ; preds = %4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = bitcast %struct.TYPE_12__* %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %11, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = bitcast i32* %29 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %10, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = bitcast %struct.TYPE_10__* %31 to i8*
  %36 = bitcast %struct.TYPE_10__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 8
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = ptrtoint i32* %39 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = inttoptr i64 %44 to i32*
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32* @ngx_cpymem(i32* %48, i32 %53, i32 %58)
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32* @ngx_align_ptr(i32* %60, i32 8)
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = call i32* @ngx_stream_geo_copy_values(i32* %62, i32* %63, %struct.TYPE_12__* %66, %struct.TYPE_12__* %67)
  store i32* %68, i32** %7, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = call i32* @ngx_stream_geo_copy_values(i32* %69, i32* %70, %struct.TYPE_12__* %73, %struct.TYPE_12__* %74)
  store i32* %75, i32** %5, align 8
  br label %76

76:                                               ; preds = %17, %15
  %77 = load i32*, i32** %5, align 8
  ret i32* %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @ngx_cpymem(i32*, i32, i32) #2

declare dso_local i32* @ngx_align_ptr(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
