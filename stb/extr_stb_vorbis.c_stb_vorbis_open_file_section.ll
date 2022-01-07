; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_stb_vorbis_open_file_section.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_stb_vorbis_open_file_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @stb_vorbis_open_file_section(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %10, align 8
  %15 = call i32 @vorbis_init(%struct.TYPE_9__* %13, i32* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  store i32* %16, i32** %17, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @ftell(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  store i64 %19, i64* %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = call i64 @start_decoder(%struct.TYPE_9__* %13)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %5
  %28 = call %struct.TYPE_9__* @vorbis_alloc(%struct.TYPE_9__* %13)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %12, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %33 = bitcast %struct.TYPE_9__* %32 to i8*
  %34 = bitcast %struct.TYPE_9__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 32, i1 false)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %36 = call i32 @vorbis_pump_first_frame(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %6, align 8
  br label %48

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %5
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = call i32 @vorbis_deinit(%struct.TYPE_9__* %13)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %48

48:                                               ; preds = %46, %31
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %49
}

declare dso_local i32 @vorbis_init(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @ftell(i32*) #1

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
