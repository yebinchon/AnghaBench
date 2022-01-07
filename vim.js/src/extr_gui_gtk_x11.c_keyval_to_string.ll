; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_keyval_to_string.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_keyval_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GDK_CONTROL_MASK = common dso_local global i32 0, align 4
@NUL = common dso_local global i32 0, align 4
@BS = common dso_local global i32 0, align 4
@DEL = common dso_local global i32 0, align 4
@TAB = common dso_local global i32 0, align 4
@NL = common dso_local global i32 0, align 4
@CAR = common dso_local global i32 0, align 4
@ESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @keyval_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyval_to_string(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @gdk_keyval_to_unicode(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %78

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GDK_CONTROL_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %73

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 32
  br i1 %20, label %21, label %73

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 128
  br i1 %23, label %24, label %73

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp sge i32 %25, 64
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 31
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  br label %72

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 50
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @NUL, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  br label %71

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 51
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %43, 55
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = xor i32 %46, 40
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  br label %70

50:                                               ; preds = %42, %39
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 56
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @BS, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %56, align 4
  br label %69

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 63
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @DEL, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %61, i32* %63, align 4
  br label %68

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %35
  br label %72

72:                                               ; preds = %71, %27
  store i32 1, i32* %7, align 4
  br label %77

73:                                               ; preds = %21, %18, %13
  %74 = load i32, i32* %8, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @utf_char2bytes(i32 %74, i32* %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %72
  br label %98

78:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  %79 = load i32, i32* %4, align 4
  switch i32 %79, label %96 [
    i32 128, label %80
    i32 131, label %80
    i32 132, label %80
    i32 130, label %84
    i32 129, label %88
    i32 133, label %88
    i32 135, label %88
    i32 134, label %92
  ]

80:                                               ; preds = %78, %78, %78
  %81 = load i32, i32* @TAB, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %81, i32* %83, align 4
  br label %97

84:                                               ; preds = %78
  %85 = load i32, i32* @NL, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  br label %97

88:                                               ; preds = %78, %78, %78
  %89 = load i32, i32* @CAR, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %89, i32* %91, align 4
  br label %97

92:                                               ; preds = %78
  %93 = load i32, i32* @ESC, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %93, i32* %95, align 4
  br label %97

96:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %92, %88, %84, %80
  br label %98

98:                                               ; preds = %97, %77
  %99 = load i32, i32* @NUL, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @gdk_keyval_to_unicode(i32) #1

declare dso_local i32 @utf_char2bytes(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
