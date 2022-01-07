; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_parser.c_test_GLE.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_parser.c_test_GLE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_GLE.inf = internal global i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [104 x i8] c"[Version]\0ASignature=\22$Windows NT$\22\0A[Sectionname]\0AKeyname1=Field1,Field2,Field3\0A\0AKeyname2=Field4,Field5\0A\00", align 1
@MAX_INF_STRING_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Expected valid INF file\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ImNotThere\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@ERROR_LINE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Expected ERROR_LINE_NOT_FOUND, got %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Sectionname\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Expected success\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Expected ERROR_SUCCESS, got %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Keyname1\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Keyname2\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Expected -1, got %d\0A\00", align 1
@ERROR_SECTION_NOT_FOUND = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"Expected ERROR_SECTION_NOT_FOUND, got %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Expected 2, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GLE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GLE() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** @test_GLE.inf, align 8
  %16 = call i32* @test_file_contents(i8* %15, i32* %2)
  store i32* %16, i32** %1, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @SetLastError(i32 -559038737)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @SetupFindFirstLineA(i32* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* null, i32* %3)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 (...) @GetLastError()
  %30 = load i32, i32* @ERROR_LINE_NOT_FOUND, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = call i32 @SetLastError(i32 -559038737)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @SetupFindFirstLineA(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 (...) @GetLastError()
  %44 = load i32, i32* @ERROR_LINE_NOT_FOUND, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 (...) @GetLastError()
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = call i32 @SetLastError(i32 -559038737)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @SetupFindFirstLineA(i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* null, i32* %3)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %54 = call i32 (...) @GetLastError()
  %55 = load i32, i32* @ERROR_SUCCESS, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 (...) @GetLastError()
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  %60 = call i32 @SetLastError(i32 -559038737)
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @SetupFindFirstLineA(i32* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32 (...) @GetLastError()
  %69 = load i32, i32* @ERROR_LINE_NOT_FOUND, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = call i32 @SetLastError(i32 -559038737)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @SetupFindFirstLineA(i32* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %3)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %79 = call i32 (...) @GetLastError()
  %80 = load i32, i32* @ERROR_SUCCESS, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 (...) @GetLastError()
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = call i32 @SetLastError(i32 -559038737)
  %86 = call i32 @SetupFindNextMatchLineA(i32* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %92 = call i32 (...) @GetLastError()
  %93 = load i32, i32* @ERROR_LINE_NOT_FOUND, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 (...) @GetLastError()
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = call i32 @SetLastError(i32 -559038737)
  %99 = call i32 @SetupFindNextMatchLineA(i32* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* %3)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %102 = call i32 (...) @GetLastError()
  %103 = load i32, i32* @ERROR_SUCCESS, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 (...) @GetLastError()
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  %108 = call i32 @SetLastError(i32 -559038737)
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @SetupGetLineCountA(i32* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp eq i32 %111, -1
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %5, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %114)
  %116 = call i32 (...) @GetLastError()
  %117 = load i32, i32* @ERROR_SECTION_NOT_FOUND, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 (...) @GetLastError()
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %120)
  %122 = call i32 @SetLastError(i32 -559038737)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @SetupGetLineCountA(i32* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %5, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %128)
  %130 = call i32 (...) @GetLastError()
  %131 = load i32, i32* @ERROR_SUCCESS, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 (...) @GetLastError()
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  %136 = call i32 @SetLastError(i32 -559038737)
  %137 = load i32*, i32** %1, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @SetupGetLineTextA(i32* null, i32* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %13, i32 %138, i32* %9)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %145 = call i32 (...) @GetLastError()
  %146 = load i32, i32* @ERROR_LINE_NOT_FOUND, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 (...) @GetLastError()
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  %151 = call i32 @SetLastError(i32 -559038737)
  %152 = load i32*, i32** %1, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @SetupGetLineTextA(i32* null, i32* %152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %13, i32 %153, i32* %9)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %160 = call i32 (...) @GetLastError()
  %161 = load i32, i32* @ERROR_LINE_NOT_FOUND, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 (...) @GetLastError()
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %164)
  %166 = call i32 @SetLastError(i32 -559038737)
  %167 = load i32*, i32** %1, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @SetupGetLineTextA(i32* null, i32* %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %13, i32 %168, i32* %9)
  store i32 %169, i32* %4, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %172 = call i32 (...) @GetLastError()
  %173 = load i32, i32* @ERROR_SUCCESS, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 (...) @GetLastError()
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %176)
  %178 = call i32 @SetLastError(i32 -559038737)
  %179 = load i32*, i32** %1, align 8
  %180 = call i32 @SetupGetLineByIndexA(i32* %179, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1, i32* %3)
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %186 = call i32 (...) @GetLastError()
  %187 = load i32, i32* @ERROR_LINE_NOT_FOUND, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 (...) @GetLastError()
  %191 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %190)
  %192 = call i32 @SetLastError(i32 -559038737)
  %193 = load i32*, i32** %1, align 8
  %194 = call i32 @SetupGetLineByIndexA(i32* %193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 1, i32* %3)
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* %4, align 4
  %196 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %197 = call i32 (...) @GetLastError()
  %198 = load i32, i32* @ERROR_SUCCESS, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 (...) @GetLastError()
  %202 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %201)
  %203 = call i32 @SetLastError(i32 -559038737)
  %204 = load i32*, i32** %1, align 8
  %205 = call i32 @SetupGetLineByIndexA(i32* %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 3, i32* %3)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %4, align 4
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %211 = call i32 (...) @GetLastError()
  %212 = load i32, i32* @ERROR_LINE_NOT_FOUND, align 4
  %213 = icmp eq i32 %211, %212
  %214 = zext i1 %213 to i32
  %215 = call i32 (...) @GetLastError()
  %216 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %215)
  %217 = load i32*, i32** %1, align 8
  %218 = call i32 @SetupCloseInfFile(i32* %217)
  %219 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %219)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @test_file_contents(i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @SetupFindFirstLineA(i32*, i8*, i8*, i32*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @SetupFindNextMatchLineA(i32*, i8*, i32*) #2

declare dso_local i32 @SetupGetLineCountA(i32*, i8*) #2

declare dso_local i32 @SetupGetLineTextA(i32*, i32*, i8*, i8*, i8*, i32, i32*) #2

declare dso_local i32 @SetupGetLineByIndexA(i32*, i8*, i32, i32*) #2

declare dso_local i32 @SetupCloseInfFile(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
