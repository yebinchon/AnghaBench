; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_lookup_by_guid.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_lookup_by_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @spa_lookup_by_guid(%struct.TYPE_11__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.TYPE_10__* @vdev_lookup_by_guid(i32 %12, i64 %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %4, align 8
  br label %79

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %78

21:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %46, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %33, i64 %35
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %8, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %4, align 8
  br label %79

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %22

49:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %50
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %61, i64 %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %8, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %4, align 8
  br label %79

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %50

77:                                               ; preds = %50
  br label %78

78:                                               ; preds = %77, %18
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %79

79:                                               ; preds = %78, %71, %43, %16
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %80
}

declare dso_local %struct.TYPE_10__* @vdev_lookup_by_guid(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
