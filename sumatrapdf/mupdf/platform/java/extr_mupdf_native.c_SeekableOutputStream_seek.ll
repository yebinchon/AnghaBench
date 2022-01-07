; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_SeekableOutputStream_seek.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_SeekableOutputStream_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_8__**)*, i32 (%struct.TYPE_8__**, i32, i32, i32, i32)* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cannot attach to JVM in SeekableOutputStream_seek\00", align 1
@mid_SeekableStream_seek = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32)* @SeekableOutputStream_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SeekableOutputStream_seek(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_8__** @jni_attach_thread(i32* %14, i32* %11)
  store %struct.TYPE_8__** %15, %struct.TYPE_8__*** %10, align 8
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %17 = icmp eq %struct.TYPE_8__** %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %21 = call i32 @fz_throw(i32* %19, i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %4
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_8__**, i32, i32, i32, i32)*, i32 (%struct.TYPE_8__**, i32, i32, i32, i32)** %25, align 8
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @mid_SeekableStream_seek, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 %26(%struct.TYPE_8__** %27, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64 (%struct.TYPE_8__**)*, i64 (%struct.TYPE_8__**)** %37, align 8
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %40 = call i64 %38(%struct.TYPE_8__** %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %22
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @jni_detach_thread(i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %47 = call i32 @fz_throw_java(i32* %45, %struct.TYPE_8__** %46)
  br label %48

48:                                               ; preds = %42, %22
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @jni_detach_thread(i32 %49)
  ret void
}

declare dso_local %struct.TYPE_8__** @jni_attach_thread(i32*, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @jni_detach_thread(i32) #1

declare dso_local i32 @fz_throw_java(i32*, %struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
