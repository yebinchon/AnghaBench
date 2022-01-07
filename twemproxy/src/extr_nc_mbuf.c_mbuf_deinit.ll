; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_mbuf.c_mbuf_deinit.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_mbuf.c_mbuf_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

@free_mbufq = common dso_local global i32 0, align 4
@nfree_mbufq = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbuf_deinit() #0 {
  %1 = alloca %struct.mbuf*, align 8
  br label %2

2:                                                ; preds = %6, %0
  %3 = call i32 @STAILQ_EMPTY(i32* @free_mbufq)
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = call %struct.mbuf* @STAILQ_FIRST(i32* @free_mbufq)
  store %struct.mbuf* %7, %struct.mbuf** %1, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %1, align 8
  %9 = call i32 @mbuf_remove(i32* @free_mbufq, %struct.mbuf* %8)
  %10 = load %struct.mbuf*, %struct.mbuf** %1, align 8
  %11 = call i32 @mbuf_free(%struct.mbuf* %10)
  %12 = load i64, i64* @nfree_mbufq, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* @nfree_mbufq, align 8
  br label %2

14:                                               ; preds = %2
  %15 = load i64, i64* @nfree_mbufq, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  ret void
}

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.mbuf* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @mbuf_remove(i32*, %struct.mbuf*) #1

declare dso_local i32 @mbuf_free(%struct.mbuf*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
