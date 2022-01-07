; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_xlenCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_xlenCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@shared = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@OBJ_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlenCommand(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 4
  %12 = call %struct.TYPE_12__* @lookupKeyReadOrReply(%struct.TYPE_13__* %5, i32 %10, i32 %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %3, align 8
  %13 = icmp eq %struct.TYPE_12__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = load i32, i32* @OBJ_STREAM, align 4
  %18 = call i64 @checkType(%struct.TYPE_13__* %15, %struct.TYPE_12__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %1
  br label %30

21:                                               ; preds = %14
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %4, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @addReplyLongLong(%struct.TYPE_13__* %25, i32 %28)
  br label %30

30:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.TYPE_12__* @lookupKeyReadOrReply(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
