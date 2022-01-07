; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_luaMaskCountHook.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_luaMaskCountHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i64, i32, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [151 x i8] c"Lua slow script detected: still in execution after %lld milliseconds. You can try killing the script using the SCRIPT KILL command. Script SHA1 is: %s\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Lua script killed by user with SCRIPT KILL.\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Script killed by user with SCRIPT KILL...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaMaskCountHook(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call i64 (...) @mstime()
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %8 = sub nsw i64 %6, %7
  store i64 %8, i64* %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @UNUSED(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @UNUSED(i32* %11)
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* @LL_WARNING, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 4
  %23 = call i32 (i32, i8*, ...) @serverLog(i32 %20, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %22)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %25 = call i32 @protectClient(i32 %24)
  br label %26

26:                                               ; preds = %19, %16, %2
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (...) @processEventsWhileBlocked()
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* @LL_WARNING, align 4
  %36 = call i32 (i32, i8*, ...) @serverLog(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_pushstring(i32* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @lua_error(i32* %39)
  br label %41

41:                                               ; preds = %34, %31
  ret void
}

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @protectClient(i32) #1

declare dso_local i32 @processEventsWhileBlocked(...) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
