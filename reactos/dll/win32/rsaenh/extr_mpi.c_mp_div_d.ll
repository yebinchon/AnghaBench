; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_div_d.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_div_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32, i32 }

@MP_VAL = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, %struct.TYPE_14__*, i32*)* @mp_div_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_div_d(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_14__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @MP_VAL, align 4
  store i32 %18, i32* %5, align 4
  br label %145

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = call i32 @mp_iszero(%struct.TYPE_14__* %23)
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %40

26:                                               ; preds = %22, %19
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32*, i32** %9, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = call i32 @mp_copy(%struct.TYPE_14__* %35, %struct.TYPE_14__* %36)
  store i32 %37, i32* %5, align 4
  br label %145

38:                                               ; preds = %31
  %39 = load i32, i32* @MP_OKAY, align 4
  store i32 %39, i32* %5, align 4
  br label %145

40:                                               ; preds = %22
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @s_is_power_of_two(i32 %41, i32* %14)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %40
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %14, align 4
  %54 = shl i32 1, %53
  %55 = sub nsw i32 %54, 1
  %56 = and i32 %52, %55
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %47, %44
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = icmp ne %struct.TYPE_14__* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = call i32 @mp_div_2d(%struct.TYPE_14__* %62, i32 %63, %struct.TYPE_14__* %64, i32* null)
  store i32 %65, i32* %5, align 4
  br label %145

66:                                               ; preds = %58
  %67 = load i32, i32* @MP_OKAY, align 4
  store i32 %67, i32* %5, align 4
  br label %145

68:                                               ; preds = %40
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mp_init_size(%struct.TYPE_14__* %10, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* @MP_OKAY, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %5, align 4
  br label %145

77:                                               ; preds = %68
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  store i32 %80, i32* %81, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %11, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %126, %77
  %91 = load i32, i32* %14, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = load i64, i64* @DIGIT_BIT, align 8
  %96 = trunc i64 %95 to i32
  %97 = shl i32 %94, %96
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %97, %104
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %93
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sdiv i32 %110, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %7, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %11, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %119

118:                                              ; preds = %93
  store i32 0, i32* %12, align 4
  br label %119

119:                                              ; preds = %118, %109
  %120 = load i32, i32* %12, align 4
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %120, i32* %125, align 4
  br label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %14, align 4
  br label %90

129:                                              ; preds = %90
  %130 = load i32*, i32** %9, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %11, align 4
  %134 = load i32*, i32** %9, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %129
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %137 = icmp ne %struct.TYPE_14__* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = call i32 @mp_clamp(%struct.TYPE_14__* %10)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %141 = call i32 @mp_exch(%struct.TYPE_14__* %10, %struct.TYPE_14__* %140)
  br label %142

142:                                              ; preds = %138, %135
  %143 = call i32 @mp_clear(%struct.TYPE_14__* %10)
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %142, %75, %66, %61, %38, %34, %17
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @mp_iszero(%struct.TYPE_14__*) #1

declare dso_local i32 @mp_copy(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i64 @s_is_power_of_two(i32, i32*) #1

declare dso_local i32 @mp_div_2d(%struct.TYPE_14__*, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @mp_init_size(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_14__*) #1

declare dso_local i32 @mp_exch(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @mp_clear(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
