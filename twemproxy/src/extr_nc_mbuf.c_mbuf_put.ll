; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_mbuf.c_mbuf_put.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_mbuf.c_mbuf_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i64, i64 }

@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"put mbuf %p len %d\00", align 1
@next = common dso_local global i32 0, align 4
@MBUF_MAGIC = common dso_local global i64 0, align 8
@nfree_mbufq = common dso_local global i32 0, align 4
@free_mbufq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbuf_put(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %3 = load i32, i32* @LOG_VVERB, align 4
  %4 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %6 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %9 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  %12 = call i32 @log_debug(i32 %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.mbuf* %4, i64 %11)
  %13 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %14 = load i32, i32* @next, align 4
  %15 = call i32* @STAILQ_NEXT(%struct.mbuf* %13, i32 %14)
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MBUF_MAGIC, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* @nfree_mbufq, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @nfree_mbufq, align 4
  %28 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %29 = load i32, i32* @next, align 4
  %30 = call i32 @STAILQ_INSERT_HEAD(i32* @free_mbufq, %struct.mbuf* %28, i32 %29)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.mbuf*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @STAILQ_NEXT(%struct.mbuf*, i32) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
