; ModuleID = '/home/carl/AnghaBench/redis/src/extr_intset.c_intsetAdd.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_intset.c_intsetAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @intsetAdd(%struct.TYPE_11__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @_intsetValueEncoding(i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64*, i64** %7, align 8
  store i64 1, i64* %15, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @intrev32ifbe(i64 %20)
  %22 = icmp sgt i64 %17, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.TYPE_11__* @intsetUpgradeAndAdd(%struct.TYPE_11__* %24, i32 %25)
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %4, align 8
  br label %74

27:                                               ; preds = %16
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @intsetSearch(%struct.TYPE_11__* %28, i32 %29, i64* %9)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i64*, i64** %7, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i64*, i64** %7, align 8
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %4, align 8
  br label %74

39:                                               ; preds = %27
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @intrev32ifbe(i64 %43)
  %45 = add nsw i64 %44, 1
  %46 = call %struct.TYPE_11__* @intsetResize(%struct.TYPE_11__* %40, i64 %45)
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %5, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @intrev32ifbe(i64 %50)
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %56, 1
  %58 = call i32 @intsetMoveTail(%struct.TYPE_11__* %54, i64 %55, i64 %57)
  br label %59

59:                                               ; preds = %53, %39
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @_intsetSet(%struct.TYPE_11__* %61, i64 %62, i32 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @intrev32ifbe(i64 %67)
  %69 = add nsw i64 %68, 1
  %70 = call i64 @intrev32ifbe(i64 %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %4, align 8
  br label %74

74:                                               ; preds = %60, %37, %23
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %75
}

declare dso_local i64 @_intsetValueEncoding(i32) #1

declare dso_local i64 @intrev32ifbe(i64) #1

declare dso_local %struct.TYPE_11__* @intsetUpgradeAndAdd(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @intsetSearch(%struct.TYPE_11__*, i32, i64*) #1

declare dso_local %struct.TYPE_11__* @intsetResize(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @intsetMoveTail(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i32 @_intsetSet(%struct.TYPE_11__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
