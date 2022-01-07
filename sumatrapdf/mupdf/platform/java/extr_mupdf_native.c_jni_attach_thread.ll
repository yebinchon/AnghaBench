; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_jni_attach_thread.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_jni_attach_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__**, i8*, i32)*, i32 (%struct.TYPE_4__**, i8*, i32*)* }

@jvm = common dso_local global %struct.TYPE_4__** null, align 8
@MY_JNI_VERSION = common dso_local global i32 0, align 4
@JNI_EDETACHED = common dso_local global i32 0, align 4
@JNI_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @jni_attach_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @jni_attach_thread(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @jvm, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_4__**, i8*, i32)*, i32 (%struct.TYPE_4__**, i8*, i32)** %11, align 8
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @jvm, align 8
  %14 = bitcast i32** %6 to i8*
  %15 = load i32, i32* @MY_JNI_VERSION, align 4
  %16 = call i32 %12(%struct.TYPE_4__** %13, i8* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @JNI_EDETACHED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  store i32 1, i32* %21, align 4
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @jvm, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32 (%struct.TYPE_4__**, i8*, i32*)*, i32 (%struct.TYPE_4__**, i8*, i32*)** %24, align 8
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @jvm, align 8
  %27 = bitcast i32** %6 to i8*
  %28 = call i32 %25(%struct.TYPE_4__** %26, i8* %27, i32* null)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %20, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @JNI_OK, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32* null, i32** %3, align 8
  br label %36

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
