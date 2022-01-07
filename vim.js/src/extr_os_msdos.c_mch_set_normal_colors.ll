; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_set_normal_colors.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_set_normal_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@orig_attr = common dso_local global i32 0, align 4
@cterm_normal_fg_color = common dso_local global i32 0, align 4
@cterm_normal_bg_color = common dso_local global i32 0, align 4
@T_ME = common dso_local global i8* null, align 8
@ESC = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mch_set_normal_colors() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @orig_attr, align 4
  %4 = and i32 %3, 15
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @cterm_normal_fg_color, align 4
  %6 = load i32, i32* @orig_attr, align 4
  %7 = ashr i32 %6, 4
  %8 = and i32 %7, 15
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @cterm_normal_bg_color, align 4
  %10 = load i8*, i8** @T_ME, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @ESC, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %0
  %18 = load i8*, i8** @T_ME, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 124
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load i8*, i8** @T_ME, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  store i8* %25, i8** %1, align 8
  %26 = call i32 @getdigits(i8** %1)
  store i32 %26, i32* %2, align 4
  %27 = load i8*, i8** %1, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 109
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load i32, i32* %2, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = and i32 %35, 15
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @cterm_normal_fg_color, align 4
  %38 = load i32, i32* %2, align 4
  %39 = ashr i32 %38, 4
  %40 = and i32 %39, 15
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @cterm_normal_bg_color, align 4
  br label %42

42:                                               ; preds = %34, %31, %23
  br label %43

43:                                               ; preds = %42, %17, %0
  ret void
}

declare dso_local i32 @getdigits(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
