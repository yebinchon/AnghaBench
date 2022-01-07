; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_symlinks.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_symlinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@test_symlinks.targetW = internal constant [27 x i8] c"\\Software\\Wine\\Test\\target\00", align 16
@hkey_main = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"link\00", align 1
@REG_OPTION_CREATE_LINK = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"RegCreateKeyEx failed: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SymbolicLinkValue\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"RegSetValueEx wrong error %u\0A\00", align 1
@REG_LINK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"RegSetValueEx failed error %u\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"RegOpenKey wrong error %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"RegCreateKeyEx failed error %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"RegOpenKey failed error %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"wrong len %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"RegQueryValueEx wrong error %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"RegQueryValueEx failed error %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"RegDeleteValue failed error %u\0A\00", align 1
@REG_OPTION_OPEN_LINK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"RegOpenKeyEx failed error %u\0A\00", align 1
@ERROR_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"RegCreateKeyEx wrong error %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"RegDeleteKey failed error %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"RegDeleteKey wrong error %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"NtDeleteKey failed: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_symlinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_symlinks() #0 {
  %1 = alloca [1024 x i32], align 16
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = call i32 @pRtlFormatCurrentUserKeyPath(%struct.TYPE_4__* %2)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 27
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @HeapAlloc(i32 %18, i32 0, i32 %19)
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @memcpy(i8* %21, i8* %23, i32 %25)
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 1
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  %33 = call i32 @memcpy(i8* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @test_symlinks.targetW, i64 0, i64 0), i32 27)
  %34 = load i32, i32* @hkey_main, align 4
  %35 = load i32, i32* @REG_OPTION_CREATE_LINK, align 4
  %36 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %37 = call i32 @RegCreateKeyExA(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32 %35, i32 %36, i32* null, i32* %5, i32* null)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @ERROR_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @REG_SZ, align 4
  %46 = call i32 @RegSetValueExA(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %45, i32* bitcast ([7 x i8]* @.str.3 to i32*), i32 7)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @REG_LINK, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = call i32 @RegSetValueExA(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %54, i32* %56, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @ERROR_SUCCESS, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @REG_LINK, align 4
  %70 = load i8*, i8** %3, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %73, 1
  %75 = trunc i64 %74 to i32
  %76 = call i32 @RegSetValueExA(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 %69, i32* %71, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @hkey_main, align 4
  %84 = call i32 @RegOpenKeyA(i32 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %4)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @hkey_main, align 4
  %92 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %93 = call i32 @RegCreateKeyExA(i32 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %92, i32* null, i32* %4, i32* null)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @ERROR_SUCCESS, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  store i32 48879, i32* %10, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @REG_DWORD, align 4
  %102 = call i32 @RegSetValueExA(i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 %101, i32* %10, i32 4)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @ERROR_SUCCESS, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @RegCloseKey(i32 %109)
  %111 = load i32, i32* @hkey_main, align 4
  %112 = call i32 @RegOpenKeyA(i32 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %4)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @ERROR_SUCCESS, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %117)
  store i32 4096, i32* %9, align 4
  %119 = load i32, i32* %4, align 4
  %120 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %121 = call i32 @RegQueryValueExA(i32 %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* null, i32* %8, i32* %120, i32* %9)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @ERROR_SUCCESS, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp eq i64 %129, 4
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %132)
  store i32 4096, i32* %9, align 4
  %134 = load i32, i32* %4, align 4
  %135 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %136 = call i32 @RegQueryValueExA(i32 %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %8, i32* %135, i32* %9)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @ok(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @REG_LINK, align 4
  %145 = load i8*, i8** %3, align 8
  %146 = bitcast i8* %145 to i32*
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = sub i64 %148, 1
  %150 = trunc i64 %149 to i32
  %151 = call i32 @RegSetValueExA(i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %144, i32* %146, i32 %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @ERROR_SUCCESS, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @ok(i32 %155, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %156)
  store i32 4096, i32* %9, align 4
  %158 = load i32, i32* %4, align 4
  %159 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %160 = call i32 @RegQueryValueExA(i32 %158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %8, i32* %159, i32* %9)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* @ERROR_SUCCESS, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @ok(i32 %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = sub i64 %170, 1
  %172 = icmp eq i64 %168, %171
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @ok(i32 %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @RegDeleteValueA(i32 %176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @ERROR_SUCCESS, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @RegCloseKey(i32 %184)
  %186 = load i32, i32* @hkey_main, align 4
  %187 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %188 = call i32 @RegCreateKeyExA(i32 %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %187, i32* null, i32* %4, i32* null)
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @ERROR_SUCCESS, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @ok(i32 %192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %193)
  store i32 4096, i32* %9, align 4
  %195 = load i32, i32* %4, align 4
  %196 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %197 = call i32 @RegQueryValueExA(i32 %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* null, i32* %8, i32* %196, i32* %9)
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* @ERROR_SUCCESS, align 4
  %200 = icmp eq i32 %198, %199
  %201 = zext i1 %200 to i32
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @ok(i32 %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = icmp eq i64 %205, 4
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @ok(i32 %207, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %4, align 4
  %211 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %212 = call i32 @RegQueryValueExA(i32 %210, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %8, i32* %211, i32* %9)
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %215 = icmp eq i32 %213, %214
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @ok(i32 %216, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %4, align 4
  %220 = call i32 @RegCloseKey(i32 %219)
  %221 = load i32, i32* @hkey_main, align 4
  %222 = load i32, i32* @REG_OPTION_OPEN_LINK, align 4
  %223 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %224 = call i32 @RegOpenKeyExA(i32 %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %222, i32 %223, i32* %4)
  store i32 %224, i32* %11, align 4
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* @ERROR_SUCCESS, align 4
  %227 = icmp eq i32 %225, %226
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %11, align 4
  %230 = call i32 @ok(i32 %228, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %229)
  store i32 4096, i32* %9, align 4
  %231 = load i32, i32* %4, align 4
  %232 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %233 = call i32 @RegQueryValueExA(i32 %231, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %8, i32* %232, i32* %9)
  store i32 %233, i32* %11, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* @ERROR_SUCCESS, align 4
  %236 = icmp eq i32 %234, %235
  %237 = zext i1 %236 to i32
  %238 = load i32, i32* %11, align 4
  %239 = call i32 @ok(i32 %237, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = load i32, i32* %7, align 4
  %243 = sext i32 %242 to i64
  %244 = sub i64 %243, 1
  %245 = icmp eq i64 %241, %244
  %246 = zext i1 %245 to i32
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @ok(i32 %246, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* %4, align 4
  %250 = call i32 @RegCloseKey(i32 %249)
  %251 = load i32, i32* @hkey_main, align 4
  %252 = load i32, i32* @REG_OPTION_OPEN_LINK, align 4
  %253 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %254 = call i32 @RegCreateKeyExA(i32 %251, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32 %252, i32 %253, i32* null, i32* %4, i32* null)
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* @ERROR_SUCCESS, align 4
  %257 = icmp eq i32 %255, %256
  %258 = zext i1 %257 to i32
  %259 = load i32, i32* %11, align 4
  %260 = call i32 @ok(i32 %258, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %259)
  store i32 4096, i32* %9, align 4
  %261 = load i32, i32* %4, align 4
  %262 = getelementptr inbounds [1024 x i32], [1024 x i32]* %1, i64 0, i64 0
  %263 = call i32 @RegQueryValueExA(i32 %261, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %8, i32* %262, i32* %9)
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* @ERROR_SUCCESS, align 4
  %266 = icmp eq i32 %264, %265
  %267 = zext i1 %266 to i32
  %268 = load i32, i32* %11, align 4
  %269 = call i32 @ok(i32 %267, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = sub i64 %273, 1
  %275 = icmp eq i64 %271, %274
  %276 = zext i1 %275 to i32
  %277 = load i32, i32* %9, align 4
  %278 = call i32 @ok(i32 %276, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %277)
  %279 = load i32, i32* %4, align 4
  %280 = call i32 @RegCloseKey(i32 %279)
  %281 = load i32, i32* @hkey_main, align 4
  %282 = load i32, i32* @REG_OPTION_CREATE_LINK, align 4
  %283 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %284 = call i32 @RegCreateKeyExA(i32 %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32 %282, i32 %283, i32* null, i32* %4, i32* null)
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* %11, align 4
  %286 = load i32, i32* @ERROR_ALREADY_EXISTS, align 4
  %287 = icmp eq i32 %285, %286
  %288 = zext i1 %287 to i32
  %289 = load i32, i32* %11, align 4
  %290 = call i32 @ok(i32 %288, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %289)
  %291 = load i32, i32* @hkey_main, align 4
  %292 = load i32, i32* @REG_OPTION_CREATE_LINK, align 4
  %293 = load i32, i32* @REG_OPTION_OPEN_LINK, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %296 = call i32 @RegCreateKeyExA(i32 %291, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32 %294, i32 %295, i32* null, i32* %4, i32* null)
  store i32 %296, i32* %11, align 4
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* @ERROR_ALREADY_EXISTS, align 4
  %299 = icmp eq i32 %297, %298
  %300 = zext i1 %299 to i32
  %301 = load i32, i32* %11, align 4
  %302 = call i32 @ok(i32 %300, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %301)
  %303 = load i32, i32* @hkey_main, align 4
  %304 = call i32 @RegDeleteKeyA(i32 %303, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 %304, i32* %11, align 4
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* @ERROR_SUCCESS, align 4
  %307 = icmp eq i32 %305, %306
  %308 = zext i1 %307 to i32
  %309 = load i32, i32* %11, align 4
  %310 = call i32 @ok(i32 %308, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %309)
  %311 = load i32, i32* @hkey_main, align 4
  %312 = call i32 @RegDeleteKeyA(i32 %311, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %312, i32* %11, align 4
  %313 = load i32, i32* %11, align 4
  %314 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %315 = icmp eq i32 %313, %314
  %316 = zext i1 %315 to i32
  %317 = load i32, i32* %11, align 4
  %318 = call i32 @ok(i32 %316, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %317)
  %319 = load i32, i32* %5, align 4
  %320 = call i32 @pNtDeleteKey(i32 %319)
  store i32 %320, i32* %6, align 4
  %321 = load i32, i32* %6, align 4
  %322 = icmp ne i32 %321, 0
  %323 = xor i1 %322, true
  %324 = zext i1 %323 to i32
  %325 = load i32, i32* %6, align 4
  %326 = call i32 @ok(i32 %324, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 %325)
  %327 = load i32, i32* %5, align 4
  %328 = call i32 @RegCloseKey(i32 %327)
  %329 = call i32 (...) @GetProcessHeap()
  %330 = load i8*, i8** %3, align 8
  %331 = call i32 @HeapFree(i32 %329, i32 0, i8* %330)
  %332 = call i32 @pRtlFreeUnicodeString(%struct.TYPE_4__* %2)
  ret void
}

declare dso_local i32 @pRtlFormatCurrentUserKeyPath(%struct.TYPE_4__*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @RegSetValueExA(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegDeleteValueA(i32, i8*) #1

declare dso_local i32 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #1

declare dso_local i32 @pNtDeleteKey(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @pRtlFreeUnicodeString(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
