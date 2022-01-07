; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_GetAbsolutePathName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_GetAbsolutePathName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_GetAbsolutePathName.dir1 = internal constant [10 x i8] c"test_dir1\00", align 1
@test_GetAbsolutePathName.dir2 = internal constant [10 x i8] c"test_dir2\00", align 1
@test_GetAbsolutePathName.dir_match1 = internal constant [10 x i8] c"test_dir*\00", align 1
@test_GetAbsolutePathName.dir_match2 = internal constant [9 x i8] c"test_di*\00", align 1
@test_GetAbsolutePathName.cur_dir = internal constant [2 x i8] c".\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@fs3 = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"GetAbsolutePathName returned %x, expected E_POINTER\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"GetAbsolutePathName returned %x, expected S_OK\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"result = %s, expected %s\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"GetAbsolutePathName tests\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"CreateDirectory(%s) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetAbsolutePathName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetAbsolutePathName() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %17 = load i32, i32* @fs3, align 4
  %18 = call i64 @IFileSystem3_GetAbsolutePathName(i32 %17, i8* null, i8** null)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @E_POINTER, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %8, align 8
  %24 = call i32 (i32, i8*, i64, ...) @ok(i32 %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @fs3, align 4
  %26 = call i64 @IFileSystem3_GetAbsolutePathName(i32 %25, i8* null, i8** %7)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (i32, i8*, i64, ...) @ok(i32 %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @MAX_PATH, align 4
  %34 = call i32 @GetFullPathNameW(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_GetAbsolutePathName.cur_dir, i64 0, i64 0), i32 %33, i8* %13, i32* null)
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @lstrcmpiW(i8* %13, i8* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @wine_dbgstr_w(i8* %40)
  %42 = sext i32 %41 to i64
  %43 = call i32 @wine_dbgstr_w(i8* %13)
  %44 = call i32 (i32, i8*, i64, ...) @ok(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %42, i32 %43)
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @SysFreeString(i8* %45)
  %47 = call i64 @FindFirstFileW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetAbsolutePathName.dir_match2, i64 0, i64 0), i32* %1)
  store i64 %47, i64* %2, align 8
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %0
  %52 = call i32 @skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i64, i64* %2, align 8
  %54 = call i32 @FindClose(i64 %53)
  store i32 1, i32* %9, align 4
  br label %202

