; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmDbDatabaseRelease.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmDbDatabaseRelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_11__*, %struct.TYPE_11__**, %struct.TYPE_12__*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, i32, i64, %struct.TYPE_12__* }

@gShared = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lsmDbDatabaseRelease(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %151

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = call i32 @doDbDisconnect(%struct.TYPE_10__* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @lsmFsUnmap(i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @lsmMutexEnter(i32 %29, i32 %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 7
  store %struct.TYPE_10__** %35, %struct.TYPE_10__*** %4, align 8
  br label %36

36:                                               ; preds = %42, %22
  %37 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = icmp ne %struct.TYPE_10__* %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store %struct.TYPE_10__** %45, %struct.TYPE_10__*** %4, align 8
  br label %36

46:                                               ; preds = %36
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = call i32 @dbDeferClose(%struct.TYPE_10__* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @lsmMutexLeave(i32 %55, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @enterGlobalMutex(i32 %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %146

72:                                               ; preds = %46
  store %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gShared, i32 0, i32 0), %struct.TYPE_12__*** %7, align 8
  br label %73

73:                                               ; preds = %79, %72
  %74 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = icmp ne %struct.TYPE_12__* %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 5
  store %struct.TYPE_12__** %82, %struct.TYPE_12__*** %7, align 8
  br label %73

83:                                               ; preds = %73
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %111, %92
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %105, i64 %107
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = call i32 @lsmFree(i32 %102, %struct.TYPE_11__* %109)
  br label %111

111:                                              ; preds = %99
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %93

114:                                              ; preds = %93
  br label %115

115:                                              ; preds = %114, %83
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %5, align 8
  br label %119

119:                                              ; preds = %138, %115
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = icmp ne %struct.TYPE_11__* %120, null
  br i1 %121, label %122, label %140

122:                                              ; preds = %119
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %6, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @lsmEnvClose(i32 %128, i32 %131)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = call i32 @lsmFree(i32 %135, %struct.TYPE_11__* %136)
  br label %138

138:                                              ; preds = %122
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %139, %struct.TYPE_11__** %5, align 8
  br label %119

140:                                              ; preds = %119
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = call i32 @freeDatabase(i32 %143, %struct.TYPE_12__* %144)
  br label %146

146:                                              ; preds = %140, %46
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @leaveGlobalMutex(i32 %149)
  br label %151

151:                                              ; preds = %146, %1
  ret void
}

declare dso_local i32 @doDbDisconnect(%struct.TYPE_10__*) #1

declare dso_local i32 @lsmFsUnmap(i32) #1

declare dso_local i32 @lsmMutexEnter(i32, i32) #1

declare dso_local i32 @dbDeferClose(%struct.TYPE_10__*) #1

declare dso_local i32 @lsmMutexLeave(i32, i32) #1

declare dso_local i32 @enterGlobalMutex(i32) #1

declare dso_local i32 @lsmFree(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @lsmEnvClose(i32, i32) #1

declare dso_local i32 @freeDatabase(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @leaveGlobalMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
