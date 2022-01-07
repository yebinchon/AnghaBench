; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_web.c_gui_web_handle_key.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_web.c_gui_web_handle_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MOD_MASK_CTRL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@got_int = common dso_local global i8* null, align 8
@CSI = common dso_local global i32 0, align 4
@K_CSI = common dso_local global i32 0, align 4
@KS_MODIFIER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_web_handle_key(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [64 x i64], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @TO_SPECIAL(i64 %18, i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @simplify_key(i32 %21, i32* %6)
  store i32 %22, i32* %5, align 4
  br label %56

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 99
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MOD_MASK_CTRL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i8*, i8** @TRUE, align 8
  store i8* %32, i8** @got_int, align 8
  br label %33

33:                                               ; preds = %31, %26, %23
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @IS_SPECIAL(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @simplify_key(i32 %38, i32* %6)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @extract_modifiers(i32 %40, i32* %6)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @CSI, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @K_CSI, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %37
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @IS_SPECIAL(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** @TRUE, align 8
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54, %33
  br label %56

56:                                               ; preds = %55, %17
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %56
  %60 = load i32, i32* @CSI, align 4
  %61 = sext i32 %60 to i64
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 %64
  store i64 %61, i64* %65, align 8
  %66 = load i64, i64* @KS_MODIFIER, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 %69
  store i64 %66, i64* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 %75
  store i64 %72, i64* %76, align 8
  br label %77

77:                                               ; preds = %59, %56
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @IS_SPECIAL(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load i32, i32* @CSI, align 4
  %86 = sext i32 %85 to i64
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 %89
  store i64 %86, i64* %90, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @K_SECOND(i32 %91)
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 %95
  store i64 %92, i64* %96, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i64 @K_THIRD(i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 %101
  store i64 %98, i64* %102, align 8
  br label %110

103:                                              ; preds = %80, %77
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 %108
  store i64 %105, i64* %109, align 8
  br label %110

110:                                              ; preds = %103, %84
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 0
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @add_to_input_buf(i64* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %110
  ret void
}

declare dso_local i32 @TO_SPECIAL(i64, i64) #1

declare dso_local i32 @simplify_key(i32, i32*) #1

declare dso_local i64 @IS_SPECIAL(i32) #1

declare dso_local i32 @extract_modifiers(i32, i32*) #1

declare dso_local i64 @K_SECOND(i32) #1

declare dso_local i64 @K_THIRD(i32) #1

declare dso_local i32 @add_to_input_buf(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
