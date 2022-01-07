; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_reg_create_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_reg_create_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32* }

@SECURITY_WORLD_SID_AUTHORITY = common dso_local global i32 0, align 4
@hkey_main = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"Subkey1\00", align 1
@KEY_NOTIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"RegCreateKeyExA failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Subkey2\00", align 1
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Volatile\00", align 1
@REG_OPTION_VOLATILE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_CHILD_MUST_BE_VOLATILE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"\\Subkey3\00", align 1
@ERROR_BAD_PATHNAME = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"expected ERROR_BAD_PATHNAME, got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Subkey4\\\\\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [44 x i8] c"System\\CurrentControlSet\\Control\\Video\\Wine\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WOW64_32KEY = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [51 x i8] c"RegOpenKeyEx with KEY_WOW64_32KEY failed (err=%u)\0A\00", align 1
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"RegOpenKeyEx with KEY_WOW64_64KEY failed (err=%u)\0A\00", align 1
@pIsWow64Process = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"WOW64 flags are not recognized\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Software\\Wine\00", align 1
@limited_user = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [53 x i8] c"RegCreateKeyEx with KEY_WOW64_32KEY failed (err=%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"RegCreateKeyEx with KEY_WOW64_64KEY failed (err=%d)\0A\00", align 1
@SECURITY_WORLD_RID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [73 x i8] c"Expected AllocateAndInitializeSid to return TRUE, got %d, last error %u\0A\00", align 1
@GENERIC_ALL = common dso_local global i32 0, align 4
@STANDARD_RIGHTS_ALL = common dso_local global i32 0, align 4
@SET_ACCESS = common dso_local global i32 0, align 4
@SUB_CONTAINERS_AND_OBJECTS_INHERIT = common dso_local global i32 0, align 4
@NO_MULTIPLE_TRUSTEE = common dso_local global i32 0, align 4
@TRUSTEE_IS_SID = common dso_local global i32 0, align 4
@TRUSTEE_IS_WELL_KNOWN_GROUP = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [74 x i8] c"Expected SetEntriesInAclA to return ERROR_SUCCESS, got %u, last error %u\0A\00", align 1
@SECURITY_DESCRIPTOR_MIN_LENGTH = common dso_local global i32 0, align 4
@SECURITY_DESCRIPTOR_REVISION = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [77 x i8] c"Expected InitializeSecurityDescriptor to return TRUE, got %d, last error %u\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [74 x i8] c"Expected SetSecurityDescriptorDacl to return TRUE, got %d, last error %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"not enough privileges to modify HKLM\0A\00", align 1
@DACL_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [60 x i8] c"Expected RegSetKeySecurity to return success, got error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reg_create_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reg_create_key() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %14 = load i32, i32* @SECURITY_WORLD_SID_AUTHORITY, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32*, i32** @hkey_main, align 8
  %16 = load i32, i32* @KEY_NOTIFY, align 4
  %17 = call i64 @RegCreateKeyExA(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %16, i32* null, i32** %2, i32* null)
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %1, align 8
  %23 = call i32 (i32, i8*, i64, ...) @ok(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @KEY_SET_VALUE, align 4
  %26 = call i64 @RegCreateKeyExA(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %25, i32* null, i32** %3, i32* null)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = call i32 (i32, i8*, i64, ...) @ok(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @RegDeleteKeyA(i32* %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @RegDeleteKeyA(i32* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @RegCloseKey(i32* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @RegCloseKey(i32* %39)
  %41 = load i32*, i32** @hkey_main, align 8
  %42 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %43 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %44 = call i64 @RegCreateKeyExA(i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null, i32 %42, i32 %43, i32* null, i32** %2, i32* null)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %1, align 8
  %50 = call i32 (i32, i8*, i64, ...) @ok(i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %53 = call i64 @RegCreateKeyExA(i32* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %52, i32* null, i32** %3, i32* null)
  store i64 %53, i64* %1, align 8
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* @ERROR_CHILD_MUST_BE_VOLATILE, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %1, align 8
  %59 = call i32 (i32, i8*, i64, ...) @ok(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i64, i64* %1, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %0
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @RegCloseKey(i32* %63)
  br label %65

65:                                               ; preds = %62, %0
  %66 = load i32*, i32** %2, align 8
  %67 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %68 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %69 = call i64 @RegCreateKeyExA(i32* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32 %67, i32 %68, i32* null, i32** %3, i32* null)
  store i64 %69, i64* %1, align 8
  %70 = load i64, i64* %1, align 8
  %71 = icmp ne i64 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %1, align 8
  %75 = call i32 (i32, i8*, i64, ...) @ok(i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @RegCloseKey(i32* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %80 = call i64 @RegCreateKeyExA(i32* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %79, i32* null, i32** %3, i32* null)
  store i64 %80, i64* %1, align 8
  %81 = load i64, i64* %1, align 8
  %82 = icmp ne i64 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %1, align 8
  %86 = call i32 (i32, i8*, i64, ...) @ok(i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @RegDeleteKeyA(i32* %87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @RegDeleteKeyA(i32* %89, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @RegCloseKey(i32* %91)
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @RegCloseKey(i32* %93)
  %95 = load i32*, i32** @hkey_main, align 8
  %96 = load i32, i32* @KEY_NOTIFY, align 4
  %97 = call i64 @RegCreateKeyExA(i32* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %96, i32* null, i32** %2, i32* null)
  store i64 %97, i64* %1, align 8
  %98 = call i32 (...) @GetVersion()
  %99 = and i32 %98, -2147483648
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %65
  %102 = load i64, i64* %1, align 8
  %103 = load i64, i64* @ERROR_BAD_PATHNAME, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %1, align 8
  %107 = call i32 (i32, i8*, i64, ...) @ok(i32 %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %106)
  br label %119

108:                                              ; preds = %65
  %109 = load i64, i64* %1, align 8
  %110 = icmp ne i64 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %1, align 8
  %114 = call i32 (i32, i8*, i64, ...) @ok(i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @RegDeleteKeyA(i32* %115, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 @RegCloseKey(i32* %117)
  br label %119

119:                                              ; preds = %108, %101
  %120 = load i32*, i32** @hkey_main, align 8
  %121 = load i32, i32* @KEY_NOTIFY, align 4
  %122 = call i64 @RegCreateKeyExA(i32* %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %121, i32* null, i32** %2, i32* null)
  store i64 %122, i64* %1, align 8
  %123 = load i64, i64* %1, align 8
  %124 = load i64, i64* @ERROR_SUCCESS, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %1, align 8
  %128 = call i32 (i32, i8*, i64, ...) @ok(i32 %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %127)
  %129 = load i32*, i32** %2, align 8
  %130 = call i32 @RegDeleteKeyA(i32* %129, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32*, i32** %2, align 8
  %132 = call i32 @RegCloseKey(i32* %131)
  %133 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %134 = load i32, i32* @KEY_NOTIFY, align 4
  %135 = call i64 @RegCreateKeyExA(i32* %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %134, i32* null, i32** %2, i32* null)
  store i64 %135, i64* %1, align 8
  %136 = load i64, i64* %1, align 8
  %137 = load i64, i64* @ERROR_SUCCESS, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i64, i64* %1, align 8
  %141 = call i32 (i32, i8*, i64, ...) @ok(i32 %139, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %140)
  %142 = load i32*, i32** %2, align 8
  %143 = call i32 @RegDeleteKeyA(i32* %142, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32*, i32** %2, align 8
  %145 = call i32 @RegCloseKey(i32* %144)
  store i32* null, i32** %2, align 8
  %146 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %147 = load i32, i32* @KEY_READ, align 4
  %148 = load i32, i32* @KEY_WOW64_32KEY, align 4
  %149 = or i32 %147, %148
  %150 = call i64 @RegCreateKeyExA(i32* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %149, i32* null, i32** %2, i32* null)
  store i64 %150, i64* %1, align 8
  %151 = load i64, i64* %1, align 8
  %152 = load i64, i64* @ERROR_SUCCESS, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %119
  %155 = load i32*, i32** %2, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %164, label %157

157:                                              ; preds = %154, %119
  %158 = load i64, i64* %1, align 8
  %159 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i64 @broken(i32 %161)
  %163 = icmp ne i64 %162, 0
  br label %164

164:                                              ; preds = %157, %154
  %165 = phi i1 [ true, %154 ], [ %163, %157 ]
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %1, align 8
  %168 = call i32 (i32, i8*, i64, ...) @ok(i32 %166, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i64 %167)
  %169 = load i32*, i32** %2, align 8
  %170 = call i32 @RegCloseKey(i32* %169)
  store i32* null, i32** %2, align 8
  %171 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %172 = load i32, i32* @KEY_READ, align 4
  %173 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %174 = or i32 %172, %173
  %175 = call i64 @RegCreateKeyExA(i32* %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %174, i32* null, i32** %2, i32* null)
  store i64 %175, i64* %1, align 8
  %176 = load i64, i64* %1, align 8
  %177 = load i64, i64* @ERROR_SUCCESS, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %164
  %180 = load i32*, i32** %2, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %189, label %182

182:                                              ; preds = %179, %164
  %183 = load i64, i64* %1, align 8
  %184 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i64 @broken(i32 %186)
  %188 = icmp ne i64 %187, 0
  br label %189

189:                                              ; preds = %182, %179
  %190 = phi i1 [ true, %179 ], [ %188, %182 ]
  %191 = zext i1 %190 to i32
  %192 = load i64, i64* %1, align 8
  %193 = call i32 (i32, i8*, i64, ...) @ok(i32 %191, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i64 %192)
  %194 = load i32*, i32** %2, align 8
  %195 = call i32 @RegCloseKey(i32* %194)
  %196 = load i32, i32* @pIsWow64Process, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %189
  %199 = call i32 @win_skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %407

200:                                              ; preds = %189
  %201 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %202 = load i32, i32* @KEY_WOW64_32KEY, align 4
  %203 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %204 = or i32 %202, %203
  %205 = call i64 @RegCreateKeyExA(i32* %201, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %204, i32* null, i32** %5, i32* null)
  store i64 %205, i64* %1, align 8
  %206 = load i64, i64* @limited_user, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %200
  %209 = load i64, i64* %1, align 8
  %210 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load i32*, i32** %5, align 8
  %214 = icmp eq i32* %213, null
  br label %215

215:                                              ; preds = %212, %208
  %216 = phi i1 [ false, %208 ], [ %214, %212 ]
  %217 = zext i1 %216 to i32
  %218 = load i64, i64* %1, align 8
  %219 = call i32 (i32, i8*, i64, ...) @ok(i32 %217, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i64 %218)
  br label %232

220:                                              ; preds = %200
  %221 = load i64, i64* %1, align 8
  %222 = load i64, i64* @ERROR_SUCCESS, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = load i32*, i32** %5, align 8
  %226 = icmp ne i32* %225, null
  br label %227

227:                                              ; preds = %224, %220
  %228 = phi i1 [ false, %220 ], [ %226, %224 ]
  %229 = zext i1 %228 to i32
  %230 = load i64, i64* %1, align 8
  %231 = call i32 (i32, i8*, i64, ...) @ok(i32 %229, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i64 %230)
  br label %232

232:                                              ; preds = %227, %215
  %233 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %234 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %235 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %236 = or i32 %234, %235
  %237 = call i64 @RegCreateKeyExA(i32* %233, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %236, i32* null, i32** %4, i32* null)
  store i64 %237, i64* %1, align 8
  %238 = load i64, i64* @limited_user, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %232
  %241 = load i64, i64* %1, align 8
  %242 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = load i32*, i32** %4, align 8
  %246 = icmp eq i32* %245, null
  br label %247

247:                                              ; preds = %244, %240
  %248 = phi i1 [ false, %240 ], [ %246, %244 ]
  %249 = zext i1 %248 to i32
  %250 = load i64, i64* %1, align 8
  %251 = call i32 (i32, i8*, i64, ...) @ok(i32 %249, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i64 %250)
  br label %264

252:                                              ; preds = %232
  %253 = load i64, i64* %1, align 8
  %254 = load i64, i64* @ERROR_SUCCESS, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = load i32*, i32** %4, align 8
  %258 = icmp ne i32* %257, null
  br label %259

259:                                              ; preds = %256, %252
  %260 = phi i1 [ false, %252 ], [ %258, %256 ]
  %261 = zext i1 %260 to i32
  %262 = load i64, i64* %1, align 8
  %263 = call i32 (i32, i8*, i64, ...) @ok(i32 %261, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i64 %262)
  br label %264

264:                                              ; preds = %259, %247
  %265 = load i32, i32* @SECURITY_WORLD_RID, align 4
  %266 = call i64 @AllocateAndInitializeSid(%struct.TYPE_7__* %8, i32 1, i32 %265, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i64* %9)
  store i64 %266, i64* %7, align 8
  %267 = load i64, i64* %7, align 8
  %268 = load i64, i64* @TRUE, align 8
  %269 = icmp eq i64 %267, %268
  %270 = zext i1 %269 to i32
  %271 = load i64, i64* %7, align 8
  %272 = call i32 (...) @GetLastError()
  %273 = call i32 (i32, i8*, i64, ...) @ok(i32 %270, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.16, i64 0, i64 0), i64 %271, i32 %272)
  %274 = load i32, i32* @GENERIC_ALL, align 4
  %275 = load i32, i32* @STANDARD_RIGHTS_ALL, align 4
  %276 = or i32 %274, %275
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %276, i32* %277, align 8
  %278 = load i32, i32* @SET_ACCESS, align 4
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i32 %278, i32* %279, align 4
  %280 = load i32, i32* @SUB_CONTAINERS_AND_OBJECTS_INHERIT, align 4
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 %280, i32* %281, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 4
  store i32* null, i32** %283, align 8
  %284 = load i32, i32* @NO_MULTIPLE_TRUSTEE, align 4
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 3
  store i32 %284, i32* %286, align 8
  %287 = load i32, i32* @TRUSTEE_IS_SID, align 4
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 2
  store i32 %287, i32* %289, align 4
  %290 = load i32, i32* @TRUSTEE_IS_WELL_KNOWN_GROUP, align 4
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  store i32 %290, i32* %292, align 8
  %293 = load i64, i64* %9, align 8
  %294 = inttoptr i64 %293 to i8*
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  store i8* %294, i8** %296, align 8
  %297 = call i64 @SetEntriesInAclA(i32 1, %struct.TYPE_8__* %10, i32* null, i32* %11)
  store i64 %297, i64* %6, align 8
  %298 = load i64, i64* %6, align 8
  %299 = load i64, i64* @ERROR_SUCCESS, align 8
  %300 = icmp eq i64 %298, %299
  %301 = zext i1 %300 to i32
  %302 = load i64, i64* %6, align 8
  %303 = call i32 (...) @GetLastError()
  %304 = call i32 (i32, i8*, i64, ...) @ok(i32 %301, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.17, i64 0, i64 0), i64 %302, i32 %303)
  %305 = call i32 (...) @GetProcessHeap()
  %306 = load i32, i32* @SECURITY_DESCRIPTOR_MIN_LENGTH, align 4
  %307 = call i32* @HeapAlloc(i32 %305, i32 0, i32 %306)
  store i32* %307, i32** %12, align 8
  %308 = load i32*, i32** %12, align 8
  %309 = load i32, i32* @SECURITY_DESCRIPTOR_REVISION, align 4
  %310 = call i64 @InitializeSecurityDescriptor(i32* %308, i32 %309)
  store i64 %310, i64* %7, align 8
  %311 = load i64, i64* %7, align 8
  %312 = load i64, i64* @TRUE, align 8
  %313 = icmp eq i64 %311, %312
  %314 = zext i1 %313 to i32
  %315 = load i64, i64* %7, align 8
  %316 = call i32 (...) @GetLastError()
  %317 = call i32 (i32, i8*, i64, ...) @ok(i32 %314, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.18, i64 0, i64 0), i64 %315, i32 %316)
  %318 = load i32*, i32** %12, align 8
  %319 = load i64, i64* @TRUE, align 8
  %320 = load i32, i32* %11, align 4
  %321 = load i32, i32* @FALSE, align 4
  %322 = call i64 @SetSecurityDescriptorDacl(i32* %318, i64 %319, i32 %320, i32 %321)
  store i64 %322, i64* %7, align 8
  %323 = load i64, i64* %7, align 8
  %324 = load i64, i64* @TRUE, align 8
  %325 = icmp eq i64 %323, %324
  %326 = zext i1 %325 to i32
  %327 = load i64, i64* %7, align 8
  %328 = call i32 (...) @GetLastError()
  %329 = call i32 (i32, i8*, i64, ...) @ok(i32 %326, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i64 0, i64 0), i64 %327, i32 %328)
  %330 = load i64, i64* @limited_user, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %264
  %333 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0))
  br label %391

334:                                              ; preds = %264
  %335 = load i32*, i32** %4, align 8
  %336 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %337 = load i32*, i32** %12, align 8
  %338 = call i64 @RegSetKeySecurity(i32* %335, i32 %336, i32* %337)
  store i64 %338, i64* %1, align 8
  %339 = load i64, i64* %1, align 8
  %340 = load i64, i64* @ERROR_SUCCESS, align 8
  %341 = icmp eq i64 %339, %340
  %342 = zext i1 %341 to i32
  %343 = load i64, i64* %1, align 8
  %344 = call i32 (i32, i8*, i64, ...) @ok(i32 %342, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.21, i64 0, i64 0), i64 %343)
  %345 = load i32*, i32** %5, align 8
  %346 = load i32, i32* @DACL_SECURITY_INFORMATION, align 4
  %347 = load i32*, i32** %12, align 8
  %348 = call i64 @RegSetKeySecurity(i32* %345, i32 %346, i32* %347)
  store i64 %348, i64* %1, align 8
  %349 = load i64, i64* %1, align 8
  %350 = load i64, i64* @ERROR_SUCCESS, align 8
  %351 = icmp eq i64 %349, %350
  %352 = zext i1 %351 to i32
  %353 = load i64, i64* %1, align 8
  %354 = call i32 (i32, i8*, i64, ...) @ok(i32 %352, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.21, i64 0, i64 0), i64 %353)
  store i32* null, i32** %2, align 8
  %355 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %356 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %357 = load i32, i32* @KEY_READ, align 4
  %358 = or i32 %356, %357
  %359 = call i64 @RegCreateKeyExA(i32* %355, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %358, i32* null, i32** %2, i32* null)
  store i64 %359, i64* %1, align 8
  %360 = load i64, i64* %1, align 8
  %361 = load i64, i64* @ERROR_SUCCESS, align 8
  %362 = icmp eq i64 %360, %361
  br i1 %362, label %363, label %366

363:                                              ; preds = %334
  %364 = load i32*, i32** %2, align 8
  %365 = icmp ne i32* %364, null
  br label %366

366:                                              ; preds = %363, %334
  %367 = phi i1 [ false, %334 ], [ %365, %363 ]
  %368 = zext i1 %367 to i32
  %369 = load i64, i64* %1, align 8
  %370 = call i32 (i32, i8*, i64, ...) @ok(i32 %368, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i64 %369)
  %371 = load i32*, i32** %2, align 8
  %372 = call i32 @RegCloseKey(i32* %371)
  store i32* null, i32** %2, align 8
  %373 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %374 = load i32, i32* @KEY_WOW64_32KEY, align 4
  %375 = load i32, i32* @KEY_READ, align 4
  %376 = or i32 %374, %375
  %377 = call i64 @RegCreateKeyExA(i32* %373, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %376, i32* null, i32** %2, i32* null)
  store i64 %377, i64* %1, align 8
  %378 = load i64, i64* %1, align 8
  %379 = load i64, i64* @ERROR_SUCCESS, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %384

381:                                              ; preds = %366
  %382 = load i32*, i32** %2, align 8
  %383 = icmp ne i32* %382, null
  br label %384

384:                                              ; preds = %381, %366
  %385 = phi i1 [ false, %366 ], [ %383, %381 ]
  %386 = zext i1 %385 to i32
  %387 = load i64, i64* %1, align 8
  %388 = call i32 (i32, i8*, i64, ...) @ok(i32 %386, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i64 %387)
  %389 = load i32*, i32** %2, align 8
  %390 = call i32 @RegCloseKey(i32* %389)
  br label %391

391:                                              ; preds = %384, %332
  %392 = call i32 (...) @GetProcessHeap()
  %393 = load i32*, i32** %12, align 8
  %394 = call i32 @HeapFree(i32 %392, i32 0, i32* %393)
  %395 = load i32, i32* %11, align 4
  %396 = call i32 @LocalFree(i32 %395)
  %397 = load i64, i64* %9, align 8
  %398 = call i32 @FreeSid(i64 %397)
  %399 = load i32*, i32** %4, align 8
  %400 = call i32 @RegDeleteKeyA(i32* %399, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %401 = load i32*, i32** %4, align 8
  %402 = call i32 @RegCloseKey(i32* %401)
  %403 = load i32*, i32** %5, align 8
  %404 = call i32 @RegDeleteKeyA(i32* %403, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %405 = load i32*, i32** %5, align 8
  %406 = call i32 @RegCloseKey(i32* %405)
  br label %407

407:                                              ; preds = %391, %198
  ret void
}

declare dso_local i64 @RegCreateKeyExA(i32*, i8*, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @RegDeleteKeyA(i32*, i8*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i32 @GetVersion(...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i64 @AllocateAndInitializeSid(%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @SetEntriesInAclA(i32, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @InitializeSecurityDescriptor(i32*, i32) #1

declare dso_local i64 @SetSecurityDescriptorDacl(i32*, i64, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @RegSetKeySecurity(i32*, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @FreeSid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
