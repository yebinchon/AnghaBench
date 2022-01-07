; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_try_coalesce.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_try_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32**, i32*, %struct.TYPE_5__*, i32*, i32*, i32)* @extent_try_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_try_coalesce(i32* %0, i32* %1, i32** %2, i32* %3, %struct.TYPE_5__* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32** %2, i32*** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  br label %23

23:                                               ; preds = %103, %8
  store i32 0, i32* %18, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = call i32 @extent_past_get(i32* %26)
  %28 = call i32* @extent_lock_from_addr(i32* %24, i32* %25, i32 %27)
  store i32* %28, i32** %19, align 8
  %29 = load i32*, i32** %19, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %62

31:                                               ; preds = %23
  %32 = load i32*, i32** %11, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = call i32 @extent_can_coalesce(i32* %32, %struct.TYPE_5__* %33, i32* %34, i32* %35)
  store i32 %36, i32* %20, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %19, align 8
  %39 = call i32 @extent_unlock(i32* %37, i32* %38)
  %40 = load i32, i32* %20, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %31
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32**, i32*** %12, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @extent_coalesce(i32* %43, i32* %44, i32** %45, %struct.TYPE_5__* %46, i32* %47, i32* %48, i32 1, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %42
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32*, i32** %16, align 8
  store i32 1, i32* %58, align 4
  %59 = load i32*, i32** %15, align 8
  store i32* %59, i32** %9, align 8
  br label %115

60:                                               ; preds = %52
  store i32 1, i32* %18, align 4
  br label %61

61:                                               ; preds = %60, %42, %31
  br label %62

62:                                               ; preds = %61, %23
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @extent_before_get(i32* %65)
  %67 = call i32* @extent_lock_from_addr(i32* %63, i32* %64, i32 %66)
  store i32* %67, i32** %21, align 8
  %68 = load i32*, i32** %21, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %102

70:                                               ; preds = %62
  %71 = load i32*, i32** %11, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = load i32*, i32** %21, align 8
  %75 = call i32 @extent_can_coalesce(i32* %71, %struct.TYPE_5__* %72, i32* %73, i32* %74)
  store i32 %75, i32* %22, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** %21, align 8
  %78 = call i32 @extent_unlock(i32* %76, i32* %77)
  %79 = load i32, i32* %22, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %70
  %82 = load i32*, i32** %10, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load i32**, i32*** %12, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = load i32*, i32** %21, align 8
  %88 = load i32, i32* %17, align 4
  %89 = call i32 @extent_coalesce(i32* %82, i32* %83, i32** %84, %struct.TYPE_5__* %85, i32* %86, i32* %87, i32 0, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %81
  %92 = load i32*, i32** %21, align 8
  store i32* %92, i32** %15, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32*, i32** %16, align 8
  store i32 1, i32* %98, align 4
  %99 = load i32*, i32** %15, align 8
  store i32* %99, i32** %9, align 8
  br label %115

100:                                              ; preds = %91
  store i32 1, i32* %18, align 4
  br label %101

101:                                              ; preds = %100, %81, %70
  br label %102

102:                                              ; preds = %101, %62
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %23, label %106

106:                                              ; preds = %103
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32*, i32** %16, align 8
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %111, %106
  %114 = load i32*, i32** %15, align 8
  store i32* %114, i32** %9, align 8
  br label %115

115:                                              ; preds = %113, %97, %57
  %116 = load i32*, i32** %9, align 8
  ret i32* %116
}

declare dso_local i32* @extent_lock_from_addr(i32*, i32*, i32) #1

declare dso_local i32 @extent_past_get(i32*) #1

declare dso_local i32 @extent_can_coalesce(i32*, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @extent_unlock(i32*, i32*) #1

declare dso_local i32 @extent_coalesce(i32*, i32*, i32**, %struct.TYPE_5__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @extent_before_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
