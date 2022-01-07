; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest8.c_doSetupStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest8.c_doSetupStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@LSM_CONFIG_AUTOFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*, i32*)* @doSetupStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doSetupStep(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @testWriteDatasourceRange(i32* %12, i32* %13, i32 %16, i32 %19, i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @testDeleteDatasourceRange(i32* %22, i32* %23, i32 %26, i32 %29, i32* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %4
  store i32 -1, i32* %9, align 4
  store i32 64, i32* %10, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32* @tdb_lsm(i32* %36)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* @LSM_CONFIG_AUTOFLUSH, align 4
  %40 = call i32 @lsm_config(i32* %38, i32 %39, i32* %9)
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* @LSM_CONFIG_AUTOFLUSH, align 4
  %43 = call i32 @lsm_config(i32* %41, i32 %42, i32* %10)
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @lsm_begin(i32* %44, i32 1)
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @lsm_commit(i32* %46, i32 0)
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @LSM_CONFIG_AUTOFLUSH, align 4
  %50 = call i32 @lsm_config(i32* %48, i32 %49, i32* %9)
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @lsm_work(i32* %51, i32 0, i32 0, i32 0)
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %35
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @lsm_checkpoint(i32* %58, i32 0)
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %35
  br label %62

62:                                               ; preds = %61, %4
  ret void
}

declare dso_local i32 @testWriteDatasourceRange(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @testDeleteDatasourceRange(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32* @tdb_lsm(i32*) #1

declare dso_local i32 @lsm_config(i32*, i32, i32*) #1

declare dso_local i32 @lsm_begin(i32*, i32) #1

declare dso_local i32 @lsm_commit(i32*, i32) #1

declare dso_local i32 @lsm_work(i32*, i32, i32, i32) #1

declare dso_local i32 @lsm_checkpoint(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
