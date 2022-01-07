; ModuleID = '/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfigNotifykeyspaceeventsOption.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_config.c_rewriteConfigNotifykeyspaceeventsOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.rewriteConfigState = type { i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"notify-keyspace-events\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewriteConfigNotifykeyspaceeventsOption(%struct.rewriteConfigState* %0) #0 {
  %2 = alloca %struct.rewriteConfigState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rewriteConfigState* %0, %struct.rewriteConfigState** %2, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %3, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %11 = call i32 @keyspaceEventsFlagsToString(i64 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @sdsnew(i8* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @sdscatlen(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @sdslen(i32 %18)
  %20 = call i32 @sdscatrepr(i32 %16, i32 %17, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @sdsfree(i32 %21)
  %23 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState* %23, i8* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @keyspaceEventsFlagsToString(i64) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @sdscatrepr(i32, i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @rewriteConfigRewriteLine(%struct.rewriteConfigState*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
