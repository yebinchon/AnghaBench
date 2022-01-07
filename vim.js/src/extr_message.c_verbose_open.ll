; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_message.c_verbose_open.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_message.c_verbose_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose_fd = common dso_local global i32* null, align 8
@verbose_did_open = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@p_vfile = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@e_notopen = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verbose_open() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @verbose_fd, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %21

4:                                                ; preds = %0
  %5 = load i64, i64* @verbose_did_open, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @TRUE, align 8
  store i64 %8, i64* @verbose_did_open, align 8
  %9 = load i64, i64* @p_vfile, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32* @mch_fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** @verbose_fd, align 8
  %12 = load i32*, i32** @verbose_fd, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  %15 = load i32, i32* @e_notopen, align 4
  %16 = call i32 @_(i32 %15)
  %17 = load i64, i64* @p_vfile, align 8
  %18 = call i32 @EMSG2(i32 %16, i64 %17)
  %19 = load i32, i32* @FAIL, align 4
  store i32 %19, i32* %1, align 4
  br label %23

20:                                               ; preds = %7
  br label %21

21:                                               ; preds = %20, %4, %0
  %22 = load i32, i32* @OK, align 4
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32* @mch_fopen(i8*, i8*) #1

declare dso_local i32 @EMSG2(i32, i64) #1

declare dso_local i32 @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
