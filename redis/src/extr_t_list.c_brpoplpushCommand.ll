; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_list.c_brpoplpushCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_list.c_brpoplpushCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32*, i32 }
%struct.TYPE_14__ = type { i64 }

@UNIT_SECONDS = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@CLIENT_MULTI = common dso_local global i32 0, align 4
@BLOCKED_LIST = common dso_local global i32 0, align 4
@OBJ_LIST = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brpoplpushCommand(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UNIT_SECONDS, align 4
  %12 = call i64 @getTimeoutFromObjectOrReply(%struct.TYPE_15__* %5, i32 %10, i32* %3, i32 %11)
  %13 = load i64, i64* @C_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %74

16:                                               ; preds = %1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_14__* @lookupKeyWrite(i32 %19, i32 %24)
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %4, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = icmp eq %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %16
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CLIENT_MULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = call i32 @addReplyNull(%struct.TYPE_15__* %36)
  br label %52

38:                                               ; preds = %28
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = load i32, i32* @BLOCKED_LIST, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @blockForKeys(%struct.TYPE_15__* %39, i32 %40, i32* %44, i32 1, i32 %45, i32 %50, i32* null)
  br label %52

52:                                               ; preds = %38, %35
  br label %74

53:                                               ; preds = %16
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @OBJ_LIST, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shared, i32 0, i32 0), align 4
  %62 = call i32 @addReply(%struct.TYPE_15__* %60, i32 %61)
  br label %73

63:                                               ; preds = %53
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = call i64 @listTypeLength(%struct.TYPE_14__* %66)
  %68 = icmp sgt i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @serverAssertWithInfo(%struct.TYPE_15__* %64, %struct.TYPE_14__* %65, i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %72 = call i32 @rpoplpushCommand(%struct.TYPE_15__* %71)
  br label %73

73:                                               ; preds = %63, %59
  br label %74

74:                                               ; preds = %15, %73, %52
  ret void
}

declare dso_local i64 @getTimeoutFromObjectOrReply(%struct.TYPE_15__*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_14__* @lookupKeyWrite(i32, i32) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_15__*) #1

declare dso_local i32 @blockForKeys(%struct.TYPE_15__*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @addReply(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @serverAssertWithInfo(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @listTypeLength(%struct.TYPE_14__*) #1

declare dso_local i32 @rpoplpushCommand(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
