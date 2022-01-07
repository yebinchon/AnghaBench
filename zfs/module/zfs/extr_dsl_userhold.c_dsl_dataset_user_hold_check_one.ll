; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_user_hold_check_one.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_user_hold_check_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i64 }

@MAXNAMELEN = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@MAX_TAG_PREFIX_LEN = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_user_hold_check_one(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call %struct.TYPE_5__* @dmu_tx_pool(i32* %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = call i32 @dsl_pool_config_held(%struct.TYPE_5__* %19)
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = load i64, i64* @MAXNAMELEN, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @E2BIG, align 4
  %28 = call i32 @SET_ERROR(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %73

29:                                               ; preds = %4
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = load i64, i64* @MAX_TAG_PREFIX_LEN, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* @MAXNAMELEN, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @E2BIG, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %5, align 4
  br label %73

42:                                               ; preds = %32, %29
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  %47 = call %struct.TYPE_6__* @dsl_dataset_phys(i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call %struct.TYPE_6__* @dsl_dataset_phys(i32* %53)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @zap_lookup(i32* %52, i64 %56, i8* %57, i32 8, i32 1, i32* %13)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @EEXIST, align 4
  %63 = call i32 @SET_ERROR(i32 %62)
  store i32 %63, i32* %12, align 4
  br label %70

64:                                               ; preds = %51
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @ENOENT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %64
  br label %70

70:                                               ; preds = %69, %61
  br label %71

71:                                               ; preds = %70, %45, %42
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %39, %26
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_5__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(%struct.TYPE_5__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_6__* @dsl_dataset_phys(i32*) #1

declare dso_local i32 @zap_lookup(i32*, i64, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
