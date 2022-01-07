; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_xOpenFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_env.c_xOpenFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Unable to translate %s to Nt path\0A\00", align 1
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_READ_DATA = common dso_local global i32 0, align 4
@FILE_EXECUTE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i32 0, align 4
@FILE_NON_DIRECTORY_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xOpenFile(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @RtlDosPathNameToNtPathName_U(i32* %9, i32* %4, i32* null, i32* null)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @wine_dbgstr_w(i32* %13)
  %15 = call i32 @skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32* null, i32** %2, align 8
  br label %40

16:                                               ; preds = %1
  %17 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %18 = call i32 @InitializeObjectAttributes(i32* %5, i32* %4, i32 %17, i32* null, i32* null)
  %19 = load i32, i32* @SYNCHRONIZE, align 4
  %20 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FILE_READ_DATA, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FILE_EXECUTE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FILE_SHARE_READ, align 4
  %27 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %30 = load i32, i32* @FILE_NON_DIRECTORY_FILE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @NtOpenFile(i32** %8, i32 %25, i32* %5, i32* %6, i32 %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = call i32 @RtlFreeUnicodeString(i32* %4)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @NT_SUCCESS(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %16
  store i32* null, i32** %2, align 8
  br label %40

38:                                               ; preds = %16
  %39 = load i32*, i32** %8, align 8
  store i32* %39, i32** %2, align 8
  br label %40

40:                                               ; preds = %38, %37, %12
  %41 = load i32*, i32** %2, align 8
  ret i32* %41
}

declare dso_local i32 @RtlDosPathNameToNtPathName_U(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @skip(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenFile(i32**, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @RtlFreeUnicodeString(i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
