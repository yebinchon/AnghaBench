; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/extr_pbuf.c_pbuf_memcmp.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/extr_pbuf.c_pbuf_memcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64, %struct.pbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pbuf_memcmp(%struct.pbuf* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.pbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pbuf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pbuf* %0, %struct.pbuf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  store %struct.pbuf* %16, %struct.pbuf** %11, align 8
  br label %17

17:                                               ; preds = %28, %4
  %18 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %19 = icmp ne %struct.pbuf* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp sle i64 %23, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  %29 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub nsw i64 %32, %31
  store i64 %33, i64* %10, align 8
  %34 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %34, i32 0, i32 1
  %36 = load %struct.pbuf*, %struct.pbuf** %35, align 8
  store %struct.pbuf* %36, %struct.pbuf** %11, align 8
  br label %17

37:                                               ; preds = %26
  %38 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %39 = icmp ne %struct.pbuf* %38, null
  br i1 %39, label %40, label %73

40:                                               ; preds = %37
  %41 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %42 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %40
  store i64 0, i64* %12, align 8
  br label %47

47:                                               ; preds = %69, %46
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i64 @pbuf_get_at(%struct.pbuf* %52, i64 %55)
  store i64 %56, i64* %13, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = bitcast i8* %57 to i64*
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load i64, i64* %12, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %74

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %12, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %12, align 8
  br label %47

72:                                               ; preds = %47
  store i64 0, i64* %5, align 8
  br label %74

73:                                               ; preds = %40, %37
  store i64 65535, i64* %5, align 8
  br label %74

74:                                               ; preds = %73, %72, %65
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local i64 @pbuf_get_at(%struct.pbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
