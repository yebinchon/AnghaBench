; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_connectWithMaster.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_connectWithMaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32, i32, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NET_FIRST_BIND_ADDR = common dso_local global i32 0, align 4
@syncWithMaster = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to connect to MASTER: %s\00", align 1
@REPL_STATE_CONNECTING = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connectWithMaster() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32* (...) @connCreateTLS()
  br label %8

6:                                                ; preds = %0
  %7 = call i32* (...) @connCreateSocket()
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32* [ %5, %4 ], [ %7, %6 ]
  store i32* %9, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %13 = load i32, i32* @NET_FIRST_BIND_ADDR, align 4
  %14 = load i32, i32* @syncWithMaster, align 4
  %15 = call i64 @connConnect(i32* %10, i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load i64, i64* @C_ERR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %8
  %19 = load i32, i32* @LL_WARNING, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %21 = call i32 @connGetLastError(i32* %20)
  %22 = call i32 @serverLog(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %24 = call i32 @connClose(i32* %23)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %25 = load i64, i64* @C_ERR, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %1, align 4
  br label %31

27:                                               ; preds = %8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %29 = load i32, i32* @REPL_STATE_CONNECTING, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %30 = load i32, i32* @C_OK, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %27, %18
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32* @connCreateTLS(...) #1

declare dso_local i32* @connCreateSocket(...) #1

declare dso_local i64 @connConnect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @connGetLastError(i32*) #1

declare dso_local i32 @connClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
