; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_jsP_newnode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_jsP_newnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i64, i32*, i32*, i64, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_11__*, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*)* @jsP_newnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @jsP_newnode(%struct.TYPE_11__* %0, i32 %1, i32 %2, %struct.TYPE_12__* %3, %struct.TYPE_12__* %4, %struct.TYPE_12__* %5, %struct.TYPE_12__* %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = call %struct.TYPE_12__* @js_malloc(%struct.TYPE_11__* %16, i32 88)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %15, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 11
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 10
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 9
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 6
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 5
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %47 = icmp ne %struct.TYPE_12__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %7
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %51, align 8
  br label %52

52:                                               ; preds = %48, %7
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %54 = icmp ne %struct.TYPE_12__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %58, align 8
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %65, align 8
  br label %66

66:                                               ; preds = %62, %59
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %68 = icmp ne %struct.TYPE_12__* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %72, align 8
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %81, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  ret %struct.TYPE_12__* %82
}

declare dso_local %struct.TYPE_12__* @js_malloc(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
