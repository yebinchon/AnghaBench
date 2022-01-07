; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/direct/extr_getcwd.c__tgetcwd.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/direct/extr_getcwd.c__tgetcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_tgetcwd(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = call i64 @GetCurrentDirectory(i32 %14, i32* %13)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 @_dosmaperr(i32 %19)
  store i32* null, i32** %3, align 8
  store i32 1, i32* %9, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32* @_tcsdup(i32* %13)
  store i32* %25, i32** %3, align 8
  store i32 1, i32* %9, align 4
  br label %38

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp sge i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @ERANGE, align 4
  %33 = call i32 @_set_errno(i32 %32)
  store i32* null, i32** %3, align 8
  store i32 1, i32* %9, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @_tcscpy(i32* %35, i32* %13)
  %37 = load i32*, i32** %4, align 8
  store i32* %37, i32** %3, align 8
  store i32 1, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %31, %24, %18
  %39 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetCurrentDirectory(i32, i32*) #2

declare dso_local i32 @_dosmaperr(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32* @_tcsdup(i32*) #2

declare dso_local i32 @_set_errno(i32) #2

declare dso_local i32 @_tcscpy(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
