; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_mock.c_AppendMockTrack.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_mock.c_AppendMockTrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.demux_sys* }
%struct.demux_sys = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mock_track = type { i32, %struct.TYPE_6__ }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32)* @AppendMockTrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AppendMockTrack(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.demux_sys*, align 8
  %11 = alloca %struct.mock_track*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.demux_sys*, %struct.demux_sys** %14, align 8
  store %struct.demux_sys* %15, %struct.demux_sys** %10, align 8
  %16 = call %struct.mock_track* @malloc(i32 12)
  store %struct.mock_track* %16, %struct.mock_track** %11, align 8
  %17 = load %struct.mock_track*, %struct.mock_track** %11, align 8
  %18 = icmp ne %struct.mock_track* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %5, align 4
  br label %60

21:                                               ; preds = %4
  %22 = load %struct.mock_track*, %struct.mock_track** %11, align 8
  %23 = getelementptr inbounds %struct.mock_track, %struct.mock_track* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = bitcast %struct.TYPE_6__* %23 to i8*
  %26 = bitcast %struct.TYPE_6__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mock_track*, %struct.mock_track** %11, align 8
  %29 = getelementptr inbounds %struct.mock_track, %struct.mock_track* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.mock_track*, %struct.mock_track** %11, align 8
  %33 = getelementptr inbounds %struct.mock_track, %struct.mock_track* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mock_track*, %struct.mock_track** %11, align 8
  %39 = getelementptr inbounds %struct.mock_track, %struct.mock_track* %38, i32 0, i32 1
  %40 = call i32 @es_out_Add(i32 %37, %struct.TYPE_6__* %39)
  %41 = load %struct.mock_track*, %struct.mock_track** %11, align 8
  %42 = getelementptr inbounds %struct.mock_track, %struct.mock_track* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mock_track*, %struct.mock_track** %11, align 8
  %44 = getelementptr inbounds %struct.mock_track, %struct.mock_track* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %21
  %48 = load %struct.mock_track*, %struct.mock_track** %11, align 8
  %49 = call i32 @free(%struct.mock_track* %48)
  %50 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %50, i32* %5, align 4
  br label %60

51:                                               ; preds = %21
  %52 = load %struct.demux_sys*, %struct.demux_sys** %10, align 8
  %53 = getelementptr inbounds %struct.demux_sys, %struct.demux_sys* %52, i32 0, i32 0
  %54 = load %struct.mock_track*, %struct.mock_track** %11, align 8
  %55 = call i32 @vlc_vector_push(i32* %53, %struct.mock_track* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %51, %47, %19
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.mock_track* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @es_out_Add(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @free(%struct.mock_track*) #1

declare dso_local i32 @vlc_vector_push(i32*, %struct.mock_track*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
