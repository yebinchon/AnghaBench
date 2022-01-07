; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_migrateCloseSocket.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_migrateCloseSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @migrateCloseSocket(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = call i32 (...) @sdsempty()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @sdslen(i8* %14)
  %16 = call i32 @sdscatlen(i32 %8, i8* %11, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sdscatlen(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @sdslen(i8* %25)
  %27 = call i32 @sdscatlen(i32 %19, i8* %22, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 4
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.TYPE_9__* @dictFetchValue(i32 %28, i32 %29)
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %6, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @sdsfree(i32 %34)
  br label %48

36:                                               ; preds = %2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @connClose(i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = call i32 @zfree(%struct.TYPE_9__* %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dictDelete(i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @sdsfree(i32 %46)
  br label %48

48:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local %struct.TYPE_9__* @dictFetchValue(i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @connClose(i32) #1

declare dso_local i32 @zfree(%struct.TYPE_9__*) #1

declare dso_local i32 @dictDelete(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
