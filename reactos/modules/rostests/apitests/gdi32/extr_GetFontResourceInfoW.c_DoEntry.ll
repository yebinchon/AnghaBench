; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetFontResourceInfoW.c_DoEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetFontResourceInfoW.c_DoEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"GetSystemFontPath: %S\0A\00", align 1
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Font file \22%S\22 was not found\0A\00", align 1
@RT_RCDATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i32] [i32 70, i32 78, i32 84, i32 0], align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"GetTempFileNameW: %S\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Font file \22%S\22 was not stored\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Font file \22%S\22 was not installed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @DoEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoEntry(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %3, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @GetSystemFontPath(i32* %17, i32 %29)
  %31 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %17)
  %32 = call i64 @GetFileAttributesW(i32* %17)
  %33 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  store i32 1, i32* %7, align 4
  br label %113

37:                                               ; preds = %26
  br label %88

38:                                               ; preds = %1
  %39 = call i32 @GetModuleHandleW(i32* null)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* @RT_RCDATA, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @FindResourceW(i32 %40, i32 %43, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @LoadResource(i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @SizeofResource(i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @LockResource(i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = call i32 @_countof(i32* %20)
  %56 = call i32 @GetTempPathW(i32 %55, i32* %20)
  %57 = call i32 @GetTempFileNameW(i32* %20, i8* bitcast ([4 x i32]* @.str.2 to i8*), i32 0, i32* %17)
  %58 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %17)
  %59 = load i32, i32* @GENERIC_WRITE, align 4
  %60 = load i32, i32* @FILE_SHARE_READ, align 4
  %61 = load i32, i32* @CREATE_ALWAYS, align 4
  %62 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %63 = call i32 @CreateFileW(i32* %17, i32 %59, i32 %60, i32* null, i32 %61, i32 %62, i32* null)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @WriteFile(i32 %64, i32 %65, i32 %66, i32* %12, i32* null)
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @CloseHandle(i32 %68)
  %70 = call i64 @GetFileAttributesW(i32* %17)
  %71 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %38
  %74 = call i32 @skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32* %17)
  store i32 1, i32* %7, align 4
  br label %113

75:                                               ; preds = %38
  %76 = call i32 @AddFontResourceW(i32* %17)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = call i32 @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32* %17)
  %85 = call i32 @RemoveFontResourceW(i32* %17)
  %86 = call i32 @DeleteFileW(i32* %17)
  store i32 1, i32* %7, align 4
  br label %113

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %37
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = call i32 @Test_GetFontResourceInfoW_case0(i32* %17, %struct.TYPE_9__* %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = call i32 @Test_GetFontResourceInfoW_case1(i32* %17, %struct.TYPE_9__* %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = call i32 @Test_GetFontResourceInfoW_case2(i32* %17, %struct.TYPE_9__* %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %96 = call i32 @Test_GetFontResourceInfoW_case3(i32* %17, %struct.TYPE_9__* %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %98 = call i32 @Test_GetFontResourceInfoW_case4(i32* %17, %struct.TYPE_9__* %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = call i32 @Test_GetFontResourceInfoW_case5(i32* %17, %struct.TYPE_9__* %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = call i32 @RemoveFontResourceW(i32* %17)
  %110 = call i32 @DeleteFileW(i32* %17)
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %88
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %112, %83, %73, %35
  %114 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %7, align 4
  switch i32 %115, label %117 [
    i32 0, label %116
    i32 1, label %116
  ]

116:                                              ; preds = %113, %113
  ret void

117:                                              ; preds = %113
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSystemFontPath(i32*, i32) #2

declare dso_local i32 @printf(i8*, i32*) #2

declare dso_local i64 @GetFileAttributesW(i32*) #2

declare dso_local i32 @skip(i8*, i32*) #2

declare dso_local i32 @GetModuleHandleW(i32*) #2

declare dso_local i32 @FindResourceW(i32, i32, i32) #2

declare dso_local i32 @LoadResource(i32, i32) #2

declare dso_local i32 @SizeofResource(i32, i32) #2

declare dso_local i32 @LockResource(i32) #2

declare dso_local i32 @GetTempPathW(i32, i32*) #2

declare dso_local i32 @_countof(i32*) #2

declare dso_local i32 @GetTempFileNameW(i32*, i8*, i32, i32*) #2

declare dso_local i32 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @WriteFile(i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i32) #2

declare dso_local i32 @AddFontResourceW(i32*) #2

declare dso_local i32 @RemoveFontResourceW(i32*) #2

declare dso_local i32 @DeleteFileW(i32*) #2

declare dso_local i32 @Test_GetFontResourceInfoW_case0(i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @Test_GetFontResourceInfoW_case1(i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @Test_GetFontResourceInfoW_case2(i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @Test_GetFontResourceInfoW_case3(i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @Test_GetFontResourceInfoW_case4(i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @Test_GetFontResourceInfoW_case5(i32*, %struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
