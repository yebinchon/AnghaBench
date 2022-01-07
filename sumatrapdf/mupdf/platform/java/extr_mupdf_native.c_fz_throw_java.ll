; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_fz_throw_java.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_fz_throw_java.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* (%struct.TYPE_10__**, i64, i32*)*, i32 (%struct.TYPE_10__**, i64, i8*)*, i32 (%struct.TYPE_10__**)*, i64 (%struct.TYPE_10__**)*, i64 (%struct.TYPE_10__**, i64, i32)*, i64 (%struct.TYPE_10__**)* }

@mid_Object_toString = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"unknown java error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__**)* @fz_throw_java to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_throw_java(i32* %0, %struct.TYPE_10__** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %4, align 8
  %9 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  %12 = load i64 (%struct.TYPE_10__**)*, i64 (%struct.TYPE_10__**)** %11, align 8
  %13 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %14 = call i64 %12(%struct.TYPE_10__** %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %78

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32 (%struct.TYPE_10__**)*, i32 (%struct.TYPE_10__**)** %20, align 8
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %23 = call i32 %21(%struct.TYPE_10__** %22)
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 4
  %27 = load i64 (%struct.TYPE_10__**, i64, i32)*, i64 (%struct.TYPE_10__**, i64, i32)** %26, align 8
  %28 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @mid_Object_toString, align 4
  %31 = call i64 %27(%struct.TYPE_10__** %28, i64 %29, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load i64 (%struct.TYPE_10__**)*, i64 (%struct.TYPE_10__**)** %34, align 8
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %37 = call i64 %35(%struct.TYPE_10__** %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %17
  %40 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32 (%struct.TYPE_10__**)*, i32 (%struct.TYPE_10__**)** %42, align 8
  %44 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %45 = call i32 %43(%struct.TYPE_10__** %44)
  br label %77

46:                                               ; preds = %17
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %46
  %50 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i8* (%struct.TYPE_10__**, i64, i32*)*, i8* (%struct.TYPE_10__**, i64, i32*)** %52, align 8
  %54 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i8* %53(%struct.TYPE_10__** %54, i64 %55, i32* null)
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %49
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @fz_strlcpy(i8* %60, i8* %61, i32 256)
  %63 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32 (%struct.TYPE_10__**, i64, i8*)*, i32 (%struct.TYPE_10__**, i64, i8*)** %65, align 8
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 %66(%struct.TYPE_10__** %67, i64 %68, i8* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %74 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %71, i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %59, %49
  br label %76

76:                                               ; preds = %75, %46
  br label %77

77:                                               ; preds = %76, %39
  br label %78

78:                                               ; preds = %77, %2
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %81 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %79, i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
