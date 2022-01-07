; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zrankGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zrankGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32 }

@shared = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@OBJ_ZSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zrankGenericCommand(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %11, i64 1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %16, i64 2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %6, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_16__* @lookupKeyReadOrReply(%struct.TYPE_17__* %19, %struct.TYPE_16__* %20, i32 %26)
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %7, align 8
  %28 = icmp eq %struct.TYPE_16__* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %32 = load i32, i32* @OBJ_ZSET, align 4
  %33 = call i64 @checkType(%struct.TYPE_17__* %30, %struct.TYPE_16__* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %2
  br label %57

36:                                               ; preds = %29
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = call i32 @sdsEncodedObject(%struct.TYPE_16__* %39)
  %41 = call i32 @serverAssertWithInfo(%struct.TYPE_17__* %37, %struct.TYPE_16__* %38, i32 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @zsetRank(%struct.TYPE_16__* %42, i32 %45, i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @addReplyLongLong(%struct.TYPE_17__* %51, i64 %52)
  br label %57

54:                                               ; preds = %36
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = call i32 @addReplyNull(%struct.TYPE_17__* %55)
  br label %57

57:                                               ; preds = %35, %54, %50
  ret void
}

declare dso_local %struct.TYPE_16__* @lookupKeyReadOrReply(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @serverAssertWithInfo(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @sdsEncodedObject(%struct.TYPE_16__*) #1

declare dso_local i64 @zsetRank(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
