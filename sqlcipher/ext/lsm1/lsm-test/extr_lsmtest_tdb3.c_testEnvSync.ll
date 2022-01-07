; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_testEnvSync.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_testEnvSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32)* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i32, i32 (i32, i64, i32, i32, i32)*, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.timeval = type { i32, i32 }

@LSM_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @testEnvSync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testEnvSync(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 4
  %12 = alloca %struct.timeval, align 4
  store i32* %0, i32** %3, align 8
  %13 = call %struct.TYPE_9__* (...) @tdb_lsm_env()
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %6, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i64 %24
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %7, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @LSM_IOERR, align 4
  store i32 %31, i32* %2, align 4
  br label %133

32:                                               ; preds = %1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = call i32 @doSystemCrash(%struct.TYPE_11__* %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @LSM_IOERR, align 4
  store i32 %51, i32* %2, align 4
  br label %133

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %82, %58
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %59
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @testFree(i64 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %65
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %59

85:                                               ; preds = %59
  br label %86

86:                                               ; preds = %85, %53
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  %89 = load i32 (i32, i64, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32)** %88, align 8
  %90 = icmp ne i32 (i32, i64, i32, i32, i32)* %89, null
  br i1 %90, label %91, label %125

91:                                               ; preds = %86
  %92 = call i32 @gettimeofday(%struct.timeval* %11, i32 0)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32 (i32)*, i32 (i32)** %94, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 %95(i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = call i32 @gettimeofday(%struct.timeval* %12, i32 0)
  %101 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %102, %104
  %106 = mul nsw i32 %105, 1000000
  %107 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %108, %110
  %112 = add nsw i32 %106, %111
  store i32 %112, i32* %10, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  %115 = load i32 (i32, i64, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32)** %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 %115(i32 %118, i64 %121, i32 0, i32 0, i32 %122)
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %2, align 4
  br label %133

125:                                              ; preds = %86
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32 (i32)*, i32 (i32)** %127, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 %128(i32 %131)
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %125, %91, %46, %30
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_9__* @tdb_lsm_env(...) #1

declare dso_local i32 @doSystemCrash(%struct.TYPE_11__*) #1

declare dso_local i32 @testFree(i64) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
