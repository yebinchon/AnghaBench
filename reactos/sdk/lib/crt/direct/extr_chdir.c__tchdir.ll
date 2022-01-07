; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/direct/extr_chdir.c__tchdir.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/direct/extr_chdir.c__tchdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tchdir(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @SetCurrentDirectory(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @GetLastError()
  br label %21

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = call i32 @_dosmaperr(i32 %22)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = call i32 @GetCurrentDirectoryW(i32 %25, i32* %11)
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = getelementptr inbounds i32, i32* %11, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 58
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 61, i32* %33, align 4
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = getelementptr inbounds i32, i32* %11, i64 0
  %36 = load i32, i32* %35, align 16
  %37 = call i32 @towupper(i32 %36)
  store i32 %37, i32* %34, align 4
  %38 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 58, i32* %38, align 4
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %41 = call i32 @SetEnvironmentVariableW(i32* %40, i32* %11)
  br label %42

42:                                               ; preds = %32, %28
  br label %43

43:                                               ; preds = %42, %24
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetCurrentDirectory(i32*) #2

declare dso_local i32 @_dosmaperr(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @GetCurrentDirectoryW(i32, i32*) #2

declare dso_local i32 @towupper(i32) #2

declare dso_local i32 @SetEnvironmentVariableW(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
