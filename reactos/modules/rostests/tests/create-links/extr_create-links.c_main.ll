; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/create-links/extr_create-links.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/create-links/extr_create-links.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@CSIDL_PROGRAMS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"start-cmd.lnk\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cmd.exe\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"open console window\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"start-winhello.lnk\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"winhello.exe\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"launch winhello\00", align 1
@CSIDL_DESKTOP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"start-wcmd.lnk\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"start-winemine.lnk\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"winemine.exe\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"launch winemine\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = call i32 @CoInitialize(i32* null)
  %10 = load i32, i32* @CSIDL_PROGRAMS, align 4
  %11 = load i32, i32* @TRUE, align 4
  %12 = call i32 @SHGetSpecialFolderPathA(i32 0, i8* %8, i32 %10, i32 %11)
  %13 = call i32 @PathAddBackslash(i8* %8)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @strcpy(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @CreateShellLink(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i32 @CreateShellLink(i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32, i32* @CSIDL_DESKTOP, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @SHGetSpecialFolderPathA(i32 0, i8* %8, i32 %20, i32 %21)
  %23 = call i32 @PathAddBackslash(i8* %8)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @strcpy(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %26 = call i32 @CreateShellLink(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @strcpy(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %29 = call i32 @CreateShellLink(i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %30 = call i32 (...) @CoUninitialize()
  store i32 0, i32* %1, align 4
  %31 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CoInitialize(i32*) #2

declare dso_local i32 @SHGetSpecialFolderPathA(i32, i8*, i32, i32) #2

declare dso_local i32 @PathAddBackslash(i8*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @CreateShellLink(i8*, i8*, i8*, i32*, i32*, i32, i8*) #2

declare dso_local i32 @CoUninitialize(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
