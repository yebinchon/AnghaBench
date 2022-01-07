; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerNodeInfo.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerNodeInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@CLUSTER_MANAGER_FLAG_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"S: %S %s:%u\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: %S %s:%u\0A%s   slots:%S (%u slots) %S\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\0A%s   replicates %S\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\0A%s   %U additional replica(s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i32)* @clusterManagerNodeInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @clusterManagerNodeInfo(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i8* (...) @sdsempty()
  store i8* %12, i8** %5, align 8
  %13 = call i8* (...) @sdsempty()
  store i8* %13, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %21, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @sdscat(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %14

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @sdscat(i8* %28, i8* %29)
  store i8* %30, i8** %5, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CLUSTER_MANAGER_FLAG_SLAVE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  store i8* %43, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %31
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i32*
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i8* (i8*, i8*, i8*, i32*, ...) @sdscatfmt(i8* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %59, i32* %64, i32 %67)
  store i8* %68, i8** %5, align 8
  br label %98

69:                                               ; preds = %48, %31
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = call i8* @clusterManagerNodeSlotsString(%struct.TYPE_5__* %70)
  store i8* %71, i8** %10, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = call i8* @clusterManagerNodeFlagString(%struct.TYPE_5__* %72)
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i32*
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = call i8* (i8*, i8*, i8*, i32*, ...) @sdscatfmt(i8* %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %75, i32* %80, i32 %83, i32 %86, i8* %87, i8* %88, i32 %91, i8* %92)
  store i8* %93, i8** %5, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @sdsfree(i8* %94)
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @sdsfree(i8* %96)
  br label %98

98:                                               ; preds = %69, %53
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i8*, i8** %5, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i8* (i8*, i8*, i8*, i32*, ...) @sdscatfmt(i8* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %105, i32* %108)
  store i8* %109, i8** %5, align 8
  br label %123

110:                                              ; preds = %98
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i8*, i8** %5, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i8* (i8*, i8*, i8*, i32*, ...) @sdscatfmt(i8* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %117, i32* %120)
  store i8* %121, i8** %5, align 8
  br label %122

122:                                              ; preds = %115, %110
  br label %123

123:                                              ; preds = %122, %103
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @sdsfree(i8* %124)
  %126 = load i8*, i8** %5, align 8
  ret i8* %126
}

declare dso_local i8* @sdsempty(...) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i8* @sdscatfmt(i8*, i8*, i8*, i32*, ...) #1

declare dso_local i8* @clusterManagerNodeSlotsString(%struct.TYPE_5__*) #1

declare dso_local i8* @clusterManagerNodeFlagString(%struct.TYPE_5__*) #1

declare dso_local i32 @sdsfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
