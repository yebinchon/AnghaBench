; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_div_2d.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_div_2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32 }

@MP_OKAY = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, %struct.TYPE_16__*, %struct.TYPE_16__*)* @mp_div_2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_div_2d(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_16__* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = call i32 @mp_copy(%struct.TYPE_16__* %22, %struct.TYPE_16__* %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %26 = icmp ne %struct.TYPE_16__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = call i32 @mp_zero(%struct.TYPE_16__* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %5, align 4
  br label %131

32:                                               ; preds = %4
  %33 = call i32 @mp_init(%struct.TYPE_16__* %15)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @MP_OKAY, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %5, align 4
  br label %131

38:                                               ; preds = %32
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = icmp ne %struct.TYPE_16__* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @mp_mod_2d(%struct.TYPE_16__* %42, i32 %43, %struct.TYPE_16__* %15)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* @MP_OKAY, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = call i32 @mp_clear(%struct.TYPE_16__* %15)
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %131

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %38
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = call i32 @mp_copy(%struct.TYPE_16__* %52, %struct.TYPE_16__* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* @MP_OKAY, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = call i32 @mp_clear(%struct.TYPE_16__* %15)
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %5, align 4
  br label %131

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @DIGIT_BIT, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @DIGIT_BIT, align 4
  %68 = sdiv i32 %66, %67
  %69 = call i32 @mp_rshd(%struct.TYPE_16__* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @DIGIT_BIT, align 4
  %73 = srem i32 %71, %72
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %120

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  %78 = shl i32 1, %77
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* @DIGIT_BIT, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %18, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  store i32* %91, i32** %16, align 8
  store i32 0, i32* %11, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %116, %76
  %97 = load i32, i32* %13, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %96
  %100 = load i32*, i32** %16, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %17, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %12, align 4
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %18, align 4
  %110 = shl i32 %108, %109
  %111 = or i32 %107, %110
  %112 = load i32*, i32** %16, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %16, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 -1
  store i32* %114, i32** %16, align 8
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %99
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %13, align 4
  br label %96

119:                                              ; preds = %96
  br label %120

120:                                              ; preds = %119, %70
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %122 = call i32 @mp_clamp(%struct.TYPE_16__* %121)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %124 = icmp ne %struct.TYPE_16__* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %127 = call i32 @mp_exch(%struct.TYPE_16__* %15, %struct.TYPE_16__* %126)
  br label %128

128:                                              ; preds = %125, %120
  %129 = call i32 @mp_clear(%struct.TYPE_16__* %15)
  %130 = load i32, i32* @MP_OKAY, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %128, %57, %47, %36, %30
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @mp_copy(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @mp_zero(%struct.TYPE_16__*) #1

declare dso_local i32 @mp_init(%struct.TYPE_16__*) #1

declare dso_local i32 @mp_mod_2d(%struct.TYPE_16__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @mp_clear(%struct.TYPE_16__*) #1

declare dso_local i32 @mp_rshd(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_16__*) #1

declare dso_local i32 @mp_exch(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
