; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_diff.c_dmu_diff.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_diff.c_dmu_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.diffarg = type { i32, %struct.TYPE_3__, i32*, %struct.vnode* }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@DDR_NONE = common dso_local global i32 0, align 4
@TRAVERSE_PRE = common dso_local global i32 0, align 4
@TRAVERSE_PREFETCH_METADATA = common dso_local global i32 0, align 4
@TRAVERSE_NO_DECRYPT = common dso_local global i32 0, align 4
@diff_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_diff(i8* %0, i8* %1, %struct.vnode* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.diffarg, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.vnode* %2, %struct.vnode** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32* @strchr(i8* %16, i8 signext 64)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32* @strchr(i8* %20, i8 signext 64)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = call i32 @SET_ERROR(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %129

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @FTAG, align 4
  %29 = call i32 @dsl_pool_hold(i8* %27, i32 %28, i32** %13)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %129

34:                                               ; preds = %26
  %35 = load i32*, i32** %13, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @FTAG, align 4
  %38 = call i32 @dsl_dataset_hold(i32* %35, i8* %36, i32 %37, i32** %12)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* @FTAG, align 4
  %44 = call i32 @dsl_pool_rele(i32* %42, i32 %43)
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %5, align 4
  br label %129

46:                                               ; preds = %34
  %47 = load i32*, i32** %13, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @FTAG, align 4
  %50 = call i32 @dsl_dataset_hold(i32* %47, i8* %48, i32 %49, i32** %11)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* @FTAG, align 4
  %56 = call i32 @dsl_dataset_rele(i32* %54, i32 %55)
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* @FTAG, align 4
  %59 = call i32 @dsl_pool_rele(i32* %57, i32 %58)
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %5, align 4
  br label %129

61:                                               ; preds = %46
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @dsl_dataset_is_before(i32* %62, i32* %63, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %61
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* @FTAG, align 4
  %69 = call i32 @dsl_dataset_rele(i32* %67, i32 %68)
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* @FTAG, align 4
  %72 = call i32 @dsl_dataset_rele(i32* %70, i32 %71)
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* @FTAG, align 4
  %75 = call i32 @dsl_pool_rele(i32* %73, i32 %74)
  %76 = load i32, i32* @EXDEV, align 4
  %77 = call i32 @SET_ERROR(i32 %76)
  store i32 %77, i32* %5, align 4
  br label %129

78:                                               ; preds = %61
  %79 = load i32*, i32** %11, align 8
  %80 = call %struct.TYPE_4__* @dsl_dataset_phys(i32* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %15, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* @FTAG, align 4
  %85 = call i32 @dsl_dataset_rele(i32* %83, i32 %84)
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* @FTAG, align 4
  %88 = call i32 @dsl_dataset_long_hold(i32* %86, i32 %87)
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* @FTAG, align 4
  %91 = call i32 @dsl_pool_rele(i32* %89, i32 %90)
  %92 = load %struct.vnode*, %struct.vnode** %8, align 8
  %93 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %10, i32 0, i32 3
  store %struct.vnode* %92, %struct.vnode** %93, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %10, i32 0, i32 2
  store i32* %94, i32** %95, align 8
  %96 = load i32, i32* @DDR_NONE, align 4
  %97 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %10, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %10, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %10, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %10, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @TRAVERSE_PRE, align 4
  %107 = load i32, i32* @TRAVERSE_PREFETCH_METADATA, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @TRAVERSE_NO_DECRYPT, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @diff_cb, align 4
  %112 = call i32 @traverse_dataset(i32* %104, i32 %105, i32 %110, i32 %111, %struct.diffarg* %10)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %78
  %116 = load i32, i32* %14, align 4
  %117 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %10, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  br label %120

118:                                              ; preds = %78
  %119 = call i32 @write_record(%struct.diffarg* %10)
  br label %120

120:                                              ; preds = %118, %115
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* @FTAG, align 4
  %123 = call i32 @dsl_dataset_long_rele(i32* %121, i32 %122)
  %124 = load i32*, i32** %12, align 8
  %125 = load i32, i32* @FTAG, align 4
  %126 = call i32 @dsl_dataset_rele(i32* %124, i32 %125)
  %127 = getelementptr inbounds %struct.diffarg, %struct.diffarg* %10, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %120, %66, %53, %41, %32, %23
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_pool_hold(i8*, i32, i32**) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i32, i32**) #1

declare dso_local i32 @dsl_pool_rele(i32*, i32) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @dsl_dataset_is_before(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @dsl_dataset_phys(i32*) #1

declare dso_local i32 @dsl_dataset_long_hold(i32*, i32) #1

declare dso_local i32 @traverse_dataset(i32*, i32, i32, i32, %struct.diffarg*) #1

declare dso_local i32 @write_record(%struct.diffarg*) #1

declare dso_local i32 @dsl_dataset_long_rele(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
