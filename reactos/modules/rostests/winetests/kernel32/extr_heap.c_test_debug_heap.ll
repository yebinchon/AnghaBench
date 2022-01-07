; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_test_debug_heap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_test_debug_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"Not authorized to change the image file execution options\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to create '%s' error %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"GlobalFlag\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"%s heap.c 0x%x\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"failed to create child process error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @test_debug_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_debug_heap(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @strrchr(i8* %22, i8 signext 92)
  store i8* %23, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i8*, i8** %13, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %13, align 8
  br label %30

28:                                               ; preds = %2
  %29 = load i8*, i8** %3, align 8
  store i8* %29, i8** %13, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = call i32 @strlen(i8* %18)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %18, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 -3
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = call i32 @strlen(i8* %18)
  %41 = sub nsw i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %18, i64 %42
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %39, %30
  %45 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %46 = call i64 @RegCreateKeyA(i32 %45, i8* %18, i32* %12)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @skip(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %105

52:                                               ; preds = %44
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %11, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %18, i64 %57)
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 1, i32* %14, align 4
  br label %105

62:                                               ; preds = %52
  %63 = load i64, i64* %4, align 8
  %64 = icmp eq i64 %63, 3735928559
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @RegDeleteValueA(i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %73

68:                                               ; preds = %62
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @REG_DWORD, align 4
  %71 = bitcast i64* %4 to i32*
  %72 = call i32 @RegSetValueExA(i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %70, i32* %71, i32 8)
  br label %73

73:                                               ; preds = %68, %65
  %74 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 4)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 4, i32* %75, align 4
  %76 = load i8*, i8** %3, align 8
  %77 = load i64, i64* %4, align 8
  %78 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %76, i64 %77)
  %79 = load i32, i32* @FALSE, align 4
  %80 = call i32 @CreateProcessA(i32* null, i8* %21, i32* null, i32* null, i32 %79, i32 0, i32* null, i32* null, %struct.TYPE_6__* %9, %struct.TYPE_7__* %8)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (...) @GetLastError()
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 (i32, i8*, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @winetest_wait_child_process(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @CloseHandle(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @CloseHandle(i32 %96)
  br label %98

98:                                               ; preds = %88, %73
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @RegDeleteValueA(i32 %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @RegCloseKey(i32 %101)
  %103 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %104 = call i32 @RegDeleteKeyA(i32 %103, i8* %18)
  store i32 0, i32* %14, align 4
  br label %105

105:                                              ; preds = %98, %61, %50
  %106 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %14, align 4
  switch i32 %107, label %109 [
    i32 0, label %108
    i32 1, label %108
  ]

108:                                              ; preds = %105, %105
  ret void

109:                                              ; preds = %105
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @RegCreateKeyA(i32, i8*, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, i8*, ...) #2

declare dso_local i32 @RegDeleteValueA(i32, i8*) #2

declare dso_local i32 @RegSetValueExA(i32, i8*, i32, i32, i32*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_7__*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @winetest_wait_child_process(i32) #2

declare dso_local i32 @CloseHandle(i32) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
