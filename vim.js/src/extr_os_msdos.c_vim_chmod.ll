; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_vim_chmod.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_msdos.c_vim_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vim_chmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vim_chmod(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @STRLEN(i8* %7)
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = icmp ugt i8* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = icmp ugt i8* %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 92
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %43

31:                                               ; preds = %26, %21
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 58
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load i8, i8* @NUL, align 1
  %42 = load i8*, i8** %3, align 8
  store i8 %41, i8* %42, align 1
  br label %44

43:                                               ; preds = %31, %26, %17
  store i8* null, i8** %3, align 8
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @_chmod(i8* %45, i32 0, i32 0)
  store i32 %46, i32* %4, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %3, align 8
  store i8 %51, i8* %52, align 1
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i32 @_chmod(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
