; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_reduce.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32 }

@MP_OKAY = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i32 0, align 4
@MP_LT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_reduce(%struct.TYPE_34__* %0, %struct.TYPE_34__* %1, %struct.TYPE_34__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_34__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %5, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %6, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %7, align 8
  %11 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %15 = call i32 @mp_init_copy(%struct.TYPE_34__* %8, %struct.TYPE_34__* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @MP_OKAY, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %117

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @mp_rshd(%struct.TYPE_34__* %8, i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* @DIGIT_BIT, align 4
  %27 = sub nsw i32 %26, 1
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = icmp ugt i64 %25, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %33 = call i32 @mp_mul(%struct.TYPE_34__* %8, %struct.TYPE_34__* %32, %struct.TYPE_34__* %8)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @MP_OKAY, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %114

37:                                               ; preds = %31
  br label %47

38:                                               ; preds = %20
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @s_mp_mul_high_digs(%struct.TYPE_34__* %8, %struct.TYPE_34__* %39, %struct.TYPE_34__* %8, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* @MP_OKAY, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %114

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @mp_rshd(%struct.TYPE_34__* %8, i32 %49)
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %52 = load i32, i32* @DIGIT_BIT, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  %55 = mul nsw i32 %52, %54
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %57 = call i32 @mp_mod_2d(%struct.TYPE_34__* %51, i32 %55, %struct.TYPE_34__* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @MP_OKAY, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %114

61:                                               ; preds = %47
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @s_mp_mul_digs(%struct.TYPE_34__* %8, %struct.TYPE_34__* %62, %struct.TYPE_34__* %8, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @MP_OKAY, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %114

69:                                               ; preds = %61
  %70 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %72 = call i32 @mp_sub(%struct.TYPE_34__* %70, %struct.TYPE_34__* %8, %struct.TYPE_34__* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @MP_OKAY, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %114

76:                                               ; preds = %69
  %77 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %78 = call i64 @mp_cmp_d(%struct.TYPE_34__* %77, i32 0)
  %79 = load i64, i64* @MP_LT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = call i32 @mp_set(%struct.TYPE_34__* %8, i32 1)
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @mp_lshd(%struct.TYPE_34__* %8, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* @MP_OKAY, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %114

89:                                               ; preds = %81
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %92 = call i32 @mp_add(%struct.TYPE_34__* %90, %struct.TYPE_34__* %8, %struct.TYPE_34__* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @MP_OKAY, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %114

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %76
  br label %98

98:                                               ; preds = %112, %97
  %99 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %100 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %101 = call i64 @mp_cmp(%struct.TYPE_34__* %99, %struct.TYPE_34__* %100)
  %102 = load i64, i64* @MP_LT, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %108 = call i32 @s_mp_sub(%struct.TYPE_34__* %105, %struct.TYPE_34__* %106, %struct.TYPE_34__* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* @MP_OKAY, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %114

112:                                              ; preds = %104
  br label %98

113:                                              ; preds = %98
  br label %114

114:                                              ; preds = %113, %111, %95, %88, %75, %68, %60, %45, %36
  %115 = call i32 @mp_clear(%struct.TYPE_34__* %8)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %114, %18
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @mp_init_copy(%struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @mp_rshd(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @mp_mul(%struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @s_mp_mul_high_digs(%struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @mp_mod_2d(%struct.TYPE_34__*, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @s_mp_mul_digs(%struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @mp_sub(%struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i64 @mp_cmp_d(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @mp_set(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @mp_lshd(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @mp_add(%struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i64 @mp_cmp(%struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @s_mp_sub(%struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @mp_clear(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
