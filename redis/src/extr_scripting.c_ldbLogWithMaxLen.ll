; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbLogWithMaxLen.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbLogWithMaxLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@ldb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"<hint> The above reply was trimmed. Use 'maxlen 0' to disable trimming.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldbLogWithMaxLen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @sdslen(i32 %7)
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 0), align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 0), align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i32 @sdsrange(i32 %12, i32 0, i64 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @sdscatlen(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 %17, i32* %2, align 4
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %11, %6, %1
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @ldbLog(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 1), align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ldb, i32 0, i32 1), align 8
  %27 = call i32 @sdsnew(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @ldbLog(i32 %27)
  br label %29

29:                                               ; preds = %26, %23, %18
  ret void
}

declare dso_local i64 @sdslen(i32) #1

declare dso_local i32 @sdsrange(i32, i32, i64) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @ldbLog(i32) #1

declare dso_local i32 @sdsnew(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
