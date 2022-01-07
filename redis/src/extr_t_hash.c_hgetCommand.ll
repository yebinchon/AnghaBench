; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_hash.c_hgetCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_hash.c_hgetCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }

@shared = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@OBJ_HASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hgetCommand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %7, i64 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @shared, i32 0, i32 0), align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @lookupKeyReadOrReply(%struct.TYPE_8__* %4, %struct.TYPE_10__* %9, i32 %15)
  store i32* %16, i32** %3, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @OBJ_HASH, align 4
  %22 = call i64 @checkType(%struct.TYPE_8__* %19, i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %1
  br label %36

25:                                               ; preds = %18
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %30, i64 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @addHashFieldToReply(%struct.TYPE_8__* %26, i32* %27, i32 %34)
  br label %36

36:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32* @lookupKeyReadOrReply(%struct.TYPE_8__*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @addHashFieldToReply(%struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
