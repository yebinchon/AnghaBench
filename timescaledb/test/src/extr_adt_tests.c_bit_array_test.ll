; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/extr_adt_tests.c_bit_array_test.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/extr_adt_tests.c_bit_array_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bit_array_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bit_array_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @bit_array_init(i32* %1)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %12, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 65
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @bit_array_append(i32* %1, i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %5

15:                                               ; preds = %5
  %16 = call i32 @bit_array_append(i32* %1, i32 0, i32 0)
  %17 = call i32 @bit_array_append(i32* %1, i32 0, i32 0)
  %18 = call i32 @bit_array_append(i32* %1, i32 64, i32 151031952)
  %19 = call i32 @bit_array_append(i32* %1, i32 1, i32 0)
  %20 = call i32 @bit_array_append(i32* %1, i32 64, i32 -151031953)
  %21 = call i32 @bit_array_append(i32* %1, i32 1, i32 1)
  %22 = call i32 @bit_array_iterator_init(i32* %2, i32* %1)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %31, %15
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 65
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @bit_array_iter_next(i32* %2, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @AssertInt64Eq(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %23

34:                                               ; preds = %23
  %35 = call i32 @bit_array_iter_next(i32* %2, i32 0)
  %36 = call i32 @AssertInt64Eq(i32 %35, i32 0)
  %37 = call i32 @bit_array_iter_next(i32* %2, i32 0)
  %38 = call i32 @AssertInt64Eq(i32 %37, i32 0)
  %39 = call i32 @bit_array_iter_next(i32* %2, i32 64)
  %40 = call i32 @AssertInt64Eq(i32 %39, i32 151031952)
  %41 = call i32 @bit_array_iter_next(i32* %2, i32 1)
  %42 = call i32 @AssertInt64Eq(i32 %41, i32 0)
  %43 = call i32 @bit_array_iter_next(i32* %2, i32 64)
  %44 = call i32 @AssertInt64Eq(i32 %43, i32 -151031953)
  %45 = call i32 @bit_array_iter_next(i32* %2, i32 1)
  %46 = call i32 @AssertInt64Eq(i32 %45, i32 1)
  %47 = call i32 @bit_array_iterator_init_rev(i32* %2, i32* %1)
  %48 = call i32 @bit_array_iter_next_rev(i32* %2, i32 1)
  %49 = call i32 @AssertInt64Eq(i32 %48, i32 1)
  %50 = call i32 @bit_array_iter_next_rev(i32* %2, i32 64)
  %51 = call i32 @AssertInt64Eq(i32 %50, i32 -151031953)
  %52 = call i32 @bit_array_iter_next_rev(i32* %2, i32 1)
  %53 = call i32 @AssertInt64Eq(i32 %52, i32 0)
  %54 = call i32 @bit_array_iter_next_rev(i32* %2, i32 64)
  %55 = call i32 @AssertInt64Eq(i32 %54, i32 151031952)
  %56 = call i32 @bit_array_iter_next_rev(i32* %2, i32 0)
  %57 = call i32 @AssertInt64Eq(i32 %56, i32 0)
  %58 = call i32 @bit_array_iter_next_rev(i32* %2, i32 0)
  %59 = call i32 @AssertInt64Eq(i32 %58, i32 0)
  store i32 64, i32* %3, align 4
  br label %60

60:                                               ; preds = %68, %34
  %61 = load i32, i32* %3, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @bit_array_iter_next_rev(i32* %2, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @AssertInt64Eq(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %3, align 4
  br label %60

71:                                               ; preds = %60
  ret void
}

declare dso_local i32 @bit_array_init(i32*) #1

declare dso_local i32 @bit_array_append(i32*, i32, i32) #1

declare dso_local i32 @bit_array_iterator_init(i32*, i32*) #1

declare dso_local i32 @AssertInt64Eq(i32, i32) #1

declare dso_local i32 @bit_array_iter_next(i32*, i32) #1

declare dso_local i32 @bit_array_iterator_init_rev(i32*, i32*) #1

declare dso_local i32 @bit_array_iter_next_rev(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
