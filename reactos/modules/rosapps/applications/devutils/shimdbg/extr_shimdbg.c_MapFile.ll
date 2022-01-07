; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/shimdbg/extr_shimdbg.c_MapFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/shimdbg/extr_shimdbg.c_MapFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_READ_DATA = common dso_local global i32 0, align 4
@FILE_EXECUTE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i32 0, align 4
@FILE_NON_DIRECTORY_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed opening the file, using a NULL handle\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @MapFile(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @RtlCreateUnicodeStringFromAsciiz(i32* %11, i8* %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %19 = call i32 @InitializeObjectAttributes(i32* %7, i32* %17, i32 %18, i32* null, i32* null)
  %20 = load i32, i32* @SYNCHRONIZE, align 4
  %21 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FILE_READ_DATA, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FILE_EXECUTE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FILE_SHARE_READ, align 4
  %28 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %31 = load i32, i32* @FILE_NON_DIRECTORY_FILE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @NtOpenFile(i32** %10, i32 %26, i32* %7, i32* %8, i32 %29, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @NT_SUCCESS(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %16
  %38 = call i32 @xprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %10, align 8
  br label %39

39:                                               ; preds = %37, %16
  br label %40

40:                                               ; preds = %39, %3
  %41 = load i32*, i32** %10, align 8
  ret i32* %41
}

declare dso_local i32 @RtlCreateUnicodeStringFromAsciiz(i32*, i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenFile(i32**, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @xprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
