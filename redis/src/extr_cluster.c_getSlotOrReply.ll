; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_getSlotOrReply.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_getSlotOrReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_OK = common dso_local global i64 0, align 8
@CLUSTER_SLOTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Invalid or out of range slot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getSlotOrReply(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i64 @getLongLongFromObject(i32* %7, i64* %6)
  %9 = load i64, i64* @C_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @CLUSTER_SLOTS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %11, %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @addReplyError(i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @getLongLongFromObject(i32*, i64*) #1

declare dso_local i32 @addReplyError(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
