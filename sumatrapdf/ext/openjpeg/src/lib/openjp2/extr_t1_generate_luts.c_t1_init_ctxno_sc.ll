; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1_generate_luts.c_t1_init_ctxno_sc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t1_generate_luts.c_t1_init_ctxno_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T1_LUT_SIG_E = common dso_local global i32 0, align 4
@T1_LUT_SGN_E = common dso_local global i32 0, align 4
@T1_LUT_SIG_W = common dso_local global i32 0, align 4
@T1_LUT_SGN_W = common dso_local global i32 0, align 4
@T1_LUT_SIG_N = common dso_local global i32 0, align 4
@T1_LUT_SGN_N = common dso_local global i32 0, align 4
@T1_LUT_SIG_S = common dso_local global i32 0, align 4
@T1_LUT_SGN_S = common dso_local global i32 0, align 4
@T1_CTXNO_SC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @t1_init_ctxno_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t1_init_ctxno_sc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @T1_LUT_SIG_E, align 4
  %8 = load i32, i32* @T1_LUT_SGN_E, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = load i32, i32* @T1_LUT_SIG_E, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @T1_LUT_SIG_W, align 4
  %16 = load i32, i32* @T1_LUT_SGN_W, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load i32, i32* @T1_LUT_SIG_W, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %13, %21
  %23 = call i32 @opj_int_min(i32 %22, i32 1)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @T1_LUT_SIG_E, align 4
  %26 = load i32, i32* @T1_LUT_SGN_E, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* @T1_LUT_SIG_E, align 4
  %30 = load i32, i32* @T1_LUT_SGN_E, align 4
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @T1_LUT_SIG_W, align 4
  %36 = load i32, i32* @T1_LUT_SGN_W, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load i32, i32* @T1_LUT_SIG_W, align 4
  %40 = load i32, i32* @T1_LUT_SGN_W, align 4
  %41 = or i32 %39, %40
  %42 = icmp eq i32 %38, %41
  %43 = zext i1 %42 to i32
  %44 = add nsw i32 %33, %43
  %45 = call i32 @opj_int_min(i32 %44, i32 1)
  %46 = sub nsw i32 %23, %45
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @T1_LUT_SIG_N, align 4
  %49 = load i32, i32* @T1_LUT_SGN_N, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = load i32, i32* @T1_LUT_SIG_N, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @T1_LUT_SIG_S, align 4
  %57 = load i32, i32* @T1_LUT_SGN_S, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = load i32, i32* @T1_LUT_SIG_S, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = add nsw i32 %54, %62
  %64 = call i32 @opj_int_min(i32 %63, i32 1)
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @T1_LUT_SIG_N, align 4
  %67 = load i32, i32* @T1_LUT_SGN_N, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = load i32, i32* @T1_LUT_SIG_N, align 4
  %71 = load i32, i32* @T1_LUT_SGN_N, align 4
  %72 = or i32 %70, %71
  %73 = icmp eq i32 %69, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @T1_LUT_SIG_S, align 4
  %77 = load i32, i32* @T1_LUT_SGN_S, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = load i32, i32* @T1_LUT_SIG_S, align 4
  %81 = load i32, i32* @T1_LUT_SGN_S, align 4
  %82 = or i32 %80, %81
  %83 = icmp eq i32 %79, %82
  %84 = zext i1 %83 to i32
  %85 = add nsw i32 %74, %84
  %86 = call i32 @opj_int_min(i32 %85, i32 1)
  %87 = sub nsw i32 %64, %86
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %1
  %91 = load i32, i32* %3, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %1
  %96 = load i32, i32* %3, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 1, i32* %5, align 4
  br label %108

102:                                              ; preds = %98
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %107

106:                                              ; preds = %102
  store i32 1, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %101
  br label %124

109:                                              ; preds = %95
  %110 = load i32, i32* %3, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load i32, i32* %4, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 2, i32* %5, align 4
  br label %122

116:                                              ; preds = %112
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  store i32 3, i32* %5, align 4
  br label %121

120:                                              ; preds = %116
  store i32 4, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %119
  br label %122

122:                                              ; preds = %121, %115
  br label %123

123:                                              ; preds = %122, %109
  br label %124

124:                                              ; preds = %123, %108
  %125 = load i32, i32* @T1_CTXNO_SC, align 4
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %125, %126
  ret i32 %127
}

declare dso_local i32 @opj_int_min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
