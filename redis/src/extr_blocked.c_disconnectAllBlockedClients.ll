; ModuleID = '/home/carl/AnghaBench/redis/src/extr_blocked.c_disconnectAllBlockedClients.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_blocked.c_disconnectAllBlockedClients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"-UNBLOCKED force unblock from blocking operation, instance state changed (master -> replica?)\0D\0A\00", align 1
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disconnectAllBlockedClients() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 4
  %5 = call i32 @listRewind(i32 %4, i32* %2)
  br label %6

6:                                                ; preds = %29, %0
  %7 = call i32* @listNext(i32* %2)
  store i32* %7, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = load i32*, i32** %1, align 8
  %11 = call %struct.TYPE_6__* @listNodeValue(i32* %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CLIENT_BLOCKED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %9
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = call i32 @sdsnew(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @addReplySds(%struct.TYPE_6__* %19, i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = call i32 @unblockClient(%struct.TYPE_6__* %22)
  %24 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %18, %9
  br label %6

30:                                               ; preds = %6
  ret void
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local %struct.TYPE_6__* @listNodeValue(i32*) #1

declare dso_local i32 @addReplySds(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @unblockClient(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
