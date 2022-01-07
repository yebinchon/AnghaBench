; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_databasesCron.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_databasesCron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32*, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ACTIVE_EXPIRE_CYCLE_SLOW = common dso_local global i32 0, align 4
@databasesCron.resize_db = internal global i32 0, align 4
@databasesCron.rehash_db = internal global i32 0, align 4
@CRON_DBS_PER_CALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @databasesCron() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @ACTIVE_EXPIRE_CYCLE_SLOW, align 4
  %11 = call i32 @activeExpireCycle(i32 %10)
  br label %14

12:                                               ; preds = %6
  %13 = call i32 (...) @expireSlaveKeys()
  br label %14

14:                                               ; preds = %12, %9
  br label %15

15:                                               ; preds = %14, %0
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @activeDefragCycle()
  br label %20

20:                                               ; preds = %18, %15
  %21 = call i32 (...) @hasActiveChildProcess()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @CRON_DBS_PER_CALL, align 4
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %28, %23
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32, i32* @databasesCron.resize_db, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %38 = urem i32 %36, %37
  %39 = call i32 @tryResizeHashTables(i32 %38)
  %40 = load i32, i32* @databasesCron.resize_db, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* @databasesCron.resize_db, align 4
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %31

45:                                               ; preds = %31
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %1, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i32, i32* @databasesCron.rehash_db, align 4
  %55 = call i32 @incrementallyRehash(i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %69

59:                                               ; preds = %53
  %60 = load i32, i32* @databasesCron.rehash_db, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* @databasesCron.rehash_db, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %63 = load i32, i32* @databasesCron.rehash_db, align 4
  %64 = urem i32 %63, %62
  store i32 %64, i32* @databasesCron.rehash_db, align 4
  br label %65

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %49

69:                                               ; preds = %58, %49
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %20
  ret void
}

declare dso_local i32 @activeExpireCycle(i32) #1

declare dso_local i32 @expireSlaveKeys(...) #1

declare dso_local i32 @activeDefragCycle(...) #1

declare dso_local i32 @hasActiveChildProcess(...) #1

declare dso_local i32 @tryResizeHashTables(i32) #1

declare dso_local i32 @incrementallyRehash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
