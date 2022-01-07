; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_propagateExpire.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_propagateExpire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@shared = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@AOF_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @propagateExpire(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32*], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shared, i32 0, i32 1), align 8
  br label %14

12:                                               ; preds = %3
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @shared, i32 0, i32 0), align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32* [ %11, %10 ], [ %13, %12 ]
  %16 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  store i32* %15, i32** %16, align 16
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  store i32* %17, i32** %18, align 8
  %19 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %20 = load i32*, i32** %19, align 16
  %21 = call i32 @incrRefCount(i32* %20)
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @incrRefCount(i32* %23)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %26 = load i64, i64* @AOF_OFF, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %14
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %34 = call i32 @feedAppendOnlyFile(i32 %29, i32 %32, i32** %33, i32 2)
  br label %35

35:                                               ; preds = %28, %14
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %41 = call i32 @replicationFeedSlaves(i32 %36, i32 %39, i32** %40, i32 2)
  %42 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %43 = load i32*, i32** %42, align 16
  %44 = call i32 @decrRefCount(i32* %43)
  %45 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @decrRefCount(i32* %46)
  ret void
}

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i32 @feedAppendOnlyFile(i32, i32, i32**, i32) #1

declare dso_local i32 @replicationFeedSlaves(i32, i32, i32**, i32) #1

declare dso_local i32 @decrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
