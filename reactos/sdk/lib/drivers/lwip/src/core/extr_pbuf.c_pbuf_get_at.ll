; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/extr_pbuf.c_pbuf_get_at.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/extr_pbuf.c_pbuf_get_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, i64, %struct.pbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pbuf_get_at(%struct.pbuf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pbuf*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  store %struct.pbuf* %9, %struct.pbuf** %7, align 8
  br label %10

10:                                               ; preds = %21, %2
  %11 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %12 = icmp ne %struct.pbuf* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ule i64 %16, %17
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i1 [ false, %10 ], [ %18, %13 ]
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i32 0, i32 2
  %29 = load %struct.pbuf*, %struct.pbuf** %28, align 8
  store %struct.pbuf* %29, %struct.pbuf** %7, align 8
  br label %10

30:                                               ; preds = %19
  %31 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %32 = icmp ne %struct.pbuf* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.pbuf*, %struct.pbuf** %7, align 8
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %33, %30
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
