; ModuleID = '/home/carl/AnghaBench/streem/src/extr_core.c_strm_stream_new.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_core.c_strm_stream_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32*, i64, i64, i64, i32*, i32*, i8*, i8*, i8*, i32, i32 }

@STRM_PTR_STREAM = common dso_local global i32 0, align 4
@stream_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @strm_stream_new(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call %struct.TYPE_4__* @malloc(i32 104)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %9, align 8
  %11 = load i32, i32* @STRM_PTR_STREAM, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 13
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 12
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 11
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 10
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 8
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 7
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = call i32 (...) @strm_queue_new()
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @stream_count, align 4
  %46 = call i32 @strm_atomic_inc(i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  ret %struct.TYPE_4__* %47
}

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @strm_queue_new(...) #1

declare dso_local i32 @strm_atomic_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
