; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHGetShellKey.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHGetShellKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SHGetShellKey.ShellFoldersW = internal constant [14 x i8] c"Shell Folders\00", align 1
@test_SHGetShellKey.WineTestW = internal constant [9 x i8] c"WineTest\00", align 1
@SHKEY_Key_Explorer = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SHKEY_Root_HKLM = common dso_local global i32 0, align 4
@SHKEY_Key_Classes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"hkey = NULL\0A\00", align 1
@SHKEY_Root_HKCU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"hkey != NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Can't open key\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Can't delete key\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Not authorized to create keys\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Can't create key\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"hres = %x\0A\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"size = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"data = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"hres= %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"*alloc_data = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHGetShellKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHGetShellKey() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @SetLastError(i32 -559038737)
  %7 = load i32, i32* @SHKEY_Key_Explorer, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i32* @pSHGetShellKey(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_SHGetShellKey.ShellFoldersW, i64 0, i64 0), i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %0
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @RegCloseKey(i32* %13)
  %15 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %16 = load i32, i32* @SHKEY_Key_Classes, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32* @pSHGetShellKey(i32 %17, i8* null, i32 %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @RegCloseKey(i32* %24)
  br label %26

26:                                               ; preds = %12, %0
  %27 = load i32, i32* @SHKEY_Root_HKCU, align 4
  %28 = load i32, i32* @SHKEY_Key_Explorer, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i32* @pSHGetShellKey(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_SHGetShellKey.ShellFoldersW, i64 0, i64 0), i32 %30)
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @RegCloseKey(i32* %36)
  %38 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %39 = load i32, i32* @SHKEY_Key_Explorer, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32* @pSHGetShellKey(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_SHGetShellKey.ShellFoldersW, i64 0, i64 0), i32 %41)
  store i32* %42, i32** %4, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @RegCloseKey(i32* %47)
  %49 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32* @pSHGetShellKey(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHGetShellKey.WineTestW, i64 0, i64 0), i32 %50)
  store i32* %51, i32** %4, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = icmp eq i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32* @pSHGetShellKey(i32 %56, i8* null, i32 %57)
  store i32* %58, i32** %4, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @RegDeleteKeyW(i32* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHGetShellKey.WineTestW, i64 0, i64 0))
  %65 = call i32 @SUCCEEDED(i32 %64)
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @RegCloseKey(i32* %67)
  %69 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32* @pSHGetShellKey(i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHGetShellKey.WineTestW, i64 0, i64 0), i32 %70)
  store i32* %71, i32** %4, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %26
  %75 = call i64 (...) @GetLastError()
  %76 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 @skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %206

80:                                               ; preds = %74, %26
  %81 = load i32*, i32** %4, align 8
  %82 = icmp ne i32* %81, null
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @RegCloseKey(i32* %85)
  store i32 4, i32* %3, align 4
  %87 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %88 = call i32 @pSKGetValueW(i32 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHGetShellKey.WineTestW, i64 0, i64 0), i32* null, i32* null, i32* %2, i32* %3)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %91 = call i32 @HRESULT_FROM_WIN32(i32 %90)
  %92 = icmp eq i32 %89, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  store i32 1234, i32* %2, align 4
  %96 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %97 = load i32, i32* @REG_DWORD, align 4
  %98 = call i32 @pSKSetValueW(i32 %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHGetShellKey.WineTestW, i64 0, i64 0), i32* null, i32 %97, i32* %2, i32 4)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @S_OK, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %5, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  store i32 1, i32* %3, align 4
  %105 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %106 = call i32 @pSKGetValueW(i32 %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHGetShellKey.WineTestW, i64 0, i64 0), i32* null, i32* null, i32* null, i32* %3)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @S_OK, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %5, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp eq i64 %114, 4
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %3, align 4
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  store i32 -559038737, i32* %2, align 4
  %119 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %120 = call i32 @pSKGetValueW(i32 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHGetShellKey.WineTestW, i64 0, i64 0), i32* null, i32* null, i32* %2, i32* %3)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @S_OK, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %5, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp eq i64 %128, 4
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %3, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %2, align 4
  %134 = icmp eq i32 %133, 1234
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %2, align 4
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %139 = bitcast i32** %1 to i8**
  %140 = call i32 @pSKAllocValueW(i32 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHGetShellKey.WineTestW, i64 0, i64 0), i32* null, i32* null, i8** %139, i32* %3)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @S_OK, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %5, align 4
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = icmp eq i64 %148, 4
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %3, align 4
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @SUCCEEDED(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %80
  %157 = load i32*, i32** %1, align 8
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 1234
  %160 = zext i1 %159 to i32
  %161 = load i32*, i32** %1, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %162)
  %164 = load i32*, i32** %1, align 8
  %165 = call i32 @LocalFree(i32* %164)
  br label %166

166:                                              ; preds = %156, %80
  %167 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %168 = call i32 @pSKDeleteValueW(i32 %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHGetShellKey.WineTestW, i64 0, i64 0), i32* null)
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @S_OK, align 4
  %171 = icmp eq i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %5, align 4
  %174 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %176 = call i32 @pSKDeleteValueW(i32 %175, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHGetShellKey.WineTestW, i64 0, i64 0), i32* null)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %179 = call i32 @HRESULT_FROM_WIN32(i32 %178)
  %180 = icmp eq i32 %177, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %5, align 4
  %183 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %185 = call i32 @pSKGetValueW(i32 %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHGetShellKey.WineTestW, i64 0, i64 0), i32* null, i32* null, i32* %2, i32* %3)
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %188 = call i32 @HRESULT_FROM_WIN32(i32 %187)
  %189 = icmp eq i32 %186, %188
  %190 = zext i1 %189 to i32
  %191 = load i32, i32* %5, align 4
  %192 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @SHKEY_Root_HKLM, align 4
  %194 = load i32, i32* @FALSE, align 4
  %195 = call i32* @pSHGetShellKey(i32 %193, i8* null, i32 %194)
  store i32* %195, i32** %4, align 8
  %196 = load i32*, i32** %4, align 8
  %197 = icmp ne i32* %196, null
  %198 = zext i1 %197 to i32
  %199 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @RegDeleteKeyW(i32* %200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SHGetShellKey.WineTestW, i64 0, i64 0))
  %202 = call i32 @SUCCEEDED(i32 %201)
  %203 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %204 = load i32*, i32** %4, align 8
  %205 = call i32 @RegCloseKey(i32* %204)
  br label %206

206:                                              ; preds = %166, %78
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @pSHGetShellKey(i32, i8*, i32) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @RegDeleteKeyW(i32*, i8*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @pSKGetValueW(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @pSKSetValueW(i32, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @pSKAllocValueW(i32, i8*, i32*, i32*, i8**, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @pSKDeleteValueW(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
