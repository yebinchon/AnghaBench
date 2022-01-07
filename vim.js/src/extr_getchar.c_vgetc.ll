; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_getchar.c_vgetc.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_getchar.c_vgetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@old_char = common dso_local global i32 0, align 4
@old_mod_mask = common dso_local global i32 0, align 4
@mod_mask = common dso_local global i32 0, align 4
@last_recorded_len = common dso_local global i64 0, align 8
@no_mapping = common dso_local global i32 0, align 4
@allow_keys = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@K_SPECIAL = common dso_local global i32 0, align 4
@KS_MODIFIER = common dso_local global i32 0, align 4
@CAR = common dso_local global i32 0, align 4
@MOD_MASK_SHIFT = common dso_local global i32 0, align 4
@K_S_HOME = common dso_local global i32 0, align 4
@MOD_MASK_CTRL = common dso_local global i32 0, align 4
@K_C_HOME = common dso_local global i32 0, align 4
@K_HOME = common dso_local global i32 0, align 4
@K_S_END = common dso_local global i32 0, align 4
@K_C_END = common dso_local global i32 0, align 4
@K_END = common dso_local global i32 0, align 4
@K_UP = common dso_local global i32 0, align 4
@K_DOWN = common dso_local global i32 0, align 4
@K_LEFT = common dso_local global i32 0, align 4
@K_RIGHT = common dso_local global i32 0, align 4
@CSI = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@KE_CSI = common dso_local global i64 0, align 8
@KS_EXTRA = common dso_local global i32 0, align 4
@K_CSI = common dso_local global i32 0, align 4
@K_F10 = common dso_local global i32 0, align 4
@K_FOCUSGAINED = common dso_local global i32 0, align 4
@K_FOCUSLOST = common dso_local global i32 0, align 4
@K_IGNORE = common dso_local global i32 0, align 4
@K_NUL = common dso_local global i32 0, align 4
@K_TEAROFF = common dso_local global i32 0, align 4
@MB_MAXBYTES = common dso_local global i32 0, align 4
@NUL = common dso_local global i32 0, align 4
@VK_DECIMAL = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@has_mbyte = common dso_local global i64 0, align 8
@may_garbage_collect = common dso_local global i64 0, align 8
@mouse_col = common dso_local global i32 0, align 4
@mouse_row = common dso_local global i32 0, align 4
@old_mouse_col = common dso_local global i32 0, align 4
@old_mouse_row = common dso_local global i32 0, align 4
@want_garbage_collect = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgetc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @old_char, align 4
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @old_char, align 4
  store i32 %7, i32* %1, align 4
  store i32 -1, i32* @old_char, align 4
  %8 = load i32, i32* @old_mod_mask, align 4
  store i32 %8, i32* @mod_mask, align 4
  br label %113

9:                                                ; preds = %0
  store i32 0, i32* @mod_mask, align 4
  store i64 0, i64* @last_recorded_len, align 8
  br label %10

10:                                               ; preds = %46, %9
  %11 = load i32, i32* @mod_mask, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @no_mapping, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @no_mapping, align 4
  %16 = load i32, i32* @allow_keys, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @allow_keys, align 4
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @vgetorpeek(i32 %19)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @mod_mask, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* @no_mapping, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* @no_mapping, align 4
  %26 = load i32, i32* @allow_keys, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @allow_keys, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* @K_SPECIAL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load i32, i32* @allow_keys, align 4
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @no_mapping, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @no_mapping, align 4
  store i32 0, i32* @allow_keys, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @vgetorpeek(i32 %36)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @vgetorpeek(i32 %38)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* @no_mapping, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @no_mapping, align 4
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* @allow_keys, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @KS_MODIFIER, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* %1, align 4
  store i32 %47, i32* @mod_mask, align 4
  br label %10

48:                                               ; preds = %32
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* %1, align 4
  %51 = call i32 @TO_SPECIAL(i32 %49, i32 %50)
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %48, %28
  %53 = load i32, i32* %1, align 4
  switch i32 %53, label %111 [
    i32 137, label %54
    i32 139, label %55
    i32 141, label %56
    i32 138, label %57
    i32 140, label %58
    i32 136, label %60
    i32 151, label %61
    i32 150, label %62
    i32 149, label %63
    i32 148, label %64
    i32 147, label %65
    i32 146, label %66
    i32 145, label %67
    i32 144, label %68
    i32 143, label %69
    i32 142, label %70
    i32 133, label %71
    i32 128, label %71
    i32 134, label %87
    i32 129, label %87
    i32 130, label %103
    i32 135, label %105
    i32 132, label %107
    i32 131, label %109
  ]

