; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_sismemberCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_sismemberCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }

@shared = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@OBJ_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sismemberCommand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %7, i64 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @shared, i32 0, i32 0), align 4
  %11 = call i32* @lookupKeyReadOrReply(%struct.TYPE_8__* %4, %struct.TYPE_10__* %9, i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @OBJ_SET, align 4
  %17 = call i64 @checkType(%struct.TYPE_8__* %14, i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %1
  br label %39

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %24, i64 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @setTypeIsMember(i32* %21, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @shared, i32 0, i32 1), align 4
  %34 = call i32 @addReply(%struct.TYPE_8__* %32, i32 %33)
  br label %39

35:                                               ; preds = %20
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @shared, i32 0, i32 0), align 4
  %38 = call i32 @addReply(%struct.TYPE_8__* %36, i32 %37)
  br label %39

39:                                               ; preds = %19, %35, %31
  ret void
}

declare dso_local i32* @lookupKeyReadOrReply(%struct.TYPE_8__*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i64 @setTypeIsMember(i32*, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
