; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_montgomery_calc_normalization.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_montgomery_calc_normalization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@DIGIT_BIT = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@MP_LT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_montgomery_calc_normalization(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = call i32 @mp_count_bits(%struct.TYPE_14__* %9)
  %11 = load i32, i32* @DIGIT_BIT, align 4
  %12 = srem i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @DIGIT_BIT, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @mp_2expt(%struct.TYPE_14__* %18, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @MP_OKAY, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %17
  br label %37

34:                                               ; preds = %2
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = call i32 @mp_set(%struct.TYPE_14__* %35, i32 1)
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %33
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %69, %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DIGIT_BIT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = call i32 @mp_mul_2(%struct.TYPE_14__* %45, %struct.TYPE_14__* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @MP_OKAY, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %74

52:                                               ; preds = %44
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = call i64 @mp_cmp_mag(%struct.TYPE_14__* %53, %struct.TYPE_14__* %54)
  %56 = load i64, i64* @MP_LT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = call i32 @s_mp_sub(%struct.TYPE_14__* %59, %struct.TYPE_14__* %60, %struct.TYPE_14__* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @MP_OKAY, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %74

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %40

72:                                               ; preds = %40
  %73 = load i32, i32* @MP_OKAY, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %65, %50, %31
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @mp_count_bits(%struct.TYPE_14__*) #1

declare dso_local i32 @mp_2expt(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @mp_set(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @mp_mul_2(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i64 @mp_cmp_mag(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @s_mp_sub(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