54:                                               ; preds = %52
  store i32 43, i32* %1, align 4
  br label %111

55:                                               ; preds = %52
  store i32 45, i32* %1, align 4
  br label %111

56:                                               ; preds = %52
  store i32 47, i32* %1, align 4
  br label %111

57:                                               ; preds = %52
  store i32 42, i32* %1, align 4
  br label %111

58:                                               ; preds = %52
  %59 = load i32, i32* @CAR, align 4
  store i32 %59, i32* %1, align 4
  br label %111

60:                                               ; preds = %52
  store i32 46, i32* %1, align 4
  br label %111

61:                                               ; preds = %52
  store i32 48, i32* %1, align 4
  br label %111

62:                                               ; preds = %52
  store i32 49, i32* %1, align 4
  br label %111

63:                                               ; preds = %52
  store i32 50, i32* %1, align 4
  br label %111

64:                                               ; preds = %52
  store i32 51, i32* %1, align 4
  br label %111

65:                                               ; preds = %52
  store i32 52, i32* %1, align 4
  br label %111

66:                                               ; preds = %52
  store i32 53, i32* %1, align 4
  br label %111

67:                                               ; preds = %52
  store i32 54, i32* %1, align 4
  br label %111

68:                                               ; preds = %52
  store i32 55, i32* %1, align 4
  br label %111

69:                                               ; preds = %52
  store i32 56, i32* %1, align 4
  br label %111

70:                                               ; preds = %52
  store i32 57, i32* %1, align 4
  br label %111

71:                                               ; preds = %52, %52
  %72 = load i32, i32* @mod_mask, align 4
  %73 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @K_S_HOME, align 4
  store i32 %76, i32* %1, align 4
  store i32 0, i32* @mod_mask, align 4
  br label %86

77:                                               ; preds = %71
  %78 = load i32, i32* @mod_mask, align 4
  %79 = load i32, i32* @MOD_MASK_CTRL, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @K_C_HOME, align 4
  store i32 %82, i32* %1, align 4
  store i32 0, i32* @mod_mask, align 4
  br label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @K_HOME, align 4
  store i32 %84, i32* %1, align 4
  br label %85

85:                                               ; preds = %83, %81
  br label %86

86:                                               ; preds = %85, %75
  br label %111

87:                                               ; preds = %52, %52
  %88 = load i32, i32* @mod_mask, align 4
  %89 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @K_S_END, align 4
  store i32 %92, i32* %1, align 4
  store i32 0, i32* @mod_mask, align 4
  br label %102

93:                                               ; preds = %87
  %94 = load i32, i32* @mod_mask, align 4
  %95 = load i32, i32* @MOD_MASK_CTRL, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @K_C_END, align 4
  store i32 %98, i32* %1, align 4
  store i32 0, i32* @mod_mask, align 4
  br label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @K_END, align 4
  store i32 %100, i32* %1, align 4
  br label %101

101:                                              ; preds = %99, %97
  br label %102

102:                                              ; preds = %101, %91
  br label %111

103:                                              ; preds = %52
  %104 = load i32, i32* @K_UP, align 4
  store i32 %104, i32* %1, align 4
  br label %111

105:                                              ; preds = %52
  %106 = load i32, i32* @K_DOWN, align 4
  store i32 %106, i32* %1, align 4
  br label %111

107:                                              ; preds = %52
  %108 = load i32, i32* @K_LEFT, align 4
  store i32 %108, i32* %1, align 4
  br label %111

109:                                              ; preds = %52
  %110 = load i32, i32* @K_RIGHT, align 4
  store i32 %110, i32* %1, align 4
  br label %111

111:                                              ; preds = %52, %109, %107, %105, %103, %102, %86, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %58, %57, %56, %55, %54
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112, %6
  %114 = load i32, i32* %1, align 4
  ret i32 %114
}

declare dso_local i32 @vgetorpeek(i32) #1

declare dso_local i32 @TO_SPECIAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
