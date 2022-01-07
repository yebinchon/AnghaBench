; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_SeekableInputStream_next.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_SeekableInputStream_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__**, i32, i32, i32)*, i32 (%struct.TYPE_12__**, i32, i32, i32, i64)*, i64 (%struct.TYPE_12__**)* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot attach to JVM in SeekableInputStream_next\00", align 1
@mid_SeekableInputStream_read = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"no bytes read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i64)* @SeekableInputStream_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SeekableInputStream_next(i32* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_12__** @jni_attach_thread(i32* %15, i32* %9)
  store %struct.TYPE_12__** %16, %struct.TYPE_12__*** %8, align 8
  %17 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %18 = icmp eq %struct.TYPE_12__** %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %22 = call i32 @fz_throw(i32* %20, i32 %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_12__**, i32, i32, i32)*, i32 (%struct.TYPE_12__**, i32, i32, i32)** %26, align 8
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @mid_SeekableInputStream_read, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %27(%struct.TYPE_12__** %28, i32 %31, i32 %32, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i64 (%struct.TYPE_12__**)*, i64 (%struct.TYPE_12__**)** %39, align 8
  %41 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %42 = call i64 %40(%struct.TYPE_12__** %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %23
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @jni_detach_thread(i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %49 = call i32 @fz_throw_java(i32* %47, %struct.TYPE_12__** %48)
  br label %50

50:                                               ; preds = %44, %23
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %92

53:                                               ; preds = %50
  %54 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32 (%struct.TYPE_12__**, i32, i32, i32, i64)*, i32 (%struct.TYPE_12__**, i32, i32, i32, i64)** %56, align 8
  %58 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 %57(%struct.TYPE_12__** %58, i32 %61, i32 0, i32 %62, i64 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %87, align 8
  %90 = load i8, i8* %88, align 1
  %91 = zext i8 %90 to i32
  store i32 %91, i32* %11, align 4
  br label %104

92:                                               ; preds = %50
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @EOF, align 4
  store i32 %96, i32* %11, align 4
  br label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @jni_detach_thread(i32 %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %102 = call i32 @fz_throw(i32* %100, i32 %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %97, %95
  br label %104

104:                                              ; preds = %103, %53
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @jni_detach_thread(i32 %105)
  %107 = load i32, i32* %11, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_12__** @jni_attach_thread(i32*, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @jni_detach_thread(i32) #1

declare dso_local i32 @fz_throw_java(i32*, %struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
