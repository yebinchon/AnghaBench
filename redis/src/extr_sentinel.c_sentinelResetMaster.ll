; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelResetMaster.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelResetMaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, %struct.TYPE_6__*, i32*, i32*, i32*, i64, i64, i32, i32*, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8*, i64, i8*, i32, i32 }

@SRI_MASTER = common dso_local global i32 0, align 4
@instancesDictType = common dso_local global i32 0, align 4
@SENTINEL_RESET_NO_SENTINELS = common dso_local global i32 0, align 4
@SENTINEL_FAILOVER_STATE_NONE = common dso_local global i32 0, align 4
@SENTINEL_GENERATE_EVENT = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"+reset-master\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%@\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelResetMaster(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SRI_MASTER, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @serverAssert(i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 12
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @dictRelease(i8* %13)
  %15 = call i8* @dictCreate(i32* @instancesDictType, i32* null)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 12
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SENTINEL_RESET_NO_SENTINELS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 11
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @dictRelease(i8* %25)
  %27 = call i8* @dictCreate(i32* @instancesDictType, i32* null)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 11
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %22, %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @instanceLinkCloseConnection(%struct.TYPE_6__* %33, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @instanceLinkCloseConnection(%struct.TYPE_6__* %42, i32 %47)
  %49 = load i32, i32* @SRI_MASTER, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 10
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %30
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 10
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @sdsfree(i32* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 10
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %58, %30
  %66 = load i32, i32* @SENTINEL_FAILOVER_STATE_NONE, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 8
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 7
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  store i32* null, i32** %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @sdsfree(i32* %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @sdsfree(i32* %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  store i32* null, i32** %86, align 8
  %87 = call i8* (...) @mstime()
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store i8* %87, i8** %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = call i8* (...) @mstime()
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i8* %96, i8** %100, align 8
  %101 = call i8* (...) @mstime()
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i8* %101, i8** %105, align 8
  %106 = call i8* (...) @mstime()
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @SRI_MASTER, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @SENTINEL_GENERATE_EVENT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %65
  %117 = load i32, i32* @LL_WARNING, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = call i32 @sentinelEvent(i32 %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %116, %65
  ret void
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @dictRelease(i8*) #1

declare dso_local i8* @dictCreate(i32*, i32*) #1

declare dso_local i32 @instanceLinkCloseConnection(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sdsfree(i32*) #1

declare dso_local i8* @mstime(...) #1

declare dso_local i32 @sentinelEvent(i32, i8*, %struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
