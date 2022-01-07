; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_mul.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }

@MP_ZPOS = common dso_local global i32 0, align 4
@MP_NEG = common dso_local global i32 0, align 4
@KARATSUBA_MUL_CUTOFF = common dso_local global i32 0, align 4
@MP_WARRAY = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_mul(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MP_ZPOS, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @MP_NEG, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @MIN(i32 %25, i32 %28)
  %30 = load i32, i32* @KARATSUBA_MUL_CUTOFF, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = call i32 @mp_karatsuba_mul(%struct.TYPE_14__* %33, %struct.TYPE_14__* %34, %struct.TYPE_14__* %35)
  store i32 %36, i32* %7, align 4
  br label %79

37:                                               ; preds = %21
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %40, %43
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @MP_WARRAY, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %37
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @MIN(i32 %52, i32 %55)
  %57 = load i32, i32* @CHAR_BIT, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = load i32, i32* @DIGIT_BIT, align 4
  %61 = mul nsw i32 2, %60
  %62 = sext i32 %61 to i64
  %63 = sub i64 %59, %62
  %64 = trunc i64 %63 to i32
  %65 = shl i32 1, %64
  %66 = icmp sle i32 %56, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %49
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @fast_s_mp_mul_digs(%struct.TYPE_14__* %68, %struct.TYPE_14__* %69, %struct.TYPE_14__* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %78

73:                                               ; preds = %49, %37
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = call i32 @s_mp_mul(%struct.TYPE_14__* %74, %struct.TYPE_14__* %75, %struct.TYPE_14__* %76)
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %73, %67
  br label %79

79:                                               ; preds = %78, %32
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  br label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @MP_ZPOS, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = sext i32 %89 to i64
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @mp_karatsuba_mul(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @fast_s_mp_mul_digs(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @s_mp_mul(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
