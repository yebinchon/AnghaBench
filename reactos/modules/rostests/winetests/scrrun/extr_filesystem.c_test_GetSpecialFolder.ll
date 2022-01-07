; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_GetSpecialFolder.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_GetSpecialFolder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@fs3 = common dso_local global i32 0, align 4
@WindowsFolder = common dso_local global i64 0, align 8
@E_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@TemporaryFolder = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"got %s, expected %s\0A\00", align 1
@SystemFolder = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetSpecialFolder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetSpecialFolder() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i32, i32* @fs3, align 4
  %12 = load i64, i64* @WindowsFolder, align 8
  %13 = call i64 @IFileSystem3_GetSpecialFolder(i32 %11, i64 %12, i32** null)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @E_POINTER, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %4, align 8
  %19 = call i32 (i32, i8*, i64, ...) @ok(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @fs3, align 4
  %21 = load i64, i64* @TemporaryFolder, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i64 @IFileSystem3_GetSpecialFolder(i32 %20, i64 %22, i32** null)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @E_POINTER, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = call i32 (i32, i8*, i64, ...) @ok(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @fs3, align 4
  %31 = load i64, i64* @TemporaryFolder, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i64 @IFileSystem3_GetSpecialFolder(i32 %30, i64 %32, i32** %3)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @E_INVALIDARG, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %4, align 8
  %39 = call i32 (i32, i8*, i64, ...) @ok(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @fs3, align 4
  %41 = load i64, i64* @WindowsFolder, align 8
  %42 = call i64 @IFileSystem3_GetSpecialFolder(i32 %40, i64 %41, i32** %3)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %4, align 8
  %48 = call i32 (i32, i8*, i64, ...) @ok(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i64 @IFolder_get_Path(i32* %49, i8** %6)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %4, align 8
  %56 = call i32 (i32, i8*, i64, ...) @ok(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = call i32 @ARRAY_SIZE(i8* %10)
  %58 = call i32 @GetWindowsDirectoryW(i8* %10, i32 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @lstrcmpiW(i8* %10, i8* %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @wine_dbgstr_w(i8* %64)
  %66 = sext i32 %65 to i64
  %67 = call i32 @wine_dbgstr_w(i8* %10)
  %68 = call i32 (i32, i8*, i64, ...) @ok(i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 %67)
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @SysFreeString(i8* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @IFolder_Release(i32* %71)
  %73 = load i32, i32* @fs3, align 4
  %74 = load i64, i64* @SystemFolder, align 8
  %75 = call i64 @IFileSystem3_GetSpecialFolder(i32 %73, i64 %74, i32** %3)
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %4, align 8
  %81 = call i32 (i32, i8*, i64, ...) @ok(i32 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i64 @IFolder_get_Path(i32* %82, i8** %6)
  store i64 %83, i64* %4, align 8
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @S_OK, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %4, align 8
  %89 = call i32 (i32, i8*, i64, ...) @ok(i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %88)
  %90 = call i32 @ARRAY_SIZE(i8* %10)
  %91 = call i32 @GetSystemDirectoryW(i8* %10, i32 %90)
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @lstrcmpiW(i8* %10, i8* %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @wine_dbgstr_w(i8* %97)
  %99 = sext i32 %98 to i64
  %100 = call i32 @wine_dbgstr_w(i8* %10)
  %101 = call i32 (i32, i8*, i64, ...) @ok(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %99, i32 %100)
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @SysFreeString(i8* %102)
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @IFolder_Release(i32* %104)
  %106 = load i32, i32* @fs3, align 4
  %107 = load i64, i64* @TemporaryFolder, align 8
  %108 = call i64 @IFileSystem3_GetSpecialFolder(i32 %106, i64 %107, i32** %3)
  store i64 %108, i64* %4, align 8
  %109 = load i64, i64* %4, align 8
  %110 = load i64, i64* @S_OK, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %4, align 8
  %114 = call i32 (i32, i8*, i64, ...) @ok(i32 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = call i64 @IFolder_get_Path(i32* %115, i8** %6)
  store i64 %116, i64* %4, align 8
  %117 = load i64, i64* %4, align 8
  %118 = load i64, i64* @S_OK, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %4, align 8
  %122 = call i32 (i32, i8*, i64, ...) @ok(i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %121)
  %123 = call i32 @ARRAY_SIZE(i8* %10)
  %124 = call i32 @GetTempPathW(i32 %123, i8* %10)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %0
  %128 = load i32, i32* %5, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %10, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 92
  br i1 %134, label %135, label %140

135:                                              ; preds = %127
  %136 = load i32, i32* %5, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %10, i64 %138
  store i8 0, i8* %139, align 1
  br label %140

140:                                              ; preds = %135, %127, %0
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @lstrcmpiW(i8* %10, i8* %141)
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @wine_dbgstr_w(i8* %146)
  %148 = sext i32 %147 to i64
  %149 = call i32 @wine_dbgstr_w(i8* %10)
  %150 = call i32 (i32, i8*, i64, ...) @ok(i32 %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %148, i32 %149)
  %151 = load i8*, i8** %6, align 8
  %152 = call i32 @SysFreeString(i8* %151)
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @IFolder_Release(i32* %153)
  %155 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %155)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IFileSystem3_GetSpecialFolder(i32, i64, i32**) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i64 @IFolder_get_Path(i32*, i8**) #2

declare dso_local i32 @GetWindowsDirectoryW(i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @lstrcmpiW(i8*, i8*) #2

declare dso_local i32 @wine_dbgstr_w(i8*) #2

declare dso_local i32 @SysFreeString(i8*) #2

declare dso_local i32 @IFolder_Release(i32*) #2

declare dso_local i32 @GetSystemDirectoryW(i8*, i32) #2

declare dso_local i32 @GetTempPathW(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
