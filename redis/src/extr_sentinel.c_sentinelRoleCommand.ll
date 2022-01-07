; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelRoleCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelRoleCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"sentinel\00", align 1
@sentinel = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelRoleCommand(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @addReplyArrayLen(i32* %6, i32 2)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @addReplyBulkCBuffer(i32* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sentinel, i32 0, i32 0), align 4
  %12 = call i32 @dictSize(i32 %11)
  %13 = call i32 @addReplyArrayLen(i32* %10, i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sentinel, i32 0, i32 0), align 4
  %15 = call i32* @dictGetIterator(i32 %14)
  store i32* %15, i32** %3, align 8
  br label %16

16:                                               ; preds = %20, %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @dictNext(i32* %17)
  store i32* %18, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_4__* @dictGetVal(i32* %21)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %5, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @addReplyBulkCString(i32* %23, i32 %26)
  br label %16

28:                                               ; preds = %16
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @dictReleaseIterator(i32* %29)
  ret void
}

declare dso_local i32 @addReplyArrayLen(i32*, i32) #1

declare dso_local i32 @addReplyBulkCBuffer(i32*, i8*, i32) #1

declare dso_local i32 @dictSize(i32) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_4__* @dictGetVal(i32*) #1

declare dso_local i32 @addReplyBulkCString(i32*, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
