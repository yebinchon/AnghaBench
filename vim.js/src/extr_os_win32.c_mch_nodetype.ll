; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_mch_nodetype.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_mch_nodetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\\\\.\\\00", align 1
@NODE_WRITABLE = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@NODE_NORMAL = common dso_local global i32 0, align 4
@FILE_TYPE_CHAR = common dso_local global i32 0, align 4
@FILE_TYPE_DISK = common dso_local global i32 0, align 4
@NODE_OTHER = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@enc_codepage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_nodetype(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @STRNCMP(i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @NODE_WRITABLE, align 4
  store i32 %10, i32* %2, align 4
  br label %39

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @GENERIC_WRITE, align 4
  %14 = load i32, i32* @OPEN_EXISTING, align 4
  %15 = call i64 @CreateFile(i32* %12, i32 %13, i32 0, i32* null, i32 %14, i32 0, i32* null)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @NODE_NORMAL, align 4
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %11
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @GetFileType(i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @CloseHandle(i64 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @FILE_TYPE_CHAR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @NODE_WRITABLE, align 4
  store i32 %30, i32* %2, align 4
  br label %39

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @FILE_TYPE_DISK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @NODE_NORMAL, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @NODE_OTHER, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %35, %29, %19, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @STRNCMP(i32*, i8*, i32) #1

declare dso_local i64 @CreateFile(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @GetFileType(i64) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
