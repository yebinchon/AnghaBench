; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_search.c_cls.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_search.c_cls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i32 0, align 4
@cls_bigword = common dso_local global i64 0, align 8
@DBCS_KOR = common dso_local global i64 0, align 8
@F_BLANK = common dso_local global i32 0, align 4
@enc_dbcs = common dso_local global i64 0, align 8
@enc_utf8 = common dso_local global i64 0, align 8
@p_altkeymap = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @gchar_cursor()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %13, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @NUL, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %6, %0
  store i32 0, i32* %1, align 4
  br label %24

14:                                               ; preds = %9
  %15 = load i64, i64* @cls_bigword, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %24

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @vim_iswordc(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 2, i32* %1, align 4
  br label %24

23:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %24

24:                                               ; preds = %23, %22, %17, %13
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @gchar_cursor(...) #1

declare dso_local i64 @vim_iswordc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
