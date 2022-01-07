; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_InternetSetOption.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wininet/extr_internet.c_test_InternetSetOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNET_OPEN_TYPE_DIRECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"InternetOpen failed: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"www.winehq.org\00", align 1
@INTERNET_SERVICE_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"InternetConnect failed: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"HttpOpenRequest failed: 0x%08x\0A\00", align 1
@INTERNET_OPTION_POLICY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"InternetSetOption should've failed\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [68 x i8] c"GetLastError should've given ERROR_INVALID_PARAMETER, gave: 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"InternetQueryOption should've failed\0A\00", align 1
@INTERNET_OPTION_ERROR_MASK = common dso_local global i32 0, align 4
@ERROR_INTERNET_INCORRECT_HANDLE_TYPE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"GetLastError() = %x\0A\00", align 1
@ERROR_INTERNET_BAD_OPTION_LENGTH = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"GetLastError() = %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [39 x i8] c"InternetSetOption should've succeeded\0A\00", align 1
@INTERNET_OPTION_SETTINGS_CHANGED = common dso_local global i32 0, align 4
@INTERNET_OPTION_REFRESH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"GetLastError() = %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"InternetCloseHandle failed: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_InternetSetOption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InternetSetOption() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = load i32, i32* @INTERNET_OPEN_TYPE_DIRECT, align 4
  %8 = call i32* @InternetOpenA(i32* null, i32 %7, i32* null, i32* null, i32 0)
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 (...) @GetLastError()
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = load i32, i32* @INTERNET_SERVICE_HTTP, align 4
  %16 = call i32* @InternetConnectA(i32* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 80, i32* null, i32* null, i32 %15, i32 0, i32 0)
  store i32* %16, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32* @HttpOpenRequestA(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0, i32 0)
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 (...) @GetLastError()
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %27)
  %29 = call i32 @SetLastError(i32 -559038737)
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* @INTERNET_OPTION_POLICY, align 4
  %32 = call i64 @InternetSetOptionW(i32* %30, i32 %31, i32* null, i32 0)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @FALSE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %38 = call i64 (...) @GetLastError()
  %39 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 (...) @GetLastError()
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i64 %42)
  %44 = call i32 @SetLastError(i32 -559038737)
  %45 = load i32*, i32** %1, align 8
  %46 = load i32, i32* @INTERNET_OPTION_POLICY, align 4
  %47 = call i64 @InternetQueryOptionW(i32* %45, i32 %46, i8* null, i32* null)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @FALSE, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %53 = call i64 (...) @GetLastError()
  %54 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 (...) @GetLastError()
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i64 %57)
  %59 = call i32 @SetLastError(i32 -559038737)
  store i32 4, i32* %5, align 4
  %60 = load i32, i32* @INTERNET_OPTION_ERROR_MASK, align 4
  %61 = bitcast i32* %4 to i8*
  %62 = call i64 @InternetQueryOptionW(i32* null, i32 %60, i8* %61, i32* %5)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @FALSE, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %68 = call i64 (...) @GetLastError()
  %69 = load i64, i64* @ERROR_INTERNET_INCORRECT_HANDLE_TYPE, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %72)
  %74 = call i32 @SetLastError(i32 -559038737)
  store i32 11, i32* %4, align 4
  %75 = load i32, i32* @INTERNET_OPTION_ERROR_MASK, align 4
  %76 = bitcast i32* %4 to i8*
  %77 = call i64 @InternetSetOptionA(i32* null, i32 %75, i8* %76, i32 4)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @FALSE, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %83 = call i64 (...) @GetLastError()
  %84 = load i64, i64* @ERROR_INTERNET_INCORRECT_HANDLE_TYPE, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 (...) @GetLastError()
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %87)
  %89 = call i32 @SetLastError(i32 -559038737)
  store i32 11, i32* %4, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* @INTERNET_OPTION_ERROR_MASK, align 4
  %92 = bitcast i32* %4 to i8*
  %93 = call i64 @InternetSetOptionA(i32* %90, i32 %91, i8* %92, i32 20)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @FALSE, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %99 = call i64 (...) @GetLastError()
  %100 = load i64, i64* @ERROR_INTERNET_BAD_OPTION_LENGTH, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i64 (...) @GetLastError()
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i64 %103)
  store i32 11, i32* %4, align 4
  %105 = load i32*, i32** %3, align 8
  %106 = load i32, i32* @INTERNET_OPTION_ERROR_MASK, align 4
  %107 = bitcast i32* %4 to i8*
  %108 = call i64 @InternetSetOptionA(i32* %105, i32 %106, i8* %107, i32 4)
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @TRUE, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %114 = call i32 @SetLastError(i32 -559038737)
  store i32 4, i32* %4, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = load i32, i32* @INTERNET_OPTION_ERROR_MASK, align 4
  %117 = bitcast i32* %4 to i8*
  %118 = call i64 @InternetSetOptionA(i32* %115, i32 %116, i8* %117, i32 4)
  store i64 %118, i64* %6, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* @FALSE, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %124 = call i64 (...) @GetLastError()
  %125 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 (...) @GetLastError()
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %128)
  %130 = call i32 @SetLastError(i32 -559038737)
  store i32 16, i32* %4, align 4
  %131 = load i32*, i32** %3, align 8
  %132 = load i32, i32* @INTERNET_OPTION_ERROR_MASK, align 4
  %133 = bitcast i32* %4 to i8*
  %134 = call i64 @InternetSetOptionA(i32* %131, i32 %132, i8* %133, i32 4)
  store i64 %134, i64* %6, align 8
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* @FALSE, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %140 = call i64 (...) @GetLastError()
  %141 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i64 (...) @GetLastError()
  %145 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i64 %144)
  %146 = load i32*, i32** %3, align 8
  %147 = load i32, i32* @INTERNET_OPTION_SETTINGS_CHANGED, align 4
  %148 = call i64 @InternetSetOptionA(i32* %146, i32 %147, i8* null, i32 0)
  store i64 %148, i64* %6, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* @TRUE, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %154 = load i32*, i32** %2, align 8
  %155 = load i32, i32* @INTERNET_OPTION_SETTINGS_CHANGED, align 4
  %156 = call i64 @InternetSetOptionA(i32* %154, i32 %155, i8* null, i32 0)
  store i64 %156, i64* %6, align 8
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* @TRUE, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %162 = load i32*, i32** %1, align 8
  %163 = load i32, i32* @INTERNET_OPTION_SETTINGS_CHANGED, align 4
  %164 = call i64 @InternetSetOptionA(i32* %162, i32 %163, i8* null, i32 0)
  store i64 %164, i64* %6, align 8
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* @TRUE, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %170 = load i32*, i32** %1, align 8
  %171 = load i32, i32* @INTERNET_OPTION_REFRESH, align 4
  %172 = call i64 @InternetSetOptionA(i32* %170, i32 %171, i8* null, i32 0)
  store i64 %172, i64* %6, align 8
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* @TRUE, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %178 = call i32 @SetLastError(i32 -559038737)
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* @INTERNET_OPTION_REFRESH, align 4
  %181 = call i64 @InternetSetOptionA(i32* %179, i32 %180, i8* null, i32 0)
  store i64 %181, i64* %6, align 8
  %182 = load i64, i64* %6, align 8
  %183 = load i64, i64* @FALSE, align 8
  %184 = icmp eq i64 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 (i32, i8*, ...) @ok(i32 %185, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %187 = call i64 (...) @GetLastError()
  %188 = load i64, i64* @ERROR_INTERNET_INCORRECT_HANDLE_TYPE, align 8
  %189 = icmp eq i64 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i64 (...) @GetLastError()
  %192 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i64 %191)
  %193 = call i32 @SetLastError(i32 -559038737)
  %194 = load i32*, i32** %2, align 8
  %195 = load i32, i32* @INTERNET_OPTION_REFRESH, align 4
  %196 = call i64 @InternetSetOptionA(i32* %194, i32 %195, i8* null, i32 0)
  store i64 %196, i64* %6, align 8
  %197 = load i64, i64* %6, align 8
  %198 = load i64, i64* @FALSE, align 8
  %199 = icmp eq i64 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %202 = call i64 (...) @GetLastError()
  %203 = load i64, i64* @ERROR_INTERNET_INCORRECT_HANDLE_TYPE, align 8
  %204 = icmp eq i64 %202, %203
  %205 = zext i1 %204 to i32
  %206 = call i64 (...) @GetLastError()
  %207 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i64 %206)
  %208 = load i32*, i32** %3, align 8
  %209 = call i64 @InternetCloseHandle(i32* %208)
  store i64 %209, i64* %6, align 8
  %210 = load i64, i64* %6, align 8
  %211 = load i64, i64* @TRUE, align 8
  %212 = icmp eq i64 %210, %211
  %213 = zext i1 %212 to i32
  %214 = call i64 (...) @GetLastError()
  %215 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i64 %214)
  %216 = load i32*, i32** %2, align 8
  %217 = call i64 @InternetCloseHandle(i32* %216)
  store i64 %217, i64* %6, align 8
  %218 = load i64, i64* %6, align 8
  %219 = load i64, i64* @TRUE, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i64 (...) @GetLastError()
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i64 %222)
  %224 = load i32*, i32** %1, align 8
  %225 = call i64 @InternetCloseHandle(i32* %224)
  store i64 %225, i64* %6, align 8
  %226 = load i64, i64* %6, align 8
  %227 = load i64, i64* @TRUE, align 8
  %228 = icmp eq i64 %226, %227
  %229 = zext i1 %228 to i32
  %230 = call i64 (...) @GetLastError()
  %231 = call i32 (i32, i8*, ...) @ok(i32 %229, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i64 %230)
  ret void
}

declare dso_local i32* @InternetOpenA(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @InternetConnectA(i32*, i8*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32* @HttpOpenRequestA(i32*, i8*, i8*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @InternetSetOptionW(i32*, i32, i32*, i32) #1

declare dso_local i64 @InternetQueryOptionW(i32*, i32, i8*, i32*) #1

declare dso_local i64 @InternetSetOptionA(i32*, i32, i8*, i32) #1

declare dso_local i64 @InternetCloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
