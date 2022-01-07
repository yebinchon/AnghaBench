; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_claim.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@SCL_ALLOC = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metaslab_claim(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = call i32 @BP_GET_NDVAS(%struct.TYPE_5__* %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = call i32 @BP_IS_HOLE(%struct.TYPE_5__* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = call i32 @metaslab_claim(i32* %26, %struct.TYPE_5__* %27, i64 0)
  store i32 %28, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %73

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @SCL_ALLOC, align 4
  %36 = load i32, i32* @FTAG, align 4
  %37 = load i32, i32* @RW_READER, align 4
  %38 = call i32 @spa_config_enter(i32* %34, i32 %35, i32 %36, i32 %37)
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %55, %33
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @metaslab_claim_dva(i32* %44, i32* %48, i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %58

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %39

58:                                               ; preds = %53, %39
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @SCL_ALLOC, align 4
  %61 = load i32, i32* @FTAG, align 4
  %62 = call i32 @spa_config_exit(i32* %59, i32 %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i64, i64* %7, align 8
  %67 = icmp eq i64 %66, 0
  br label %68

68:                                               ; preds = %65, %58
  %69 = phi i1 [ true, %58 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %30
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @BP_GET_NDVAS(%struct.TYPE_5__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_IS_HOLE(%struct.TYPE_5__*) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local i32 @metaslab_claim_dva(i32*, i32*, i64) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
