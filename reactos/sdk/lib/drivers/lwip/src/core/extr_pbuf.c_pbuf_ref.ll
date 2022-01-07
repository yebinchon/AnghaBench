; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/extr_pbuf.c_pbuf_ref.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/extr_pbuf.c_pbuf_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32 }

@old_level = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pbuf_ref(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %2, align 8
  %3 = load i32, i32* @old_level, align 4
  %4 = call i32 @SYS_ARCH_DECL_PROTECT(i32 %3)
  %5 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %6 = icmp ne %struct.pbuf* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i32, i32* @old_level, align 4
  %9 = call i32 @SYS_ARCH_PROTECT(i32 %8)
  %10 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @old_level, align 4
  %15 = call i32 @SYS_ARCH_UNPROTECT(i32 %14)
  br label %16

16:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @SYS_ARCH_DECL_PROTECT(i32) #1

declare dso_local i32 @SYS_ARCH_PROTECT(i32) #1

declare dso_local i32 @SYS_ARCH_UNPROTECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
