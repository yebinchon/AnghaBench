; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_swap.c_swap_set_devnode.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_swap.c_swap_set_devnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }

@path_hash_ops = common dso_local global i32 0, align 4
@same_devnode = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*)* @swap_set_devnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_set_devnode(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_14__* %9)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = call %struct.TYPE_15__* @UNIT(%struct.TYPE_14__* %11)
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = call i32 @hashmap_ensure_allocated(i32** %15, i32* @path_hash_ops)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %96

21:                                               ; preds = %2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = call %struct.TYPE_15__* @UNIT(%struct.TYPE_14__* %22)
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %21
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.TYPE_14__* @hashmap_get(i32* %33, i64 %36)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %7, align 8
  %38 = load i32, i32* @same_devnode, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = call i32 @LIST_REMOVE(i32 %38, %struct.TYPE_14__* %39, %struct.TYPE_14__* %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = icmp ne %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = call i32 @hashmap_replace(i32* %45, i64 %48, %struct.TYPE_14__* %49)
  br label %57

51:                                               ; preds = %32
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @hashmap_remove(i32* %52, i64 %55)
  br label %57

57:                                               ; preds = %51, %44
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @mfree(i64 %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %57, %21
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %95

67:                                               ; preds = %64
  %68 = load i8*, i8** %5, align 8
  %69 = call i64 @strdup(i8* %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %96

79:                                               ; preds = %67
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call %struct.TYPE_14__* @hashmap_get(i32* %80, i64 %83)
  store %struct.TYPE_14__* %84, %struct.TYPE_14__** %7, align 8
  %85 = load i32, i32* @same_devnode, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = call i32 @LIST_PREPEND(i32 %85, %struct.TYPE_14__* %86, %struct.TYPE_14__* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = call i32 @hashmap_replace(i32* %89, i64 %92, %struct.TYPE_14__* %93)
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %79, %76, %19
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @hashmap_ensure_allocated(i32**, i32*) #1

declare dso_local %struct.TYPE_15__* @UNIT(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @hashmap_get(i32*, i64) #1

declare dso_local i32 @LIST_REMOVE(i32, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @hashmap_replace(i32*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @hashmap_remove(i32*, i64) #1

declare dso_local i64 @mfree(i64) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i32 @LIST_PREPEND(i32, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
