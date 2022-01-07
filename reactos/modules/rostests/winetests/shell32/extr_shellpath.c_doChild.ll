; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_doChild.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_doChild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@CSIDL_FAVORITES = common dso_local global i32 0, align 4
@SHGFP_TYPE_CURRENT = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"SHGetFolderPath returned 0x%08x, expected 0x80070002\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"SHGetFolderLocation returned 0x%08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@pMalloc = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"SHGetSpecialFolderPath succeeded, expected failure\0A\00", align 1
@CSIDL_FLAG_CREATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"CSIDL_FAVORITES was changed to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"expected failure with ERROR_ALREADY_EXISTS\0A\00", align 1
@ERROR_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"got %d, expected ERROR_ALREADY_EXISTS\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\\desktop.ini\00", align 1
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to remove %s error %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"SHGetFolderPath failed: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @doChild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doChild(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 49
  br i1 %17, label %18, label %134

18:                                               ; preds = %1
  %19 = load i32, i32* @CSIDL_FAVORITES, align 4
  %20 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %21 = call i64 @pSHGetFolderPathA(i32* null, i32 %19, i32* null, i32 %20, i8* %12)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %24 = call i64 @HRESULT_FROM_WIN32(i32 %23)
  %25 = icmp eq i64 %22, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %5, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %27)
  store i32* null, i32** %6, align 8
  %29 = load i32, i32* @CSIDL_FAVORITES, align 4
  %30 = call i64 @pSHGetFolderLocation(i32* null, i32 %29, i32* null, i32 0, i32** %6)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @E_FAIL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %18
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %37 = call i64 @HRESULT_FROM_WIN32(i32 %36)
  %38 = icmp eq i64 %35, %37
  br label %39

39:                                               ; preds = %34, %18
  %40 = phi i1 [ true, %18 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %5, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @pMalloc, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @IMalloc_Free(i32 %51, i32* %52)
  br label %54

54:                                               ; preds = %50, %47, %39
  %55 = load i32, i32* @CSIDL_FAVORITES, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i32 @pSHGetSpecialFolderPathA(i32* null, i8* %12, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  %62 = load i32, i32* @CSIDL_FAVORITES, align 4
  %63 = call i64 @pSHGetSpecialFolderLocation(i32* null, i32 %62, i32** %6)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @E_FAIL, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %54
  %68 = load i64, i64* %5, align 8
  %69 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %70 = call i64 @HRESULT_FROM_WIN32(i32 %69)
  %71 = icmp eq i64 %68, %70
  br label %72

72:                                               ; preds = %67, %54
  %73 = phi i1 [ true, %54 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %5, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @S_OK, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load i32*, i32** %6, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* @pMalloc, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @IMalloc_Free(i32 %84, i32* %85)
  br label %87

87:                                               ; preds = %83, %80, %72
  %88 = load i32, i32* @CSIDL_FAVORITES, align 4
  %89 = load i32, i32* @CSIDL_FLAG_CREATE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %92 = call i64 @pSHGetFolderPathA(i32* null, i32 %90, i32* null, i32 %91, i8* %12)
  store i64 %92, i64* %5, align 8
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @S_OK, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i64, i64* %5, align 8
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %97)
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* @S_OK, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %133

102:                                              ; preds = %87
  %103 = call i32 @trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %12)
  %104 = call i32 @CreateDirectoryA(i8* %12, i32* null)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %102
  %113 = call i64 (...) @GetLastError()
  %114 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i64 (...) @GetLastError()
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %117)
  br label %119

119:                                              ; preds = %112, %102
  %120 = call i32 @strlen(i8* %12)
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %12, i64 %121
  store i8* %122, i8** %7, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @strcpy(i8* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %125 = call i32 @DeleteFileA(i8* %12)
  %126 = load i8*, i8** %7, align 8
  store i8 0, i8* %126, align 1
  %127 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %128 = call i32 @SetFileAttributesA(i8* %12, i32 %127)
  %129 = call i32 @RemoveDirectoryA(i8* %12)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i64 (...) @GetLastError()
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %12, i64 %131)
  br label %133

133:                                              ; preds = %119, %87
  br label %153

134:                                              ; preds = %1
  %135 = load i8*, i8** %2, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 50
  br i1 %139, label %140, label %152

140:                                              ; preds = %134
  %141 = load i32, i32* @CSIDL_FAVORITES, align 4
  %142 = load i32, i32* @CSIDL_FLAG_CREATE, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @SHGFP_TYPE_CURRENT, align 4
  %145 = call i64 @pSHGetFolderPathA(i32* null, i32 %143, i32* null, i32 %144, i8* %12)
  store i64 %145, i64* %5, align 8
  %146 = load i64, i64* %5, align 8
  %147 = load i64, i64* @S_OK, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i64, i64* %5, align 8
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %150)
  br label %152

152:                                              ; preds = %140, %134
  br label %153

153:                                              ; preds = %152, %133
  %154 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %154)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pSHGetFolderPathA(i32*, i32, i32*, i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i64 @pSHGetFolderLocation(i32*, i32, i32*, i32, i32**) #2

declare dso_local i32 @IMalloc_Free(i32, i32*) #2

declare dso_local i32 @pSHGetSpecialFolderPathA(i32*, i8*, i32, i32) #2

declare dso_local i64 @pSHGetSpecialFolderLocation(i32*, i32, i32**) #2

declare dso_local i32 @trace(i8*, i8*) #2

declare dso_local i32 @CreateDirectoryA(i8*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @SetFileAttributesA(i8*, i32) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
