; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_test_NonExistentPath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_test_NonExistentPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@test_NonExistentPath.userShellFolders = internal constant [70 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\User Shell Folders\00", align 16
@MAX_PATH = common dso_local global i32 0, align 4
@pSHGetFolderPathA = common dso_local global i32 0, align 4
@pSHGetFolderLocation = common dso_local global i32 0, align 4
@pSHGetSpecialFolderPathA = common dso_local global i32 0, align 4
@pSHGetSpecialFolderLocation = common dso_local global i32 0, align 4
@pSHFileOperationA = common dso_local global i32 0, align 4
@shellVersion = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Favorites\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Changing CSIDL_FAVORITES to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s tests/shellpath.c 1\00", align 1
@selfname = common dso_local global i8* null, align 8
@STARTF_USESHOWWINDOW = common dso_local global i8* null, align 8
@SW_SHOWNORMAL = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Restoring CSIDL_FAVORITES to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s tests/shellpath.c 2\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"child process termination\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"RegQueryValueExA(key, Favorites, ...) failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"RegOpenKeyExA(HKEY_CURRENT_USER, %s, ...) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_NonExistentPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_NonExistentPath() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %1, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %2, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %3, align 8
  %20 = load i32, i32* @pSHGetFolderPathA, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %0
  store i32 1, i32* %5, align 4
  br label %132

23:                                               ; preds = %0
  %24 = load i32, i32* @pSHGetFolderLocation, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %132

27:                                               ; preds = %23
  %28 = load i32, i32* @pSHGetSpecialFolderPathA, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %132

31:                                               ; preds = %27
  %32 = load i32, i32* @pSHGetSpecialFolderLocation, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %132

35:                                               ; preds = %31
  %36 = load i32, i32* @pSHFileOperationA, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %132

39:                                               ; preds = %35
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @shellVersion, i32 0, i32 0), align 4
  %41 = icmp slt i32 %40, 5
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %132

43:                                               ; preds = %39
  %44 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %45 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %46 = call i32 @RegOpenKeyExA(i32 %44, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @test_NonExistentPath.userShellFolders, i64 0, i64 0), i32 0, i32 %45, i64* %4)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %129, label %48

48:                                               ; preds = %43
  %49 = trunc i64 %14 to i32
  store i32 %49, i32* %6, align 4
  %50 = load i64, i64* %4, align 8
  %51 = ptrtoint i8* %16 to i32
  %52 = call i32 @RegQueryValueExA(i64 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32* %7, i32 %51, i32* %6)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %120, label %54

54:                                               ; preds = %48
  %55 = call i32 @strlen(i8* %16)
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @memcpy(i8* %19, i8* %16, i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %8, align 8
  %61 = getelementptr inbounds i8, i8* %19, i64 %59
  store i8 50, i8* %61, align 1
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %19, i64 %62
  store i8 0, i8* %64, align 1
  %65 = call i32 @trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %66 = load i64, i64* %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = ptrtoint i8* %19 to i32
  %69 = load i64, i64* %8, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @RegSetValueExA(i64 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 %67, i32 %68, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %119, label %73

73:                                               ; preds = %54
  %74 = load i32, i32* @MAX_PATH, align 4
  %75 = add nsw i32 %74, 20
  %76 = zext i32 %75 to i64
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %9, align 8
  %78 = alloca i8, i64 %76, align 16
  store i64 %76, i64* %10, align 8
  %79 = load i8*, i8** @selfname, align 8
  %80 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = call i32 @memset(%struct.TYPE_7__* %11, i32 0, i32 24)
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 24, i32* %82, align 8
  %83 = load i8*, i8** @STARTF_USESHOWWINDOW, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i8* %83, i8** %84, align 8
  %85 = load i8*, i8** @SW_SHOWNORMAL, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i32 @CreateProcessA(i32* null, i8* %78, i32* null, i32* null, i32 %87, i64 0, i32* null, i32* null, %struct.TYPE_7__* %11, %struct.TYPE_8__* %12)
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @winetest_wait_child_process(i32 %90)
  %92 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %16)
  %93 = load i64, i64* %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = ptrtoint i8* %16 to i32
  %96 = call i32 @strlen(i8* %16)
  %97 = add nsw i32 %96, 1
  %98 = call i32 @RegSetValueExA(i64 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 %94, i32 %95, i32 %97)
  %99 = load i64, i64* %4, align 8
  %100 = call i32 @RegFlushKey(i64 %99)
  %101 = load i8*, i8** @selfname, align 8
  %102 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  %103 = call i32 @memset(%struct.TYPE_7__* %11, i32 0, i32 24)
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 24, i32* %104, align 8
  %105 = load i8*, i8** @STARTF_USESHOWWINDOW, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i8* %105, i8** %106, align 8
  %107 = load i8*, i8** @SW_SHOWNORMAL, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i8* %107, i8** %108, align 8
  %109 = load i32, i32* @FALSE, align 4
  %110 = call i32 @CreateProcessA(i32* null, i8* %78, i32* null, i32* null, i32 %109, i64 0, i32* null, i32* null, %struct.TYPE_7__* %11, %struct.TYPE_8__* %12)
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @WaitForSingleObject(i32 %112, i32 30000)
  %114 = load i64, i64* @WAIT_OBJECT_0, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %118)
  br label %119

119:                                              ; preds = %73, %54
  br label %122

120:                                              ; preds = %48
  %121 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %119
  %123 = load i64, i64* %4, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i64, i64* %4, align 8
  %127 = call i32 @RegCloseKey(i64 %126)
  br label %128

128:                                              ; preds = %125, %122
  br label %131

129:                                              ; preds = %43
  %130 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @test_NonExistentPath.userShellFolders, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %128
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %42, %38, %34, %30, %26, %22
  %133 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %5, align 4
  switch i32 %134, label %136 [
    i32 0, label %135
    i32 1, label %135
  ]

135:                                              ; preds = %132, %132
  ret void

136:                                              ; preds = %132
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RegOpenKeyExA(i32, i8*, i32, i32, i64*) #2

declare dso_local i32 @RegQueryValueExA(i64, i8*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @trace(i8*, i8*) #2

declare dso_local i32 @RegSetValueExA(i64, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i64, i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_8__*) #2

declare dso_local i32 @winetest_wait_child_process(i32) #2

declare dso_local i32 @RegFlushKey(i64) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i64 @WaitForSingleObject(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @skip(i8*, ...) #2

declare dso_local i32 @RegCloseKey(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
