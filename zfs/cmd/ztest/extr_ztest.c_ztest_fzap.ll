; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_fzap.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_fzap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

@UMEM_NOFAIL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_OT_ZAP_OTHER = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fzap-%llu-%llu\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@TXG_MIGHTWAIT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_fzap(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load i32, i32* @UMEM_NOFAIL, align 4
  %20 = call %struct.TYPE_9__* @umem_alloc(i32 8, i32 %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %6, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* @FTAG, align 4
  %24 = load i32, i32* @DMU_OT_ZAP_OTHER, align 4
  %25 = call i32 @ztest_od_init(%struct.TYPE_9__* %21, i64 %22, i32 %23, i32 0, i32 %24, i32 0, i32 0, i32 0)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = call i32 @ztest_random(i32 2)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @ztest_object_init(%struct.TYPE_10__* %26, %struct.TYPE_9__* %27, i32 8, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %93

35:                                               ; preds = %2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %89, %35
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 2050
  br i1 %41, label %42, label %92

42:                                               ; preds = %39
  %43 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %10, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %11, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %12, align 8
  %49 = trunc i64 %44 to i32
  %50 = load i64, i64* %4, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %12, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @snprintf(i8* %46, i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32* @dmu_tx_create(i32* %55)
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* @B_TRUE, align 4
  %60 = call i32 @dmu_tx_hold_zap(i32* %57, i64 %58, i32 %59, i8* %46)
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* @TXG_MIGHTWAIT, align 4
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i64 @ztest_tx_assign(i32* %61, i32 %62, i32 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %42
  store i32 2, i32* %15, align 4
  br label %85

68:                                               ; preds = %42
  %69 = load i32*, i32** %5, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @zap_add(i32* %69, i64 %70, i8* %46, i32 8, i32 1, i64* %12, i32* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @EEXIST, align 4
  %78 = icmp eq i32 %76, %77
  br label %79

79:                                               ; preds = %75, %68
  %80 = phi i1 [ true, %68 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @dmu_tx_commit(i32* %83)
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %67, %79
  %86 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %15, align 4
  switch i32 %87, label %96 [
    i32 0, label %88
    i32 2, label %93
  ]

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %39

92:                                               ; preds = %39
  br label %93

93:                                               ; preds = %92, %85, %34
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = call i32 @umem_free(%struct.TYPE_9__* %94, i32 8)
  ret void

96:                                               ; preds = %85
  unreachable
}

declare dso_local %struct.TYPE_9__* @umem_alloc(i32, i32) #1

declare dso_local i32 @ztest_od_init(%struct.TYPE_9__*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ztest_object_init(%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ztest_random(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32* @dmu_tx_create(i32*) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i64, i32, i8*) #1

declare dso_local i64 @ztest_tx_assign(i32*, i32, i32) #1

declare dso_local i32 @zap_add(i32*, i64, i8*, i32, i32, i64*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @umem_free(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
