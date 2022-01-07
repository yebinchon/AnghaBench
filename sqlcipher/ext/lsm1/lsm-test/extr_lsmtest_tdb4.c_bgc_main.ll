; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_bgc_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_bgc_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32, i64, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE4_OK = common dso_local global i32 0, align 4
@BT_CONTROL_LOGSIZE = common dso_local global i32 0, align 4
@BT_CONTROL_CHECKPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @bgc_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bgc_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast %struct.TYPE_12__** %3 to i32**
  %19 = call i32 @test_bt_open(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %17, i32 0, i32** %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SQLITE4_OK, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @testBtConfigure(%struct.TYPE_12__* %25, i8* %30, i32* %5)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %86, %1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %92

37:                                               ; preds = %32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @sqlite4BtBegin(i32* %41, i32 1)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @sqlite4BtCommit(i32* %43, i32 0)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @BT_CONTROL_LOGSIZE, align 4
  %47 = bitcast i32* %8 to i8*
  %48 = call i32 @sqlite4BtControl(i32* %45, i32 %46, i8* %47)
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %37
  %55 = call i32 @memset(%struct.TYPE_11__* %10, i32 0, i32 4)
  %56 = load i32, i32* %8, align 4
  %57 = sdiv i32 %56, 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @BT_CONTROL_CHECKPOINT, align 4
  %61 = bitcast %struct.TYPE_11__* %10 to i8*
  %62 = call i32 @sqlite4BtControl(i32* %59, i32 %60, i8* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @SQLITE4_OK, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @BT_CONTROL_LOGSIZE, align 4
  %70 = bitcast i32* %8 to i8*
  %71 = call i32 @sqlite4BtControl(i32* %68, i32 %69, i8* %70)
  br label %72

72:                                               ; preds = %54, %37
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = call i32 @pthread_mutex_lock(i32* %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = call i32 @pthread_cond_wait(i32* %82, i32* %84)
  br label %86

86:                                               ; preds = %80, %72
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = call i32 @pthread_mutex_unlock(i32* %90)
  br label %32

92:                                               ; preds = %32
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = icmp ne %struct.TYPE_12__* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = bitcast %struct.TYPE_12__* %96 to i32*
  %98 = call i32 @bt_close(i32* %97)
  br label %99

99:                                               ; preds = %95, %92
  ret i8* null
}

declare dso_local i32 @test_bt_open(i8*, i8*, i32, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testBtConfigure(%struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i32 @sqlite4BtBegin(i32*, i32) #1

declare dso_local i32 @sqlite4BtCommit(i32*, i32) #1

declare dso_local i32 @sqlite4BtControl(i32*, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @bt_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
