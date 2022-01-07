; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_hooks.c_rasterLinkChangeCallback.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_hooks.c_rasterLinkChangeCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_SUBEVENT_MASTER_LINK_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"masterlink-up\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"masterlink-down\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rasterLinkChangeCallback(i32* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @REDISMODULE_NOT_USED(i8* %10)
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @REDISMODULE_NOT_USED(i8* %12)
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @REDISMODULE_SUBEVENT_MASTER_LINK_UP, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)
  store i8* %18, i8** %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @LogNumericEvent(i32* %19, i8* %20, i32 0)
  ret void
}

declare dso_local i32 @REDISMODULE_NOT_USED(i8*) #1

declare dso_local i32 @LogNumericEvent(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
