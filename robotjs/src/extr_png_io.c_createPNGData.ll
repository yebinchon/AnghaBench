; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_png_io.c_createPNGData.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_png_io.c_createPNGData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.io_data = type { i64, i32*, i32, i32, i32* }

@png_append_data = common dso_local global i32 0, align 4
@PNG_TRANSFORM_IDENTITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @createPNGData(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.io_data, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  %8 = bitcast %struct.io_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64*, i64** %5, align 8
  %14 = icmp ne i64* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.TYPE_4__* @createPNGWriteInfo(i32* %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %6, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %41

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @png_set_write_fn(i32 %24, %struct.io_data* %7, i32* @png_append_data, i32* null)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PNG_TRANSFORM_IDENTITY, align 4
  %33 = call i32 @png_write_png(i32 %28, i32 %31, i32 %32, i32* null)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = call i32 @destroyPNGWriteInfo(%struct.TYPE_4__* %34)
  %36 = getelementptr inbounds %struct.io_data, %struct.io_data* %7, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %5, align 8
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.io_data, %struct.io_data* %7, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %3, align 8
  br label %41

41:                                               ; preds = %21, %20
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.TYPE_4__* @createPNGWriteInfo(i32*) #2

declare dso_local i32 @png_set_write_fn(i32, %struct.io_data*, i32*, i32*) #2

declare dso_local i32 @png_write_png(i32, i32, i32, i32*) #2

declare dso_local i32 @destroyPNGWriteInfo(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
