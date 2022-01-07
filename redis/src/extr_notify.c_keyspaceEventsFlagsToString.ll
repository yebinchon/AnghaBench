; ModuleID = '/home/carl/AnghaBench/redis/src/extr_notify.c_keyspaceEventsFlagsToString.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_notify.c_keyspaceEventsFlagsToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOTIFY_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@NOTIFY_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@NOTIFY_LIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@NOTIFY_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@NOTIFY_HASH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@NOTIFY_ZSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@NOTIFY_EXPIRED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@NOTIFY_EVICTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@NOTIFY_STREAM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@NOTIFY_KEY_MISS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@NOTIFY_KEYSPACE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@NOTIFY_KEYEVENT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"E\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keyspaceEventsFlagsToString(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @sdsempty()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @NOTIFY_ALL, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @NOTIFY_ALL, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @sdscatlen(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %12, i32* %3, align 4
  br label %94

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @NOTIFY_GENERIC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @sdscatlen(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @NOTIFY_STRING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @sdscatlen(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @NOTIFY_LIST, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @sdscatlen(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @NOTIFY_SET, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @sdscatlen(i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @NOTIFY_HASH, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @sdscatlen(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @NOTIFY_ZSET, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @sdscatlen(i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @NOTIFY_EXPIRED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @sdscatlen(i32 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @NOTIFY_EVICTED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @sdscatlen(i32 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @NOTIFY_STREAM, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @sdscatlen(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 1)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @NOTIFY_KEY_MISS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @sdscatlen(i32 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 1)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %85
  br label %94

94:                                               ; preds = %93, %10
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @NOTIFY_KEYSPACE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @sdscatlen(i32 %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 1)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* @NOTIFY_KEYEVENT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @sdscatlen(i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 1)
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
