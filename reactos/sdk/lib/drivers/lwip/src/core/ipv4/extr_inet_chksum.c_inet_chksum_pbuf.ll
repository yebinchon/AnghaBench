; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/ipv4/extr_inet_chksum.c_inet_chksum_pbuf.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/ipv4/extr_inet_chksum.c_inet_chksum_pbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32, i32, %struct.pbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_chksum_pbuf(%struct.pbuf* %0) #0 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca i64, align 8
  store %struct.pbuf* %0, %struct.pbuf** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  store %struct.pbuf* %6, %struct.pbuf** %4, align 8
  br label %7

7:                                                ; preds = %35, %1
  %8 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %9 = icmp ne %struct.pbuf* %8, null
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @LWIP_CHKSUM(i32 %13, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @FOLD_U32T(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = srem i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %10
  %30 = load i64, i64* %5, align 8
  %31 = sub nsw i64 1, %30
  store i64 %31, i64* %5, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @SWAP_BYTES_IN_WORD(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %10
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %36, i32 0, i32 2
  %38 = load %struct.pbuf*, %struct.pbuf** %37, align 8
  store %struct.pbuf* %38, %struct.pbuf** %4, align 8
  br label %7

39:                                               ; preds = %7
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @SWAP_BYTES_IN_WORD(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = and i64 %47, 65535
  %49 = xor i64 %48, -1
  %50 = trunc i64 %49 to i32
  ret i32 %50
}

declare dso_local i64 @LWIP_CHKSUM(i32, i32) #1

declare dso_local i32 @FOLD_U32T(i32) #1

declare dso_local i32 @SWAP_BYTES_IN_WORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
