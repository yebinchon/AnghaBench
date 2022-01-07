; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_fast_mp_invmod.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_fast_mp_invmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32 }

@MP_VAL = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@MP_LT = common dso_local global i64 0, align 8
@MP_EQ = common dso_local global i64 0, align 8
@MP_NEG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*)* @fast_mp_invmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_mp_invmod(%struct.TYPE_38__* %0, %struct.TYPE_38__* %1, %struct.TYPE_38__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_38__, align 4
  %9 = alloca %struct.TYPE_38__, align 4
  %10 = alloca %struct.TYPE_38__, align 4
  %11 = alloca %struct.TYPE_38__, align 4
  %12 = alloca %struct.TYPE_38__, align 4
  %13 = alloca %struct.TYPE_38__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %5, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %6, align 8
  store %struct.TYPE_38__* %2, %struct.TYPE_38__** %7, align 8
  %16 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %17 = call i32 @mp_iseven(%struct.TYPE_38__* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @MP_VAL, align 4
  store i32 %20, i32* %4, align 4
  br label %162

21:                                               ; preds = %3
  %22 = call i32 @mp_init_multi(%struct.TYPE_38__* %8, %struct.TYPE_38__* %9, %struct.TYPE_38__* %10, %struct.TYPE_38__* %11, %struct.TYPE_38__* %12, %struct.TYPE_38__* %13, i32* null)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @MP_OKAY, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %4, align 4
  br label %162

27:                                               ; preds = %21
  %28 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %29 = call i32 @mp_copy(%struct.TYPE_38__* %28, %struct.TYPE_38__* %8)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @MP_OKAY, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %159

33:                                               ; preds = %27
  %34 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %35 = call i32 @mp_abs(%struct.TYPE_38__* %34, %struct.TYPE_38__* %9)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* @MP_OKAY, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %159

39:                                               ; preds = %33
  %40 = call i32 @mp_copy(%struct.TYPE_38__* %8, %struct.TYPE_38__* %10)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @MP_OKAY, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %159

44:                                               ; preds = %39
  %45 = call i32 @mp_copy(%struct.TYPE_38__* %9, %struct.TYPE_38__* %11)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @MP_OKAY, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %159

49:                                               ; preds = %44
  %50 = call i32 @mp_set(%struct.TYPE_38__* %13, i32 1)
  br label %51

51:                                               ; preds = %128, %49
  br label %52

52:                                               ; preds = %74, %51
  %53 = call i32 @mp_iseven(%struct.TYPE_38__* %10)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = call i32 @mp_div_2(%struct.TYPE_38__* %10, %struct.TYPE_38__* %10)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* @MP_OKAY, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %159

60:                                               ; preds = %55
  %61 = call i32 @mp_isodd(%struct.TYPE_38__* %12)
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = call i32 @mp_sub(%struct.TYPE_38__* %12, %struct.TYPE_38__* %8, %struct.TYPE_38__* %12)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* @MP_OKAY, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %159

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %60
  %70 = call i32 @mp_div_2(%struct.TYPE_38__* %12, %struct.TYPE_38__* %12)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* @MP_OKAY, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %159

74:                                               ; preds = %69
  br label %52

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %98, %75
  %77 = call i32 @mp_iseven(%struct.TYPE_38__* %11)
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = call i32 @mp_div_2(%struct.TYPE_38__* %11, %struct.TYPE_38__* %11)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* @MP_OKAY, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %159

84:                                               ; preds = %79
  %85 = call i32 @mp_isodd(%struct.TYPE_38__* %13)
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = call i32 @mp_sub(%struct.TYPE_38__* %13, %struct.TYPE_38__* %8, %struct.TYPE_38__* %13)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* @MP_OKAY, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %159

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %84
  %94 = call i32 @mp_div_2(%struct.TYPE_38__* %13, %struct.TYPE_38__* %13)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* @MP_OKAY, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %159

98:                                               ; preds = %93
  br label %76

99:                                               ; preds = %76
  %100 = call i64 @mp_cmp(%struct.TYPE_38__* %10, %struct.TYPE_38__* %11)
  %101 = load i64, i64* @MP_LT, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = call i32 @mp_sub(%struct.TYPE_38__* %10, %struct.TYPE_38__* %11, %struct.TYPE_38__* %10)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* @MP_OKAY, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %159

108:                                              ; preds = %103
  %109 = call i32 @mp_sub(%struct.TYPE_38__* %12, %struct.TYPE_38__* %13, %struct.TYPE_38__* %12)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* @MP_OKAY, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %159

113:                                              ; preds = %108
  br label %125

114:                                              ; preds = %99
  %115 = call i32 @mp_sub(%struct.TYPE_38__* %11, %struct.TYPE_38__* %10, %struct.TYPE_38__* %11)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* @MP_OKAY, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %159

119:                                              ; preds = %114
  %120 = call i32 @mp_sub(%struct.TYPE_38__* %13, %struct.TYPE_38__* %12, %struct.TYPE_38__* %13)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* @MP_OKAY, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %159

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %113
  %126 = call i64 @mp_iszero(%struct.TYPE_38__* %10)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %51

129:                                              ; preds = %125
  %130 = call i64 @mp_cmp_d(%struct.TYPE_38__* %11, i32 1)
  %131 = load i64, i64* @MP_EQ, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* @MP_VAL, align 4
  store i32 %134, i32* %14, align 4
  br label %159

135:                                              ; preds = %129
  %136 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %15, align 4
  br label %139

139:                                              ; preds = %151, %135
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* @MP_NEG, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %147 = call i32 @mp_add(%struct.TYPE_38__* %13, %struct.TYPE_38__* %146, %struct.TYPE_38__* %13)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* @MP_OKAY, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %159

151:                                              ; preds = %145
  br label %139

152:                                              ; preds = %139
  %153 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %154 = call i32 @mp_exch(%struct.TYPE_38__* %13, %struct.TYPE_38__* %153)
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @MP_OKAY, align 4
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %152, %150, %133, %123, %118, %112, %107, %97, %91, %83, %73, %67, %59, %48, %43, %38, %32
  %160 = call i32 @mp_clear_multi(%struct.TYPE_38__* %8, %struct.TYPE_38__* %9, %struct.TYPE_38__* %10, %struct.TYPE_38__* %11, %struct.TYPE_38__* %12, %struct.TYPE_38__* %13, i32* null)
  %161 = load i32, i32* %14, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %159, %25, %19
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @mp_iseven(%struct.TYPE_38__*) #1

declare dso_local i32 @mp_init_multi(%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, i32*) #1

declare dso_local i32 @mp_copy(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_abs(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_set(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @mp_div_2(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_isodd(%struct.TYPE_38__*) #1

declare dso_local i32 @mp_sub(%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i64 @mp_cmp(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i64 @mp_iszero(%struct.TYPE_38__*) #1

declare dso_local i64 @mp_cmp_d(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @mp_add(%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_exch(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_clear_multi(%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
