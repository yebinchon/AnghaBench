; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveKeyValuePair.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveKeyValuePair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAXMEMORY_FLAG_LRU = common dso_local global i32 0, align 4
@MAXMEMORY_FLAG_LFU = common dso_local global i32 0, align 4
@RDB_OPCODE_EXPIRETIME_MS = common dso_local global i32 0, align 4
@RDB_OPCODE_IDLE = common dso_local global i32 0, align 4
@RDB_OPCODE_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveKeyValuePair(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x i32], align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %15 = load i32, i32* @MAXMEMORY_FLAG_LRU, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %18 = load i32, i32* @MAXMEMORY_FLAG_LFU, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, -1
  br i1 %21, label %22, label %35

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @RDB_OPCODE_EXPIRETIME_MS, align 4
  %25 = call i32 @rdbSaveType(i32* %23, i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %100

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @rdbSaveMillisecondTime(i32* %29, i64 %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %100

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @estimateObjectIdleTime(i32* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sdiv i32 %41, 1000
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @RDB_OPCODE_IDLE, align 4
  %45 = call i32 @rdbSaveType(i32* %43, i32 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %100

48:                                               ; preds = %38
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @rdbSaveLen(i32* %49, i32 %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %100

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %55
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @LFUDecrAndReturn(i32* %59)
  %61 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @RDB_OPCODE_FREQ, align 4
  %64 = call i32 @rdbSaveType(i32* %62, i32 %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 -1, i32* %5, align 4
  br label %100

67:                                               ; preds = %58
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %70 = call i32 @rdbWriteRaw(i32* %68, i32* %69, i32 1)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 -1, i32* %5, align 4
  br label %100

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %55
  %75 = load i32*, i32** %6, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @rdbSaveObjectType(i32* %75, i32* %76)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 -1, i32* %5, align 4
  br label %100

80:                                               ; preds = %74
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @rdbSaveStringObject(i32* %81, i32* %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 -1, i32* %5, align 4
  br label %100

86:                                               ; preds = %80
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @rdbSaveObject(i32* %87, i32* %88, i32* %89)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 -1, i32* %5, align 4
  br label %100

93:                                               ; preds = %86
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %98 = call i32 @usleep(i64 %97)
  br label %99

99:                                               ; preds = %96, %93
  store i32 1, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %92, %85, %79, %72, %66, %53, %47, %33, %27
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @rdbSaveType(i32*, i32) #1

declare dso_local i32 @rdbSaveMillisecondTime(i32*, i64) #1

declare dso_local i32 @estimateObjectIdleTime(i32*) #1

declare dso_local i32 @rdbSaveLen(i32*, i32) #1

declare dso_local i32 @LFUDecrAndReturn(i32*) #1

declare dso_local i32 @rdbWriteRaw(i32*, i32*, i32) #1

declare dso_local i32 @rdbSaveObjectType(i32*, i32*) #1

declare dso_local i32 @rdbSaveStringObject(i32*, i32*) #1

declare dso_local i32 @rdbSaveObject(i32*, i32*, i32*) #1

declare dso_local i32 @usleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
