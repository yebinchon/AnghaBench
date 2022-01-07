; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_ShellItemGetAttributes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_ShellItemGetAttributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_ShellItemGetAttributes.testdir1W = internal constant [8 x i8] c"testdir\00", align 1
@test_ShellItemGetAttributes.testfile1W = internal constant [18 x i8] c"testdir\\test1.txt\00", align 16
@CSIDL_DESKTOP = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Skipping tests.\0A\00", align 1
@SFGAO_FOLDER = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ShellItemGetAttributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ShellItemGetAttributes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %20 = load i32, i32* @CSIDL_DESKTOP, align 4
  %21 = call i32 @SHGetSpecialFolderLocation(i32* null, i32 %20, i32* %5)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @S_OK, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @SUCCEEDED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %0
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pSHCreateShellItem(i32* null, i32* null, i32 %32, i32** %1)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @S_OK, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ILFree(i32 %40)
  br label %42

42:                                               ; preds = %31, %0
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @skip(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %177

48:                                               ; preds = %42
  store i32 -559038737, i32* %7, align 4
  %49 = load i32*, i32** %1, align 8
  %50 = load i32, i32* @SFGAO_FOLDER, align 4
  %51 = call i32 @IShellItem_GetAttributes(i32* %49, i32 %50, i32* %7)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @S_OK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @E_FAIL, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @broken(i32 %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %55, %48
  %63 = phi i1 [ true, %48 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SFGAO_FOLDER, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @broken(i32 %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %70, %62
  %77 = phi i1 [ true, %62 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @IShellItem_Release(i32* %81)
  %83 = call i32 (...) @CreateFilesFolders()
  %84 = call i32 @SHGetDesktopFolder(i32** %4)
  %85 = load i32, i32* @MAX_PATH, align 4
  %86 = call i32 @GetCurrentDirectoryW(i32 %85, i8* %16)
  %87 = call i32 @myPathAddBackslashW(i8* %16)
  %88 = call i32 @lstrcpyW(i8* %19, i8* %16)
  %89 = call i32 @lstrcatW(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_ShellItemGetAttributes.testdir1W, i64 0, i64 0))
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @IShellFolder_ParseDisplayName(i32* %90, i32* null, i32* null, i8* %19, i32* null, i32* %6, i32* null)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @S_OK, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @pSHCreateShellItem(i32* null, i32* null, i32 %98, i32** %2)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @S_OK, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @ILFree(i32 %106)
  %108 = call i32 @lstrcpyW(i8* %19, i8* %16)
  %109 = call i32 @lstrcatW(i8* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_ShellItemGetAttributes.testfile1W, i64 0, i64 0))
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @IShellFolder_ParseDisplayName(i32* %110, i32* null, i32* null, i8* %19, i32* null, i32* %6, i32* null)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @S_OK, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @pSHCreateShellItem(i32* null, i32* null, i32 %118, i32** %3)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @S_OK, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @ILFree(i32 %126)
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @IShellFolder_Release(i32* %128)
  store i32 -559038737, i32* %7, align 4
  %130 = load i32*, i32** %2, align 8
  %131 = call i32 @IShellItem_GetAttributes(i32* %130, i32 0, i32* %7)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @S_OK, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @ok(i32 %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %141)
  store i32 -559038737, i32* %7, align 4
  %143 = load i32*, i32** %2, align 8
  %144 = load i32, i32* @SFGAO_FOLDER, align 4
  %145 = call i32 @IShellItem_GetAttributes(i32* %143, i32 %144, i32* %7)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @S_OK, align 4
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @ok(i32 %149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @SFGAO_FOLDER, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @ok(i32 %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %156)
  store i32 -559038737, i32* %7, align 4
  %158 = load i32*, i32** %3, align 8
  %159 = load i32, i32* @SFGAO_FOLDER, align 4
  %160 = call i32 @IShellItem_GetAttributes(i32* %158, i32 %159, i32* %7)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @S_FALSE, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @ok(i32 %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @ok(i32 %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %170)
  %172 = load i32*, i32** %2, align 8
  %173 = call i32 @IShellItem_Release(i32* %172)
  %174 = load i32*, i32** %3, align 8
  %175 = call i32 @IShellItem_Release(i32* %174)
  %176 = call i32 (...) @Cleanup()
  store i32 0, i32* %12, align 4
  br label %177

177:                                              ; preds = %76, %46
  %178 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %12, align 4
  switch i32 %179, label %181 [
    i32 0, label %180
    i32 1, label %180
  ]

180:                                              ; preds = %177, %177
  ret void

181:                                              ; preds = %177
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SHGetSpecialFolderLocation(i32*, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @pSHCreateShellItem(i32*, i32*, i32, i32**) #2

declare dso_local i32 @ILFree(i32) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @IShellItem_GetAttributes(i32*, i32, i32*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @IShellItem_Release(i32*) #2

declare dso_local i32 @CreateFilesFolders(...) #2

declare dso_local i32 @SHGetDesktopFolder(i32**) #2

declare dso_local i32 @GetCurrentDirectoryW(i32, i8*) #2

declare dso_local i32 @myPathAddBackslashW(i8*) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i32 @IShellFolder_ParseDisplayName(i32*, i32*, i32*, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @IShellFolder_Release(i32*) #2

declare dso_local i32 @Cleanup(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
