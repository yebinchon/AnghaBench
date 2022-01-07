; ModuleID = '/home/carl/AnghaBench/redis/src/extr_pubsub.c_addReplyPubsubUnsubscribed.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_pubsub.c_addReplyPubsubUnsubscribed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32 }

@shared = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyPubsubUnsubscribed(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @shared, i32 0, i32 1), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @addReply(%struct.TYPE_10__* %10, i32 %13)
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = call i32 @addReplyPushLen(%struct.TYPE_10__* %16, i32 3)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @shared, i32 0, i32 0), align 8
  %21 = call i32 @addReply(%struct.TYPE_10__* %19, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @addReplyBulk(%struct.TYPE_10__* %25, i32* %26)
  br label %31

28:                                               ; preds = %18
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = call i32 @addReplyNull(%struct.TYPE_10__* %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = call i32 @clientSubscriptionsCount(%struct.TYPE_10__* %33)
  %35 = call i32 @addReplyLongLong(%struct.TYPE_10__* %32, i32 %34)
  ret void
}

declare dso_local i32 @addReply(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @addReplyPushLen(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_10__*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @clientSubscriptionsCount(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
