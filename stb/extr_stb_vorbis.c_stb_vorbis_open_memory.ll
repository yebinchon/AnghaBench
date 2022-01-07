; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_stb_vorbis_open_memory.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_stb_vorbis_open_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32*, i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@VORBIS__no_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @stb_vorbis_open_memory(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %63

15:                                               ; preds = %4
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @vorbis_init(%struct.TYPE_9__* %11, i32* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i32* %19, i32** %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  store i32* %25, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  store i32* %28, i32** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* @FALSE, align 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = call i64 @start_decoder(%struct.TYPE_9__* %11)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %15
  %37 = call %struct.TYPE_9__* @vorbis_alloc(%struct.TYPE_9__* %11)
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %10, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = bitcast %struct.TYPE_9__* %41 to i8*
  %43 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 40, i1 false)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = call i32 @vorbis_pump_first_frame(%struct.TYPE_9__* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @VORBIS__no_error, align 4
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %40
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %5, align 8
  br label %63

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %15
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = call i32 @vorbis_deinit(%struct.TYPE_9__* %11)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  br label %63

63:                                               ; preds = %61, %51, %14
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %64
}

declare dso_local i32 @vorbis_init(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @start_decoder(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @vorbis_alloc(%struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vorbis_pump_first_frame(%struct.TYPE_9__*) #1

declare dso_local i32 @vorbis_deinit(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
