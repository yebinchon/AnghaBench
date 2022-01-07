; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_replay_zil_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_replay_zil_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@DMU_OST_ANY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@ztest_replay_vector = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s replay %llu blocks, %llu records, seq %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ztest_replay_zil_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ztest_replay_zil_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @DMU_OST_ANY, align 4
  %10 = load i32, i32* @B_TRUE, align 4
  %11 = load i32, i32* @B_TRUE, align 4
  %12 = load i32, i32* @FTAG, align 4
  %13 = call i32 @ztest_dmu_objset_own(i8* %8, i32 %9, i32 %10, i32 %11, i32 %12, i32** %5)
  %14 = call i32 @VERIFY0(i32 %13)
  %15 = load i32, i32* @UMEM_NOFAIL, align 4
  %16 = call i32* @umem_alloc(i32 4, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @ztest_zd_init(i32* %17, i32* null, i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @ztest_replay_vector, align 4
  %23 = call i32 @zil_replay(i32* %20, i32* %21, i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @ztest_zd_fini(i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.TYPE_4__* @dmu_objset_zil(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %2
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ztest_opts, i32 0, i32 0), align 4
  %33 = icmp sge i32 %32, 6
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = call %struct.TYPE_4__* @dmu_objset_zil(i32* %35)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %7, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %41, i32 %45, i32 %49)
  br label %51

51:                                               ; preds = %34, %31, %2
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @umem_free(i32* %52, i32 4)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @B_TRUE, align 4
  %56 = load i32, i32* @FTAG, align 4
  %57 = call i32 @dmu_objset_disown(i32* %54, i32 %55, i32 %56)
  ret i32 0
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @ztest_dmu_objset_own(i8*, i32, i32, i32, i32, i32**) #1

declare dso_local i32* @umem_alloc(i32, i32) #1

declare dso_local i32 @ztest_zd_init(i32*, i32*, i32*) #1

declare dso_local i32 @zil_replay(i32*, i32*, i32) #1

declare dso_local i32 @ztest_zd_fini(i32*) #1

declare dso_local %struct.TYPE_4__* @dmu_objset_zil(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @umem_free(i32*, i32) #1

declare dso_local i32 @dmu_objset_disown(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
