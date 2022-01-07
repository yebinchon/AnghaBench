; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_mbuf.c_mbuf_init.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_mbuf.c_mbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instance = type { i64 }

@nfree_mbufq = common dso_local global i64 0, align 8
@free_mbufq = common dso_local global i32 0, align 4
@mbuf_chunk_size = common dso_local global i64 0, align 8
@MBUF_HSIZE = common dso_local global i64 0, align 8
@mbuf_offset = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"mbuf hsize %d chunk size %zu offset %zu length %zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbuf_init(%struct.instance* %0) #0 {
  %2 = alloca %struct.instance*, align 8
  store %struct.instance* %0, %struct.instance** %2, align 8
  store i64 0, i64* @nfree_mbufq, align 8
  %3 = call i32 @STAILQ_INIT(i32* @free_mbufq)
  %4 = load %struct.instance*, %struct.instance** %2, align 8
  %5 = getelementptr inbounds %struct.instance, %struct.instance* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* @mbuf_chunk_size, align 8
  %7 = load i64, i64* @mbuf_chunk_size, align 8
  %8 = load i64, i64* @MBUF_HSIZE, align 8
  %9 = sub nsw i64 %7, %8
  store i64 %9, i64* @mbuf_offset, align 8
  %10 = load i32, i32* @LOG_DEBUG, align 4
  %11 = load i64, i64* @MBUF_HSIZE, align 8
  %12 = load i64, i64* @mbuf_chunk_size, align 8
  %13 = load i64, i64* @mbuf_offset, align 8
  %14 = load i64, i64* @mbuf_offset, align 8
  %15 = call i32 @log_debug(i32 %10, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %12, i64 %13, i64 %14)
  ret void
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @log_debug(i32, i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
