; ModuleID = '/home/carl/AnghaBench/vlc/src/android/extr_specific.c_JNI_OnUnload.c'
source_filename = "/home/carl/AnghaBench/vlc/src/android/extr_specific.c_JNI_OnUnload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_12__**, i8**, i32)* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__**, i64)* }

@GENERIC_DIR_COUNT = common dso_local global i64 0, align 8
@ppsz_generic_names = common dso_local global i32* null, align 8
@JNI_VERSION_1_2 = common dso_local global i32 0, align 4
@JNI_OK = common dso_local global i64 0, align 8
@fields = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @JNI_OnUnload(%struct.TYPE_12__** %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__**, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %18, %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @GENERIC_DIR_COUNT, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32*, i32** @ppsz_generic_names, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @free(i32 %16)
  br label %18

18:                                               ; preds = %12
  %19 = load i64, i64* %5, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %5, align 8
  br label %8

21:                                               ; preds = %8
  store %struct.TYPE_13__** null, %struct.TYPE_13__*** %6, align 8
  %22 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64 (%struct.TYPE_12__**, i8**, i32)*, i64 (%struct.TYPE_12__**, i8**, i32)** %24, align 8
  %26 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %3, align 8
  %27 = bitcast %struct.TYPE_13__*** %6 to i8**
  %28 = load i32, i32* @JNI_VERSION_1_2, align 4
  %29 = call i64 %25(%struct.TYPE_12__** %26, i8** %27, i32 %28)
  %30 = load i64, i64* @JNI_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %55

33:                                               ; preds = %21
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fields, i32 0, i32 1, i32 0), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_13__**, i64)*, i32 (%struct.TYPE_13__**, i64)** %39, align 8
  %41 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fields, i32 0, i32 1, i32 0), align 8
  %43 = call i32 %40(%struct.TYPE_13__** %41, i64 %42)
  br label %44

44:                                               ; preds = %36, %33
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fields, i32 0, i32 0, i32 0), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_13__**, i64)*, i32 (%struct.TYPE_13__**, i64)** %50, align 8
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fields, i32 0, i32 0, i32 0), align 8
  %54 = call i32 %51(%struct.TYPE_13__** %52, i64 %53)
  br label %55

55:                                               ; preds = %32, %47, %44
  ret void
}

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
