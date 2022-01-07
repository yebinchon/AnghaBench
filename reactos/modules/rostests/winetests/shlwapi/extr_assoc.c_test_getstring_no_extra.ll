; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_assoc.c_test_getstring_no_extra.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_assoc.c_test_getstring_no_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_getstring_no_extra.dotWinetest = internal constant [10 x i8] c".winetest\00", align 1
@test_getstring_no_extra.winetestfile = internal constant [13 x i8] c"winetestfile\00", align 1
@test_getstring_no_extra.winetestfileAction = internal constant [31 x i8] c"winetestfile\\shell\\foo\\command\00", align 16
@test_getstring_no_extra.action = internal constant [12 x i8] c"notepad.exe\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"failed to create dotWinetest key\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to set dotWinetest key\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to create winetestfileAction key\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to set winetestfileAction key\0A\00", align 1
@ASSOCSTR_EXECUTABLE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Unexpected result : %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"got '%s' (Expected result to include 'notepad.exe')\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getstring_no_extra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getstring_no_extra() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  store i32 %12, i32* %6, align 4
  %13 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %13, align 16
  %14 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %15 = call i64 @RegCreateKeyA(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_getstring_no_extra.dotWinetest, i64 0, i64 0), i32* %2)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call i32 @skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %84

21:                                               ; preds = %0
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @REG_SZ, align 4
  %24 = call i32 @lstrlenA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_getstring_no_extra.winetestfile, i64 0, i64 0))
  %25 = call i64 @RegSetValueA(i32 %22, i32* null, i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_getstring_no_extra.winetestfile, i64 0, i64 0), i32 %24)
  store i64 %25, i64* %1, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @RegCloseKey(i32 %26)
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 @skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %79

33:                                               ; preds = %21
  %34 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %35 = call i64 @RegCreateKeyA(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @test_getstring_no_extra.winetestfileAction, i64 0, i64 0), i32* %2)
  store i64 %35, i64* %1, align 8
  %36 = load i64, i64* %1, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %79

41:                                               ; preds = %33
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @REG_SZ, align 4
  %44 = call i32 @lstrlenA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_getstring_no_extra.action, i64 0, i64 0))
  %45 = call i64 @RegSetValueA(i32 %42, i32* null, i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_getstring_no_extra.action, i64 0, i64 0), i32 %44)
  store i64 %45, i64* %1, align 8
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @RegCloseKey(i32 %46)
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %79

53:                                               ; preds = %41
  %54 = load i32, i32* @ASSOCSTR_EXECUTABLE, align 4
  %55 = call i64 @pAssocQueryStringA(i32 0, i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_getstring_no_extra.dotWinetest, i64 0, i64 0), i8* null, i8* %11, i32* %6)
  store i64 %55, i64* %3, align 8
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load i64, i64* %3, align 8
  %61 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %62 = call i64 @HRESULT_FROM_WIN32(i32 %61)
  %63 = icmp eq i64 %60, %62
  br label %64

64:                                               ; preds = %59, %53
  %65 = phi i1 [ true, %53 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %3, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* @ASSOCSTR_EXECUTABLE, align 4
  %71 = call i64 @pAssocQueryStringA(i32 0, i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_getstring_no_extra.dotWinetest, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %11, i32* %6)
  store i64 %71, i64* %3, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = load i64, i64* %3, align 8
  %74 = call i32 @expect_hr(i64 %72, i64 %73)
  %75 = call i32* @strstr(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_getstring_no_extra.action, i64 0, i64 0))
  %76 = icmp ne i32* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %11)
  br label %79

79:                                               ; preds = %64, %51, %39, %31
  %80 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %81 = call i32 @SHDeleteKeyA(i32 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_getstring_no_extra.dotWinetest, i64 0, i64 0))
  %82 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %83 = call i32 @SHDeleteKeyA(i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_getstring_no_extra.winetestfile, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %79, %19
  %85 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %7, align 4
  switch i32 %86, label %88 [
    i32 0, label %87
    i32 1, label %87
  ]

87:                                               ; preds = %84, %84
  ret void

88:                                               ; preds = %84
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegCreateKeyA(i32, i8*, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i64 @RegSetValueA(i32, i32*, i32, i8*, i32) #2

declare dso_local i32 @lstrlenA(i8*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i64 @pAssocQueryStringA(i32, i32, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i8*) #2

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @expect_hr(i64, i64) #2

declare dso_local i32* @strstr(i8*, i8*) #2

declare dso_local i32 @SHDeleteKeyA(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
