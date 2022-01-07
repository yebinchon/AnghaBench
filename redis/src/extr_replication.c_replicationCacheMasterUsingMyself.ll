; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_replicationCacheMasterUsingMyself.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_replicationCacheMasterUsingMyself.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [168 x i8] c"Before turning into a replica, using my master parameters to synthesize a cached master: I may be able to synchronize with the new master with just a partial transfer.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replicationCacheMasterUsingMyself() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 3), align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 4), align 8
  %2 = call i32 @replicationCreateMasterClient(i32* null, i32 -1)
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 2), align 8
  %7 = call i32 @memcpy(i32 %5, i32 %6, i32 4)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %9 = call i32 @unlinkClient(%struct.TYPE_3__* %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1), align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %11 = load i32, i32* @LL_NOTICE, align 4
  %12 = call i32 @serverLog(i32 %11, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @replicationCreateMasterClient(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @unlinkClient(%struct.TYPE_3__*) #1

declare dso_local i32 @serverLog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
