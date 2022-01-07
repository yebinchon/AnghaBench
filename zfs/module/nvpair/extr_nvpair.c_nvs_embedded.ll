; ModuleID = '/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvs_embedded.c'
source_filename = "/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvs_embedded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@nvpair_max_recursion = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NV_VERSION = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @nvs_embedded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvs_embedded(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %83 [
    i32 128, label %12
    i32 129, label %33
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @nvpair_max_recursion, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %86

20:                                               ; preds = %12
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = call i32 @nvs_operation(%struct.TYPE_9__* %25, %struct.TYPE_10__* %26, i32* null)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %86

33:                                               ; preds = %2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NV_VERSION, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOTSUP, align 4
  store i32 %40, i32* %3, align 4
  br label %86

41:                                               ; preds = %33
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @nv_priv_alloc_embedded(i32 %44)
  store i32* %45, i32** %7, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %3, align 4
  br label %86

49:                                               ; preds = %41
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @nvlist_init(%struct.TYPE_10__* %50, i32 %53, i32* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @nvpair_max_recursion, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = call i32 @nvlist_free(%struct.TYPE_10__* %62)
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %3, align 4
  br label %86

65:                                               ; preds = %49
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = call i32 @nvs_operation(%struct.TYPE_9__* %70, %struct.TYPE_10__* %71, i32* null)
  store i32 %72, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = call i32 @nvlist_free(%struct.TYPE_10__* %75)
  br label %77

77:                                               ; preds = %74, %65
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %86

83:                                               ; preds = %2
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %77, %61, %47, %39, %20, %18
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @nvs_operation(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32* @nv_priv_alloc_embedded(i32) #1

declare dso_local i32 @nvlist_init(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @nvlist_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
