; ModuleID = '/home/carl/AnghaBench/tig/compat/extr_utf8proc.c_grapheme_break_simple.c'
source_filename = "/home/carl/AnghaBench/tig/compat/extr_utf8proc.c_grapheme_break_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF8PROC_BOUNDCLASS_START = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_CR = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_LF = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_CONTROL = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_L = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_V = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_LV = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_LVT = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_T = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_EXTEND = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_ZWJ = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_SPACINGMARK = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_PREPEND = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_E_ZWG = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_EXTENDED_PICTOGRAPHIC = common dso_local global i32 0, align 4
@UTF8PROC_BOUNDCLASS_REGIONAL_INDICATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @grapheme_break_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grapheme_break_simple(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @UTF8PROC_BOUNDCLASS_START, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %141

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @UTF8PROC_BOUNDCLASS_CR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @UTF8PROC_BOUNDCLASS_LF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %139

18:                                               ; preds = %13, %9
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @UTF8PROC_BOUNDCLASS_CR, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @UTF8PROC_BOUNDCLASS_CONTROL, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %137

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @UTF8PROC_BOUNDCLASS_CR, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @UTF8PROC_BOUNDCLASS_CONTROL, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %135

36:                                               ; preds = %31, %27
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @UTF8PROC_BOUNDCLASS_L, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @UTF8PROC_BOUNDCLASS_L, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @UTF8PROC_BOUNDCLASS_V, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @UTF8PROC_BOUNDCLASS_LV, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @UTF8PROC_BOUNDCLASS_LVT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %48, %44, %40
  br label %133

57:                                               ; preds = %52, %36
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @UTF8PROC_BOUNDCLASS_LV, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @UTF8PROC_BOUNDCLASS_V, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @UTF8PROC_BOUNDCLASS_V, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @UTF8PROC_BOUNDCLASS_T, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65
  br label %131

74:                                               ; preds = %69, %61
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @UTF8PROC_BOUNDCLASS_LVT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @UTF8PROC_BOUNDCLASS_T, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @UTF8PROC_BOUNDCLASS_T, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %129

87:                                               ; preds = %82, %78
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @UTF8PROC_BOUNDCLASS_EXTEND, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %103, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @UTF8PROC_BOUNDCLASS_ZWJ, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @UTF8PROC_BOUNDCLASS_SPACINGMARK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @UTF8PROC_BOUNDCLASS_PREPEND, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99, %95, %91, %87
  br label %127

104:                                              ; preds = %99
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @UTF8PROC_BOUNDCLASS_E_ZWG, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @UTF8PROC_BOUNDCLASS_EXTENDED_PICTOGRAPHIC, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %125

113:                                              ; preds = %108, %104
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @UTF8PROC_BOUNDCLASS_REGIONAL_INDICATOR, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @UTF8PROC_BOUNDCLASS_REGIONAL_INDICATOR, align 4
  %120 = icmp eq i32 %118, %119
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i1 [ false, %113 ], [ %120, %117 ]
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 0, i32 1
  br label %125

125:                                              ; preds = %121, %112
  %126 = phi i32 [ 0, %112 ], [ %124, %121 ]
  br label %127

127:                                              ; preds = %125, %103
  %128 = phi i32 [ 0, %103 ], [ %126, %125 ]
  br label %129

129:                                              ; preds = %127, %86
  %130 = phi i32 [ 0, %86 ], [ %128, %127 ]
  br label %131

131:                                              ; preds = %129, %73
  %132 = phi i32 [ 0, %73 ], [ %130, %129 ]
  br label %133

133:                                              ; preds = %131, %56
  %134 = phi i32 [ 0, %56 ], [ %132, %131 ]
  br label %135

135:                                              ; preds = %133, %35
  %136 = phi i32 [ 1, %35 ], [ %134, %133 ]
  br label %137

137:                                              ; preds = %135, %26
  %138 = phi i32 [ 1, %26 ], [ %136, %135 ]
  br label %139

139:                                              ; preds = %137, %17
  %140 = phi i32 [ 0, %17 ], [ %138, %137 ]
  br label %141

141:                                              ; preds = %139, %8
  %142 = phi i32 [ 1, %8 ], [ %140, %139 ]
  ret i32 %142
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
