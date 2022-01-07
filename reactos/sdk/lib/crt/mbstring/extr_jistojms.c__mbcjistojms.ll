; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_jistojms.c__mbcjistojms.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_jistojms.c__mbcjistojms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_mbcjistojms(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call %struct.TYPE_2__* (...) @get_mbcinfo()
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 932
  br i1 %7, label %8, label %61

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @HIBYTE(i32 %9)
  %11 = icmp sge i32 %10, 33
  br i1 %11, label %12, label %59

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @HIBYTE(i32 %13)
  %15 = icmp sle i32 %14, 126
  br i1 %15, label %16, label %59

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @LOBYTE(i32 %17)
  %19 = icmp sge i32 %18, 33
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @LOBYTE(i32 %21)
  %23 = icmp sle i32 %22, 126
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @HIBYTE(i32 %25)
  %27 = srem i32 %26, 2
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 31
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 125
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @LOBYTE(i32 %36)
  %38 = icmp sge i32 %37, 127
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @HIBYTE(i32 %43)
  %45 = sub nsw i32 %44, 33
  %46 = sdiv i32 %45, 2
  %47 = add nsw i32 %46, 129
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @LOBYTE(i32 %49)
  %51 = or i32 %48, %50
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @HIBYTE(i32 %52)
  %54 = icmp sgt i32 %53, 159
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* %3, align 4
  %57 = add i32 %56, 16384
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %42
  br label %60

59:                                               ; preds = %20, %16, %12, %8
  store i32 0, i32* %2, align 4
  br label %63

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60, %1
  %62 = load i32, i32* %3, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_2__* @get_mbcinfo(...) #1

declare dso_local i32 @HIBYTE(i32) #1

declare dso_local i32 @LOBYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
