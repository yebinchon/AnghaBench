; ModuleID = '/home/carl/AnghaBench/redis/src/extr_notify.c_keyspaceEventsStringToFlags.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_notify.c_keyspaceEventsStringToFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOTIFY_ALL = common dso_local global i32 0, align 4
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@NOTIFY_STRING = common dso_local global i32 0, align 4
@NOTIFY_LIST = common dso_local global i32 0, align 4
@NOTIFY_SET = common dso_local global i32 0, align 4
@NOTIFY_HASH = common dso_local global i32 0, align 4
@NOTIFY_ZSET = common dso_local global i32 0, align 4
@NOTIFY_EXPIRED = common dso_local global i32 0, align 4
@NOTIFY_EVICTED = common dso_local global i32 0, align 4
@NOTIFY_KEYSPACE = common dso_local global i32 0, align 4
@NOTIFY_KEYEVENT = common dso_local global i32 0, align 4
@NOTIFY_STREAM = common dso_local global i32 0, align 4
@NOTIFY_KEY_MISS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keyspaceEventsStringToFlags(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %69, %1
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  %12 = sext i8 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %68 [
    i32 65, label %16
    i32 103, label %20
    i32 36, label %24
    i32 108, label %28
    i32 115, label %32
    i32 104, label %36
    i32 122, label %40
    i32 120, label %44
    i32 101, label %48
    i32 75, label %52
    i32 69, label %56
    i32 116, label %60
    i32 109, label %64
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @NOTIFY_ALL, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %69

20:                                               ; preds = %14
  %21 = load i32, i32* @NOTIFY_GENERIC, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %69

24:                                               ; preds = %14
  %25 = load i32, i32* @NOTIFY_STRING, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %69

28:                                               ; preds = %14
  %29 = load i32, i32* @NOTIFY_LIST, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %69

32:                                               ; preds = %14
  %33 = load i32, i32* @NOTIFY_SET, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %69

36:                                               ; preds = %14
  %37 = load i32, i32* @NOTIFY_HASH, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %69

40:                                               ; preds = %14
  %41 = load i32, i32* @NOTIFY_ZSET, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %69

44:                                               ; preds = %14
  %45 = load i32, i32* @NOTIFY_EXPIRED, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %69

48:                                               ; preds = %14
  %49 = load i32, i32* @NOTIFY_EVICTED, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %69

52:                                               ; preds = %14
  %53 = load i32, i32* @NOTIFY_KEYSPACE, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %69

56:                                               ; preds = %14
  %57 = load i32, i32* @NOTIFY_KEYEVENT, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %69

60:                                               ; preds = %14
  %61 = load i32, i32* @NOTIFY_STREAM, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %69

64:                                               ; preds = %14
  %65 = load i32, i32* @NOTIFY_KEY_MISS, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %69

68:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %72

69:                                               ; preds = %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  br label %8

70:                                               ; preds = %8
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
