; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_lfn.c_WFCopy.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_lfn.c_WFCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@hdlgProgress = common dso_local global i32 0, align 4
@IDS_COPYINGMSG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FSC_CREATE = common dso_local global i32 0, align 4
@ERROR_INVALID_NAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WFCopy(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load i32, i32* @hdlgProgress, align 4
  %13 = load i32, i32* @IDS_COPYINGMSG, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @Notify(i32 %12, i32 %13, i32* %14, i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i64 @CopyFile(i32* %17, i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @FSC_CREATE, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ChangeFileSystem(i32 %23, i32* %24, i32* null)
  store i64 0, i64* %5, align 8
  br label %44

26:                                               ; preds = %2
  %27 = call i64 (...) @GetLastError()
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @ERROR_INVALID_NAME, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @lstrcpy(i32* %11, i32* %32)
  %34 = call i32 @RemoveLast(i32* %11)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i64 @CopyFile(i32* %35, i32* %11, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @FSC_CREATE, align 4
  %41 = call i32 @ChangeFileSystem(i32 %40, i32* %11, i32* null)
  store i64 0, i64* %5, align 8
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42, %26
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i64, i64* %5, align 8
  %46 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %46)
  ret i64 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Notify(i32, i32, i32*, i32*) #2

declare dso_local i64 @CopyFile(i32*, i32*, i32) #2

declare dso_local i32 @ChangeFileSystem(i32, i32*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @lstrcpy(i32*, i32*) #2

declare dso_local i32 @RemoveLast(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
