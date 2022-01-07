; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_files.c_test_AddDelBackupEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_files.c_test_AddDelBackupEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@CURR_DIR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"\\backup\\basename.INI\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"basename\00", align 1
@AADBE_ADD_ENTRY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Expected S_OK, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Expected path to not exist\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\\backup\\.INI\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"one\00two\00three\00\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\\basename.INI\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"c:\\basename.INI\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"c:\\\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c"Expected ini file to be hidden\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Expected path to exist\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Test file could not be created\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Expected ini file to not be hidden\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"%s\\basename.INI\00", align 1
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"one\00three\00\00", align 1
@AADBE_DEL_ENTRY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AddDelBackupEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AddDelBackupEntry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %13 = load i8*, i8** @CURR_DIR, align 8
  %14 = call i32 @lstrcpyA(i8* %9, i8* %13)
  %15 = call i32 @lstrcatA(i8* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @AADBE_ADD_ENTRY, align 4
  %17 = call i64 @pAddDelBackupEntry(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %2, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %22)
  %24 = call i32 @DeleteFileA(i8* %9)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i8*, i8** @CURR_DIR, align 8
  %30 = call i32 @lstrcpyA(i8* %9, i8* %29)
  %31 = call i32 @lstrcatA(i8* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32, i32* @AADBE_ADD_ENTRY, align 4
  %33 = call i64 @pAddDelBackupEntry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %32)
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %2, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = call i32 @DeleteFileA(i8* %9)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i8*, i8** @CURR_DIR, align 8
  %46 = call i32 @lstrcpyA(i8* %9, i8* %45)
  %47 = call i32 @lstrcatA(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %48 = call i64 @pAddDelBackupEntry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i64 %48, i64* %2, align 8
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %2, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  %55 = call i32 @DeleteFileA(i8* %9)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %60 = call i32 @lstrcpyA(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %61 = load i32, i32* @AADBE_ADD_ENTRY, align 4
  %62 = call i64 @pAddDelBackupEntry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i64 %62, i64* %2, align 8
  %63 = load i64, i64* %2, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %2, align 8
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %67)
  %69 = call i64 @GetFileAttributesA(i8* %9)
  %70 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %0
  %73 = call i32 @check_ini_file_attr(i8* %9)
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %75 = call i32 @DeleteFileA(i8* %9)
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %79

77:                                               ; preds = %0
  %78 = call i32 @win_skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i8*, i8** @CURR_DIR, align 8
  %81 = call i32 @lstrcpyA(i8* %9, i8* %80)
  %82 = call i32 @lstrcatA(i8* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %83 = call i32 @RemoveDirectoryA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @AADBE_ADD_ENTRY, align 4
  %85 = call i64 @pAddDelBackupEntry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  store i64 %85, i64* %2, align 8
  %86 = load i64, i64* %2, align 8
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %2, align 8
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %90)
  %92 = call i32 @check_ini_file_attr(i8* %9)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %97 = call i32 @DeleteFileA(i8* %9)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %102 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %103 = load i32, i32* @AADBE_ADD_ENTRY, align 4
  %104 = call i64 @pAddDelBackupEntry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  store i64 %104, i64* %2, align 8
  %105 = load i64, i64* %2, align 8
  %106 = load i64, i64* @S_OK, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %2, align 8
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %109)
  %111 = call i32 @check_ini_file_attr(i8* %9)
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %113 = call i32 @DeleteFileA(i8* %9)
  %114 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %115 = call i32 @RemoveDirectoryA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %116 = trunc i64 %11 to i32
  %117 = call i32 @GetWindowsDirectoryA(i8* %12, i32 %116)
  %118 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* %12)
  %119 = load i32, i32* @AADBE_ADD_ENTRY, align 4
  %120 = call i64 @pAddDelBackupEntry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  store i64 %120, i64* %2, align 8
  %121 = load i64, i64* %2, align 8
  %122 = load i64, i64* @S_OK, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i64, i64* %2, align 8
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %125)
  %127 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %128 = call i32 @SetFileAttributesA(i8* %9, i32 %127)
  %129 = load i32, i32* @AADBE_DEL_ENTRY, align 4
  %130 = call i64 @pAddDelBackupEntry(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  store i64 %130, i64* %2, align 8
  %131 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %132 = call i32 @SetFileAttributesA(i8* %9, i32 %131)
  %133 = load i64, i64* %2, align 8
  %134 = load i64, i64* @S_OK, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %2, align 8
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %137)
  %139 = call i32 @DeleteFileA(i8* %9)
  store i32 %139, i32* %1, align 4
  %140 = load i32, i32* %1, align 4
  %141 = load i32, i32* @TRUE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %150, label %143

143:                                              ; preds = %79
  %144 = load i32, i32* %1, align 4
  %145 = load i32, i32* @FALSE, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i64 @broken(i32 %147)
  %149 = icmp ne i64 %148, 0
  br label %150

150:                                              ; preds = %143, %79
  %151 = phi i1 [ true, %79 ], [ %149, %143 ]
  %152 = zext i1 %151 to i32
  %153 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %154 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %154)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i64 @pAddDelBackupEntry(i8*, i8*, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i64 @GetFileAttributesA(i8*) #2

declare dso_local i32 @check_ini_file_attr(i8*) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

declare dso_local i32 @CreateDirectoryA(i8*, i32*) #2

declare dso_local i32 @GetWindowsDirectoryA(i8*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @SetFileAttributesA(i8*, i32) #2

declare dso_local i64 @broken(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
