; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_mzap_upgrade.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_mzap_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64*, i32, %struct.TYPE_18__, %struct.TYPE_17__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64*, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }

@KM_SLEEP = common dso_local global i32 0, align 4
@fzap_default_block_shift = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"upgrading obj=%llu with %u chunks\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"adding %s=%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__**, i8*, i32*, i32)* @mzap_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mzap_upgrade(%struct.TYPE_19__** %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__** %0, %struct.TYPE_19__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %11, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 4
  %22 = call i32 @RW_WRITE_HELD(i32* %21)
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @KM_SLEEP, align 4
  %31 = call %struct.TYPE_21__* @vmem_alloc(i32 %29, i32 %30)
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %13, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @bcopy(i32 %36, %struct.TYPE_21__* %37, i32 %38)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @fzap_default_block_shift, align 8
  %54 = shl i64 1, %53
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @dmu_object_set_blocksize(i32 %49, i64* %52, i64 %54, i32 0, i32* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @vmem_free(%struct.TYPE_21__* %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %132

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %64, %4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64* %68, i32 %69)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %72 = call i32 @mze_destroy(%struct.TYPE_19__* %71)
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @fzap_upgrade(%struct.TYPE_19__* %73, i32* %74, i32 %75)
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %123, %65
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %126

81:                                               ; preds = %77
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %83, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i64 %86
  store %struct.TYPE_22__* %87, %struct.TYPE_22__** %16, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %123

95:                                               ; preds = %81
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %98, i32 %101)
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = call %struct.TYPE_20__* @zap_name_alloc(%struct.TYPE_19__* %103, i64* %106, i32 0)
  store %struct.TYPE_20__* %107, %struct.TYPE_20__** %17, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @fzap_add_cd(%struct.TYPE_20__* %108, i32 8, i32 1, i32* %110, i32 %113, i8* %114, i32* %115)
  %117 = call i32 @VERIFY0(i32 %116)
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  store %struct.TYPE_19__* %120, %struct.TYPE_19__** %11, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %122 = call i32 @zap_name_free(%struct.TYPE_20__* %121)
  br label %123

123:                                              ; preds = %95, %94
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %77

126:                                              ; preds = %77
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @vmem_free(%struct.TYPE_21__* %127, i32 %128)
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %131 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  store %struct.TYPE_19__* %130, %struct.TYPE_19__** %131, align 8
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %126, %59
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_WRITE_HELD(i32*) #1

declare dso_local %struct.TYPE_21__* @vmem_alloc(i32, i32) #1

declare dso_local i32 @bcopy(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @dmu_object_set_blocksize(i32, i64*, i64, i32, i32*) #1

declare dso_local i32 @vmem_free(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @dprintf(i8*, i64*, i32) #1

declare dso_local i32 @mze_destroy(%struct.TYPE_19__*) #1

declare dso_local i32 @fzap_upgrade(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local %struct.TYPE_20__* @zap_name_alloc(%struct.TYPE_19__*, i64*, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @fzap_add_cd(%struct.TYPE_20__*, i32, i32, i32*, i32, i8*, i32*) #1

declare dso_local i32 @zap_name_free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
