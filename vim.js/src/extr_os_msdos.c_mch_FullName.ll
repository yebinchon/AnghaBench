; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_FullName.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_mch_FullName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OK = common dso_local global i32 0, align 4
@MAXPATHL = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@FA_DIREC = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@psepc = common dso_local global i32 0, align 4
@pseps = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_FullName(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @mch_isFullName(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @vim_strncpy(i8* %20, i8* %21, i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @slash_adjust(i8* %25)
  %27 = load i32, i32* @OK, align 4
  store i32 %27, i32* %5, align 4
  br label %47

28:                                               ; preds = %15, %4
  %29 = load i32, i32* @MAXPATHL, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %10, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @_truename(i8* %33, i8* %32)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @FAIL, align 4
  store i32 %37, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %45

38:                                               ; preds = %28
  %39 = call i32 @slash_adjust(i8* %32)
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @vim_strncpy(i8* %40, i8* %32, i32 %42)
  %44 = load i32, i32* @OK, align 4
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %45

45:                                               ; preds = %38, %36
  %46 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %46)
  br label %47

47:                                               ; preds = %45, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @mch_isFullName(i8*) #1

declare dso_local i32 @vim_strncpy(i8*, i8*, i32) #1

declare dso_local i32 @slash_adjust(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_truename(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
