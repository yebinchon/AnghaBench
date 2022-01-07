; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelFailoverReconfNextSlave.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelFailoverReconfNextSlave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, %struct.TYPE_12__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@SRI_RECONF_SENT = common dso_local global i32 0, align 4
@SRI_RECONF_INPROG = common dso_local global i32 0, align 4
@SRI_PROMOTED = common dso_local global i32 0, align 4
@SRI_RECONF_DONE = common dso_local global i32 0, align 4
@SENTINEL_SLAVE_RECONF_TIMEOUT = common dso_local global i64 0, align 8
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"-slave-reconf-sent-timeout\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%@\00", align 1
@C_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"+slave-reconf-sent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelFailoverReconfNextSlave(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32* @dictGetIterator(i32 %11)
  store i32* %12, i32** %3, align 8
  br label %13

13:                                               ; preds = %31, %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @dictNext(i32* %14)
  store i32* %15, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.TYPE_13__* @dictGetVal(i32* %18)
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %6, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SRI_RECONF_SENT, align 4
  %24 = load i32, i32* @SRI_RECONF_INPROG, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %17
  br label %13

32:                                               ; preds = %13
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @dictReleaseIterator(i32* %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32* @dictGetIterator(i32 %37)
  store i32* %38, i32** %3, align 8
  br label %39

39:                                               ; preds = %145, %110, %102, %62, %32
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32*, i32** %3, align 8
  %47 = call i32* @dictNext(i32* %46)
  store i32* %47, i32** %4, align 8
  %48 = icmp ne i32* %47, null
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi i1 [ false, %39 ], [ %48, %45 ]
  br i1 %50, label %51, label %146

51:                                               ; preds = %49
  %52 = load i32*, i32** %4, align 8
  %53 = call %struct.TYPE_13__* @dictGetVal(i32* %52)
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %7, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SRI_PROMOTED, align 4
  %58 = load i32, i32* @SRI_RECONF_DONE, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %39

63:                                               ; preds = %51
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SRI_RECONF_SENT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %63
  %71 = call i64 (...) @mstime()
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = load i64, i64* @SENTINEL_SLAVE_RECONF_TIMEOUT, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = load i32, i32* @LL_NOTICE, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = call i32 @sentinelEvent(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @SRI_RECONF_SENT, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* @SRI_RECONF_DONE, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %78, %70, %63
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SRI_RECONF_SENT, align 4
  %98 = load i32, i32* @SRI_RECONF_INPROG, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %39

103:                                              ; preds = %93
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %39

111:                                              ; preds = %103
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @sentinelSendSlaveOf(%struct.TYPE_13__* %112, i32 %119, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @C_OK, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %111
  %132 = load i32, i32* @SRI_RECONF_SENT, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = call i64 (...) @mstime()
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  %140 = load i32, i32* @LL_NOTICE, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %142 = call i32 @sentinelEvent(i32 %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %131, %111
  br label %39

146:                                              ; preds = %49
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @dictReleaseIterator(i32* %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %150 = call i32 @sentinelFailoverDetectEnd(%struct.TYPE_13__* %149)
  ret void
}

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_13__* @dictGetVal(i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @sentinelEvent(i32, i8*, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @sentinelSendSlaveOf(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @sentinelFailoverDetectEnd(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
