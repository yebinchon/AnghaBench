; ModuleID = '/home/carl/AnghaBench/vlc/src/modules/extr_modules.c_module_config_get.c'
source_filename = "/home/carl/AnghaBench/vlc/src/modules/extr_modules.c_module_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_13__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @module_config_get(%struct.TYPE_12__* %0, i32* noalias %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = icmp ne %struct.TYPE_12__* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  store i32 0, i32* %21, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %77

22:                                               ; preds = %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call %struct.TYPE_13__* @vlc_alloc(i64 %27, i32 16)
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %10, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** %5, align 8
  store i32 0, i32* %33, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %22
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %77

37:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %70, %37
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %38
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %49
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %11, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %43
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %43
  br label %70

61:                                               ; preds = %55
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i64 %64
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %67 = call i32 @memcpy(%struct.TYPE_13__* %65, %struct.TYPE_13__* %66, i32 16)
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %61, %60
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %38

73:                                               ; preds = %38
  %74 = load i32, i32* %8, align 4
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %3, align 8
  br label %77

77:                                               ; preds = %73, %36, %20
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %78
}

declare dso_local %struct.TYPE_13__* @vlc_alloc(i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
