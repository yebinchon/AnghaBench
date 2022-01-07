; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_check_win.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_check_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i8 0, align 1
@FALSE = common dso_local global i32 0, align 4
@exe_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"vim.exe\00", align 1
@OK = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_check_win(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* @NUL, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i8* @FullName_save(i32* %18, i32 %19)
  store i8* %20, i8** @exe_name, align 8
  br label %21

21:                                               ; preds = %14, %2
  %22 = load i8*, i8** @exe_name, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** @exe_name, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @NUL, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24, %21
  %32 = call i8* @searchpath(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** @exe_name, align 8
  br label %33

33:                                               ; preds = %31, %24
  %34 = call i64 @isatty(i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @OK, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @FAIL, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i8* @FullName_save(i32*, i32) #1

declare dso_local i8* @searchpath(i8*) #1

declare dso_local i64 @isatty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
