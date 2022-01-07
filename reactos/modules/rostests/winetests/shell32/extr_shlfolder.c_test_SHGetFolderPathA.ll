; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_SHGetFolderPathA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_SHGetFolderPathA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SHGetFolderPathA.is_win64 = internal constant i32 1, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CSIDL_PROGRAM_FILES = common dso_local global i32 0, align 4
@SHGFP_TYPE_CURRENT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SHGetFolderPathA failed %x\0A\00", align 1
@CSIDL_PROGRAM_FILESX86 = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Program Files (x86) not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"paths are identical '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"64-bit path '%s' contains x86\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"32-bit path '%s' doesn't contain x86\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ProgramFilesDir (x86)\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"ProgramFilesDir (x86) exists on 32-bit setup\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"paths differ '%s' != '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"ProgramFilesDir (x86) should exist on 64-bit setup\0A\00", align 1
@CSIDL_PROGRAM_FILES_COMMON = common dso_local global i32 0, align 4
@CSIDL_PROGRAM_FILES_COMMONX86 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"Common Files (x86) not supported\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"CommonFilesDir (x86)\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"CommonFilesDir (x86) exists on 32-bit setup\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"CommonFilesDir (x86) should exist on 64-bit setup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHGetFolderPathA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHGetFolderPathA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %2, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %3, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %4, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %5, align 8
  %23 = call i32 (...) @GetCurrentProcess()
  %24 = call i32 @pIsWow64Process(i32 %23, i32* %1)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %0
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %26, %0
  %29 = load i32, i32* @CSIDL_PROGRAM_FILES, align 4
  %30 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %31 = call i32 @SHGetFolderPathA(i32 0, i32 %29, i32 0, i32 %30, i8* %16)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @S_OK, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @CSIDL_PROGRAM_FILESX86, align 4
  %39 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %40 = call i32 @SHGetFolderPathA(i32 0, i32 %38, i32 0, i32 %39, i8* %19)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @E_FAIL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %139

46:                                               ; preds = %28
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @S_OK, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = call i32 @lstrcmpiA(i8* %16, i8* %19)
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %55 = call i32* @strstr(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp eq i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  %59 = call i32* @strstr(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %19)
  %63 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %64 = call i32 @RegOpenKeyA(i32 %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32* %7)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %46
  %67 = trunc i64 %18 to i32
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = bitcast i8* %22 to i32*
  %70 = call i32 @RegQueryValueExA(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* %9, i32* %69, i32* %10)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %66
  %73 = call i32 (i32, i8*, ...) @ok(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %74 = call i32 @lstrcmpiA(i8* %22, i8* %19)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %22, i8* %19)
  br label %81

79:                                               ; preds = %66
  %80 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %72
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @RegCloseKey(i32 %82)
  br label %84

84:                                               ; preds = %81, %46
  %85 = load i32, i32* @CSIDL_PROGRAM_FILES_COMMON, align 4
  %86 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %87 = call i32 @SHGetFolderPathA(i32 0, i32 %85, i32 0, i32 %86, i8* %16)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @S_OK, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @CSIDL_PROGRAM_FILES_COMMONX86, align 4
  %95 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %96 = call i32 @SHGetFolderPathA(i32 0, i32 %94, i32 0, i32 %95, i8* %19)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @E_FAIL, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %84
  %101 = call i32 @win_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %139

102:                                              ; preds = %84
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @S_OK, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = call i32 @lstrcmpiA(i8* %16, i8* %19)
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %111 = call i32* @strstr(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %112 = icmp eq i32* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  %115 = call i32* @strstr(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %116 = icmp ne i32* %115, null
  %117 = zext i1 %116 to i32
  %118 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %19)
  %119 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %120 = call i32 @RegOpenKeyA(i32 %119, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32* %7)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %138, label %122

122:                                              ; preds = %102
  %123 = trunc i64 %18 to i32
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %7, align 4
  %125 = bitcast i8* %22 to i32*
  %126 = call i32 @RegQueryValueExA(i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32* null, i32* %11, i32* %125, i32* %12)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %122
  %129 = call i32 (i32, i8*, ...) @ok(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  %130 = call i32 @lstrcmpiA(i8* %22, i8* %19)
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %22, i8* %19)
  br label %137

135:                                              ; preds = %122
  %136 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %128
  br label %138

138:                                              ; preds = %137, %102
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %138, %100, %44
  %140 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %8, align 4
  switch i32 %141, label %143 [
    i32 0, label %142
    i32 1, label %142
  ]

142:                                              ; preds = %139, %139
  ret void

143:                                              ; preds = %139
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pIsWow64Process(i32, i32*) #2

declare dso_local i32 @GetCurrentProcess(...) #2

declare dso_local i32 @SHGetFolderPathA(i32, i32, i32, i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @lstrcmpiA(i8*, i8*) #2

declare dso_local i32* @strstr(i8*, i8*) #2

declare dso_local i32 @RegOpenKeyA(i32, i8*, i32*) #2

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
