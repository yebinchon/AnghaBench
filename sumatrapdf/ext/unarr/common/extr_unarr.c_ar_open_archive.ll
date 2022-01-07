; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_unarr.c_ar_open_archive.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_unarr.c_ar_open_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i32*, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ar_open_archive(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call %struct.TYPE_5__* @malloc(i64 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %18, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  br label %53

24:                                               ; preds = %8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @memset(%struct.TYPE_5__* %25, i32 0, i64 %26)
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %9, align 8
  br label %53

53:                                               ; preds = %24, %23
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  ret %struct.TYPE_5__* %54
}

declare dso_local %struct.TYPE_5__* @malloc(i64) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
