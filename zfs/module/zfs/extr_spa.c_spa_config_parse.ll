; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_config_parse.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_config_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_config_parse(i32* %0, %struct.TYPE_9__** %1, i32* %2, %struct.TYPE_9__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @vdev_alloc(i32* %19, %struct.TYPE_9__** %20, i32* %21, %struct.TYPE_9__* %22, i32 %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %7, align 4
  br label %90

29:                                               ; preds = %6
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %90

38:                                               ; preds = %29
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %41 = call i32 @nvlist_lookup_nvlist_array(i32* %39, i32 %40, i32*** %14, i32* %15)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @ENOENT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %90

46:                                               ; preds = %38
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = call i32 @vdev_free(%struct.TYPE_9__* %51)
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %53, align 8
  %54 = load i32, i32* @EINVAL, align 4
  %55 = call i32 @SET_ERROR(i32 %54)
  store i32 %55, i32* %7, align 4
  br label %90

56:                                               ; preds = %46
  store i32 0, i32* %17, align 4
  br label %57

57:                                               ; preds = %81, %56
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = load i32**, i32*** %14, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @spa_config_parse(i32* %62, %struct.TYPE_9__** %18, i32* %67, %struct.TYPE_9__* %69, i32 %70, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %61
  %75 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call i32 @vdev_free(%struct.TYPE_9__* %76)
  %78 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %78, align 8
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %7, align 4
  br label %90

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %17, align 4
  br label %57

84:                                               ; preds = %57
  %85 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = icmp ne %struct.TYPE_9__* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @ASSERT(i32 %88)
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %84, %74, %49, %45, %37, %27
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @vdev_alloc(i32*, %struct.TYPE_9__**, i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #1

declare dso_local i32 @vdev_free(%struct.TYPE_9__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
