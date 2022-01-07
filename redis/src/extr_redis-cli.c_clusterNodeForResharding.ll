; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterNodeForResharding.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterNodeForResharding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [73 x i8] c"*** The specified node (%s) is not known or not a master, please retry.\0A\00", align 1
@CLUSTER_MANAGER_FLAG_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"*** It is not possible to use the target node as source node.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*, %struct.TYPE_5__*, i32*)* @clusterNodeForResharding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @clusterNodeForResharding(i8* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.TYPE_5__* @clusterManagerNodeByName(i8* %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CLUSTER_MANAGER_FLAG_SLAVE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15, %3
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 (i8*, ...) @clusterManagerLogErr(i8* %23, i8* %24)
  %26 = load i32*, i32** %7, align 8
  store i32 1, i32* %26, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %48

27:                                               ; preds = %15
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcmp(i32 %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = call i32 (i8*, ...) @clusterManagerLogErr(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %48

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %30, %27
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %4, align 8
  br label %48

48:                                               ; preds = %46, %42, %22
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %49
}

declare dso_local %struct.TYPE_5__* @clusterManagerNodeByName(i8*) #1

declare dso_local i32 @clusterManagerLogErr(i8*, ...) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
