; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_SeekableInputStream_seek.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_SeekableInputStream_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_11__**)*, i32 (%struct.TYPE_11__**, i32, i32, i32, i32)* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot attach to JVM in SeekableInputStream_seek\00", align 1
@mid_SeekableStream_seek = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32, i32)* @SeekableInputStream_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SeekableInputStream_seek(i32* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.TYPE_11__** @jni_attach_thread(i32* %16, i32* %11)
  store %struct.TYPE_11__** %17, %struct.TYPE_11__*** %10, align 8
  %18 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %19 = icmp eq %struct.TYPE_11__** %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %23 = call i32 @fz_throw(i32* %21, i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32 (%struct.TYPE_11__**, i32, i32, i32, i32)*, i32 (%struct.TYPE_11__**, i32, i32, i32, i32)** %27, align 8
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @mid_SeekableStream_seek, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 %28(%struct.TYPE_11__** %29, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64 (%struct.TYPE_11__**)*, i64 (%struct.TYPE_11__**)** %39, align 8
  %41 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %42 = call i64 %40(%struct.TYPE_11__** %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %24
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @jni_detach_thread(i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  %49 = call i32 @fz_throw_java(i32* %47, %struct.TYPE_11__** %48)
  br label %50

50:                                               ; preds = %44, %24
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i8* %57, i8** %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @jni_detach_thread(i32 %62)
  ret void
}

declare dso_local %struct.TYPE_11__** @jni_attach_thread(i32*, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @jni_detach_thread(i32) #1

declare dso_local i32 @fz_throw_java(i32*, %struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