55:                                               ; preds = %0
  %56 = call i8* @SysAllocString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_GetAbsolutePathName.dir_match1, i64 0, i64 0))
  store i8* %56, i8** %6, align 8
  %57 = load i32, i32* @fs3, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @IFileSystem3_GetAbsolutePathName(i32 %57, i8* %58, i8** %7)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @S_OK, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %8, align 8
  %65 = call i32 (i32, i8*, i64, ...) @ok(i32 %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @MAX_PATH, align 4
  %67 = call i32 @GetFullPathNameW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_GetAbsolutePathName.dir_match1, i64 0, i64 0), i32 %66, i8* %16, i32* null)
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @lstrcmpiW(i8* %16, i8* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @wine_dbgstr_w(i8* %73)
  %75 = sext i32 %74 to i64
  %76 = call i32 @wine_dbgstr_w(i8* %16)
  %77 = call i32 (i32, i8*, i64, ...) @ok(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %75, i32 %76)
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @SysFreeString(i8* %78)
  %80 = call i32 @CreateDirectoryW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_GetAbsolutePathName.dir1, i64 0, i64 0), i32* null)
  %81 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_GetAbsolutePathName.dir1, i64 0, i64 0))
  %82 = sext i32 %81 to i64
  %83 = call i32 (i32, i8*, i64, ...) @ok(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @fs3, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = call i64 @IFileSystem3_GetAbsolutePathName(i32 %84, i8* %85, i8** %7)
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %8, align 8
  %92 = call i32 (i32, i8*, i64, ...) @ok(i32 %90, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @MAX_PATH, align 4
  %94 = call i32 @GetFullPathNameW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_GetAbsolutePathName.dir1, i64 0, i64 0), i32 %93, i8* %13, i32* null)
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @lstrcmpiW(i8* %13, i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %55
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @lstrcmpiW(i8* %16, i8* %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i64 @broken(i32 %103)
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %98, %55
  %107 = phi i1 [ true, %55 ], [ %105, %98 ]
  %108 = zext i1 %107 to i32
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @wine_dbgstr_w(i8* %109)
  %111 = sext i32 %110 to i64
  %112 = call i32 @wine_dbgstr_w(i8* %13)
  %113 = call i32 (i32, i8*, i64, ...) @ok(i32 %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %111, i32 %112)
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @SysFreeString(i8* %114)
  %116 = call i32 @CreateDirectoryW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_GetAbsolutePathName.dir2, i64 0, i64 0), i32* null)
  %117 = call i32 @wine_dbgstr_w(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_GetAbsolutePathName.dir2, i64 0, i64 0))
  %118 = sext i32 %117 to i64
  %119 = call i32 (i32, i8*, i64, ...) @ok(i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %118)
  %120 = load i32, i32* @fs3, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = call i64 @IFileSystem3_GetAbsolutePathName(i32 %120, i8* %121, i8** %7)
  store i64 %122, i64* %8, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* @S_OK, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %8, align 8
  %128 = call i32 (i32, i8*, i64, ...) @ok(i32 %126, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %127)
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @lstrcmpiW(i8* %13, i8* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %106
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @lstrcmpiW(i8* %16, i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %156, label %136

136:                                              ; preds = %132, %106
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @lstrcmpiW(i8* %13, i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 @lstrcmpiW(i8* %16, i8* %141)
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i64 @broken(i32 %145)
  %147 = icmp ne i64 %146, 0
  br label %148

148:                                              ; preds = %140, %136
  %149 = phi i1 [ true, %136 ], [ %147, %140 ]
  %150 = zext i1 %149 to i32
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 @wine_dbgstr_w(i8* %151)
  %153 = sext i32 %152 to i64
  %154 = call i32 @wine_dbgstr_w(i8* %13)
  %155 = call i32 (i32, i8*, i64, ...) @ok(i32 %150, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %153, i32 %154)
  br label %169

156:                                              ; preds = %132
  %157 = load i32, i32* @MAX_PATH, align 4
  %158 = call i32 @GetFullPathNameW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_GetAbsolutePathName.dir2, i64 0, i64 0), i32 %157, i8* %13, i32* null)
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @lstrcmpiW(i8* %13, i8* %159)
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = load i8*, i8** %7, align 8
  %165 = call i32 @wine_dbgstr_w(i8* %164)
  %166 = sext i32 %165 to i64
  %167 = call i32 @wine_dbgstr_w(i8* %13)
  %168 = call i32 (i32, i8*, i64, ...) @ok(i32 %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %166, i32 %167)
  br label %169

169:                                              ; preds = %156, %148
  %170 = load i8*, i8** %7, align 8
  %171 = call i32 @SysFreeString(i8* %170)
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @SysFreeString(i8* %172)
  %174 = call i8* @SysAllocString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetAbsolutePathName.dir_match2, i64 0, i64 0))
  store i8* %174, i8** %6, align 8
  %175 = load i32, i32* @fs3, align 4
  %176 = load i8*, i8** %6, align 8
  %177 = call i64 @IFileSystem3_GetAbsolutePathName(i32 %175, i8* %176, i8** %7)
  store i64 %177, i64* %8, align 8
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* @S_OK, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i64, i64* %8, align 8
  %183 = call i32 (i32, i8*, i64, ...) @ok(i32 %181, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %182)
  %184 = load i32, i32* @MAX_PATH, align 4
  %185 = call i32 @GetFullPathNameW(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetAbsolutePathName.dir_match2, i64 0, i64 0), i32 %184, i8* %13, i32* null)
  %186 = load i8*, i8** %7, align 8
  %187 = call i32 @lstrcmpiW(i8* %13, i8* %186)
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = load i8*, i8** %7, align 8
  %192 = call i32 @wine_dbgstr_w(i8* %191)
  %193 = sext i32 %192 to i64
  %194 = call i32 @wine_dbgstr_w(i8* %13)
  %195 = call i32 (i32, i8*, i64, ...) @ok(i32 %190, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %193, i32 %194)
  %196 = load i8*, i8** %7, align 8
  %197 = call i32 @SysFreeString(i8* %196)
  %198 = load i8*, i8** %6, align 8
  %199 = call i32 @SysFreeString(i8* %198)
  %200 = call i32 @RemoveDirectoryW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_GetAbsolutePathName.dir1, i64 0, i64 0))
  %201 = call i32 @RemoveDirectoryW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_GetAbsolutePathName.dir2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %202

202:                                              ; preds = %169, %51
  %203 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %9, align 4
  switch i32 %204, label %206 [
    i32 0, label %205
    i32 1, label %205
  ]

205:                                              ; preds = %202, %202
  ret void

206:                                              ; preds = %202
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IFileSystem3_GetAbsolutePathName(i32, i8*, i8**) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i32 @GetFullPathNameW(i8*, i32, i8*, i32*) #2

declare dso_local i32 @lstrcmpiW(i8*, i8*) #2

declare dso_local i32 @wine_dbgstr_w(i8*) #2

declare dso_local i32 @SysFreeString(i8*) #2

declare dso_local i64 @FindFirstFileW(i8*, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i8* @SysAllocString(i8*) #2

declare dso_local i32 @CreateDirectoryW(i8*, i32*) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @RemoveDirectoryW(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
