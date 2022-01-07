; ModuleID = '/home/carl/AnghaBench/tmux/extr_xterm-keys.c_xterm_keys_modifiers.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_xterm-keys.c_xterm_keys_modifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEYC_SHIFT = common dso_local global i32 0, align 4
@KEYC_ESCAPE = common dso_local global i32 0, align 4
@KEYC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, i32*)* @xterm_keys_modifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xterm_keys_modifiers(i8* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64*, i64** %8, align 8
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %11, %13
  %15 = icmp ult i64 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %110

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp slt i32 %23, 48
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load i8*, i8** %6, align 8
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sgt i32 %31, 57
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %17
  store i32 -1, i32* %5, align 4
  br label %110

34:                                               ; preds = %25
  %35 = load i8*, i8** %6, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = getelementptr inbounds i8, i8* %35, i64 %37
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = sub nsw i32 %41, 48
  store i32 %42, i32* %10, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sge i32 %48, 48
  br i1 %49, label %50, label %70

50:                                               ; preds = %34
  %51 = load i8*, i8** %6, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 %56, 57
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %59, 10
  %61 = load i8*, i8** %6, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = getelementptr inbounds i8, i8* %61, i64 %63
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = sub nsw i32 %67, 48
  %69 = add nsw i32 %60, %68
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %58, %50, %34
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32, i32* @KEYC_SHIFT, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %70
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* @KEYC_ESCAPE, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* @KEYC_CTRL, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95, %91
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32, i32* @KEYC_ESCAPE, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %104, %100
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %33, %16
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
