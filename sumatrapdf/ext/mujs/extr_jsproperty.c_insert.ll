; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsproperty.c_insert.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsproperty.c_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }

@sentinel = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, i32*, %struct.TYPE_11__*, i8*, %struct.TYPE_11__**)* @insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @insert(i32* %0, i32* %1, %struct.TYPE_11__* %2, i8* %3, %struct.TYPE_11__** %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__**, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_11__** %4, %struct.TYPE_11__*** %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, @sentinel
  br i1 %14, label %15, label %58

15:                                               ; preds = %5
  %16 = load i8*, i8** %10, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strcmp(i8* %16, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %31 = call %struct.TYPE_11__* @insert(i32* %24, i32* %25, %struct.TYPE_11__* %28, i8* %29, %struct.TYPE_11__** %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %33, align 8
  br label %52

34:                                               ; preds = %15
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %45 = call %struct.TYPE_11__* @insert(i32* %38, i32* %39, %struct.TYPE_11__* %42, i8* %43, %struct.TYPE_11__** %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %47, align 8
  br label %51

48:                                               ; preds = %34
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %50, align 8
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %6, align 8
  br label %64

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %23
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = call %struct.TYPE_11__* @skew(%struct.TYPE_11__* %53)
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %9, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = call %struct.TYPE_11__* @split(%struct.TYPE_11__* %55)
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %9, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %6, align 8
  br label %64

58:                                               ; preds = %5
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call %struct.TYPE_11__* @newproperty(i32* %59, i32* %60, i8* %61)
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %63, align 8
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %6, align 8
  br label %64

64:                                               ; preds = %58, %52, %48
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  ret %struct.TYPE_11__* %65
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_11__* @skew(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @split(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @newproperty(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
