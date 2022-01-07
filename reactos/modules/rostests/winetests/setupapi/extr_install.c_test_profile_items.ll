; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_install.c_test_profile_items.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_install.c_test_profile_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_profile_items.inf = internal global i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [236 x i8] c"[Version]\0ASignature=\22$Chicago$\22\0A[DefaultInstall]\0AProfileItems=TestItem,TestItem2,TestGroup\0A[TestItem]\0AName=TestItem\0ACmdLine=11,,notepad.exe\0A[TestItem2]\0AName=TestItem2\0ACmdLine=11,,notepad.exe\0ASubDir=TestDir\0A[TestGroup]\0AName=TestGroup,4\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@CSIDL_COMMON_PROGRAMS = common dso_local global i32 0, align 4
@SHGFP_TYPE_CURRENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"No common program files directory exists\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s\\TestDir\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"need admin rights\0A\00", align 1
@inffile = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%s\\%s\00", align 1
@CURR_DIR = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"DefaultInstall\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s\\TestItem.lnk\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"directory not created\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s\\TestDir\\TestItem2.lnk\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"link not created\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%s\\TestGroup\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"group not created\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"%s\\TestItem2.lnk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_profile_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_profile_items() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = load i32, i32* @CSIDL_COMMON_PROGRAMS, align 4
  %14 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %15 = call i64 @SHGetFolderPathA(i32* null, i32 %13, i32* null, i32 %14, i8* %11)
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 @skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %77

19:                                               ; preds = %0
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = call i32 @snprintf(i8* %8, i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  %22 = call i32 @CreateDirectoryA(i8* %8, i32* null)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = call i64 (...) @GetLastError()
  %26 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @skip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %80

30:                                               ; preds = %24, %19
  %31 = call i32 @RemoveDirectoryA(i8* %8)
  %32 = load i8*, i8** @inffile, align 8
  %33 = load i8*, i8** @test_profile_items.inf, align 8
  %34 = call i32 @create_inf_file(i8* %32, i8* %33)
  %35 = load i8*, i8** @CURR_DIR, align 8
  %36 = load i8*, i8** @inffile, align 8
  %37 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %35, i8* %36)
  %38 = call i32 @run_cmdline(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 128, i8* %8)
  %39 = load i32, i32* @MAX_PATH, align 4
  %40 = call i32 @snprintf(i8* %8, i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %11)
  %41 = load i32, i32* @MAX_PATH, align 4
  %42 = call i32 @snprintf(i8* %8, i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  %43 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %44 = call i64 @GetFileAttributesA(i8* %8)
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %48 = load i32, i32* @MAX_PATH, align 4
  %49 = call i32 @snprintf(i8* %8, i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %11)
  %50 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %51 = call i64 @GetFileAttributesA(i8* %8)
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %55 = load i32, i32* @MAX_PATH, align 4
  %56 = call i32 @snprintf(i8* %8, i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %11)
  %57 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %58 = call i64 @GetFileAttributesA(i8* %8)
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %62 = load i32, i32* @MAX_PATH, align 4
  %63 = call i32 @snprintf(i8* %8, i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %11)
  %64 = call i32 @DeleteFileA(i8* %8)
  %65 = load i32, i32* @MAX_PATH, align 4
  %66 = call i32 @snprintf(i8* %8, i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %11)
  %67 = call i32 @DeleteFileA(i8* %8)
  %68 = load i32, i32* @MAX_PATH, align 4
  %69 = call i32 @snprintf(i8* %8, i32 %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %11)
  %70 = call i32 @DeleteFileA(i8* %8)
  %71 = load i32, i32* @MAX_PATH, align 4
  %72 = call i32 @snprintf(i8* %8, i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  %73 = call i32 @RemoveDirectoryA(i8* %8)
  %74 = load i32, i32* @MAX_PATH, align 4
  %75 = call i32 @snprintf(i8* %8, i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %11)
  %76 = call i32 @RemoveDirectoryA(i8* %8)
  br label %77

77:                                               ; preds = %30, %17
  %78 = load i8*, i8** @inffile, align 8
  %79 = call i32 @DeleteFileA(i8* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %28
  %81 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %4, align 4
  switch i32 %82, label %84 [
    i32 0, label %83
    i32 1, label %83
  ]

83:                                               ; preds = %80, %80
  ret void

84:                                               ; preds = %80
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SHGetFolderPathA(i32*, i32, i32*, i32, i8*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @CreateDirectoryA(i8*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

declare dso_local i32 @create_inf_file(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @run_cmdline(i8*, i32, i8*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i64 @GetFileAttributesA(i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
