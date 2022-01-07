; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_mbuf.c_mbuf_free.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_mbuf.c_mbuf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i64, i64 }

@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"put mbuf %p len %d\00", align 1
@next = common dso_local global i32 0, align 4
@MBUF_MAGIC = common dso_local global i64 0, align 8
@mbuf_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*)* @mbuf_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbuf_free(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca i32*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %4 = load i32, i32* @LOG_VVERB, align 4
  %5 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %7 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  %13 = call i32 @log_debug(i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.mbuf* %5, i64 %12)
  %14 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %15 = load i32, i32* @next, align 4
  %16 = call i32* @STAILQ_NEXT(%struct.mbuf* %14, i32 %15)
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MBUF_MAGIC, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %28 = bitcast %struct.mbuf* %27 to i32*
  %29 = load i32, i32* @mbuf_offset, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32* %32, i32** %3, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @nc_free(i32* %33)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.mbuf*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @STAILQ_NEXT(%struct.mbuf*, i32) #1

declare dso_local i32 @nc_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
