; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_modulePopulateReplicationInfoStructure.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_modulePopulateReplicationInfoStructure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i8*, i32, i32, i32, i32, i32, i32 }

@REDISMODULE_ERR = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modulePopulateReplicationInfoStructure(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @REDISMODULE_ERR, align 4
  store i32 %10, i32* %3, align 4
  br label %49

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = call i32 @memset(%struct.TYPE_4__* %14, i32 0, i32 40)
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %20 = icmp eq i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  br label %29

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i8* [ %27, %26 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %28 ]
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 5), align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 4), align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 3), align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 2), align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %29, %9
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
