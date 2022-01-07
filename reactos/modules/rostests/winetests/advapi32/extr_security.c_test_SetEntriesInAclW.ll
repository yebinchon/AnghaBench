; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_SetEntriesInAclW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_SetEntriesInAclW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32*, i32 }

@SECURITY_WORLD_SID_AUTHORITY = common dso_local global i32 0, align 4
@SECURITY_NT_AUTHORITY = common dso_local global i32 0, align 4
@test_SetEntriesInAclW.wszEveryone = internal constant [9 x i8] c"Everyone\00", align 1
@test_SetEntriesInAclW.wszCurrentUser = internal constant [13 x i8] c"CURRENT_USER\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SetEntriesInAclW is not implemented\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"SetEntriesInAclW failed: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"NewAcl=%p, expected NULL\0A\00", align 1
@ACL_REVISION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"ACLs not implemented - skipping tests\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"InitializeAcl failed with error %d\0A\00", align 1
@SECURITY_WORLD_RID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"AllocateAndInitializeSid failed with error %d\0A\00", align 1
@SECURITY_BUILTIN_DOMAIN_RID = common dso_local global i32 0, align 4
@DOMAIN_ALIAS_RID_USERS = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"AddAccessAllowedAce failed with error %d\0A\00", align 1
@KEY_WRITE = common dso_local global i32 0, align 4
@GRANT_ACCESS = common dso_local global i32 0, align 4
@NO_INHERITANCE = common dso_local global i32 0, align 4
@TRUSTEE_IS_WELL_KNOWN_GROUP = common dso_local global i32 0, align 4
@TRUSTEE_IS_SID = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"returned acl was NULL\0A\00", align 1
@TRUSTEE_IS_UNKNOWN = common dso_local global i32 0, align 4
@NO_MULTIPLE_TRUSTEE = common dso_local global i8* null, align 8
@LANG_ENGLISH = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [53 x i8] c"Non-English locale (test with hardcoded 'Everyone')\0A\00", align 1
@TRUSTEE_IS_NAME = common dso_local global i8* null, align 8
@TRUSTEE_BAD_FORM = common dso_local global i8* null, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"returned acl wasn't NULL: %p\0A\00", align 1
@TRUSTEE_IS_IMPERSONATE = common dso_local global i32 0, align 4
@SET_ACCESS = common dso_local global i32 0, align 4
@REVOKE_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetEntriesInAclW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetEntriesInAclW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %10 = load i32, i32* @SECURITY_WORLD_SID_AUTHORITY, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %12 = load i32, i32* @SECURITY_NT_AUTHORITY, align 4
  store i32 %12, i32* %11, align 4
  store i32* inttoptr (i64 3735928559 to i32*), i32** %5, align 8
  %13 = call i32 @pSetEntriesInAclW(i32 0, %struct.TYPE_8__* null, i32* null, i32** %5)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 @win_skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %300

19:                                               ; preds = %0
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @ERROR_SUCCESS, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %1, align 4
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load i32*, i32** %5, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i64 @broken(i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %28, %19
  %35 = phi i1 [ true, %19 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @LocalFree(i32* %39)
  %41 = call i32 (...) @GetProcessHeap()
  %42 = call i32* @HeapAlloc(i32 %41, i32 0, i32 256)
  store i32* %42, i32** %4, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @ACL_REVISION, align 4
  %45 = call i32 @InitializeAcl(i32* %43, i32 256, i32 %44)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %34
  %49 = call i32 (...) @GetLastError()
  %50 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = call i32 @win_skip(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i32 (...) @GetProcessHeap()
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @HeapFree(i32 %54, i32 0, i32* %55)
  br label %300

57:                                               ; preds = %48, %34
  %58 = load i32, i32* %1, align 4
  %59 = call i32 (...) @GetLastError()
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @SECURITY_WORLD_RID, align 4
  %62 = call i32 @AllocateAndInitializeSid(%struct.TYPE_7__* %6, i32 1, i32 %61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8** %2)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* %1, align 4
  %64 = call i32 (...) @GetLastError()
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @SECURITY_BUILTIN_DOMAIN_RID, align 4
  %67 = load i32, i32* @DOMAIN_ALIAS_RID_USERS, align 4
  %68 = call i32 @AllocateAndInitializeSid(%struct.TYPE_7__* %7, i32 2, i32 %66, i32 %67, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8** %3)
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* %1, align 4
  %70 = call i32 (...) @GetLastError()
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @ACL_REVISION, align 4
  %74 = load i32, i32* @KEY_READ, align 4
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @AddAccessAllowedAce(i32* %72, i32 %73, i32 %74, i8* %75)
  store i32 %76, i32* %1, align 4
  %77 = load i32, i32* %1, align 4
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @KEY_WRITE, align 4
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  store i32 %80, i32* %81, align 8
  %82 = load i32, i32* @GRANT_ACCESS, align 4
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* @NO_INHERITANCE, align 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* @TRUSTEE_IS_WELL_KNOWN_GROUP, align 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load i8*, i8** @TRUSTEE_IS_SID, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 -559038737, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store i32* inttoptr (i64 3735928559 to i32*), i32** %98, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @pSetEntriesInAclW(i32 1, %struct.TYPE_8__* %8, i32* %99, i32** %5)
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* @ERROR_SUCCESS, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %1, align 4
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32*, i32** %5, align 8
  %108 = icmp ne i32* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @LocalFree(i32* %111)
  %113 = load i32, i32* @TRUSTEE_IS_UNKNOWN, align 4
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  store i32* null, i32** %117, align 8
  %118 = load i8*, i8** @NO_MULTIPLE_TRUSTEE, align 8
  %119 = ptrtoint i8* %118 to i32
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @pSetEntriesInAclW(i32 1, %struct.TYPE_8__* %8, i32* %122, i32** %5)
  store i32 %123, i32* %1, align 4
  %124 = load i32, i32* %1, align 4
  %125 = load i32, i32* @ERROR_SUCCESS, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %1, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %5, align 8
  %131 = icmp ne i32* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @LocalFree(i32* %134)
  %136 = call i32 (...) @GetSystemDefaultLangID()
  %137 = call i64 @PRIMARYLANGID(i32 %136)
  %138 = load i64, i64* @LANG_ENGLISH, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %57
  %141 = call i32 @skip(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  br label %251

142:                                              ; preds = %57
  %143 = load i8*, i8** @TRUSTEE_IS_NAME, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_SetEntriesInAclW.wszEveryone, i64 0, i64 0), i8** %147, align 8
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 @pSetEntriesInAclW(i32 1, %struct.TYPE_8__* %8, i32* %148, i32** %5)
  store i32 %149, i32* %1, align 4
  %150 = load i32, i32* %1, align 4
  %151 = load i32, i32* @ERROR_SUCCESS, align 4
  %152 = icmp eq i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %1, align 4
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  %156 = load i32*, i32** %5, align 8
  %157 = icmp ne i32* %156, null
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @LocalFree(i32* %160)
  %162 = load i8*, i8** @TRUSTEE_BAD_FORM, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @pSetEntriesInAclW(i32 1, %struct.TYPE_8__* %8, i32* %165, i32** %5)
  store i32 %166, i32* %1, align 4
  %167 = load i32, i32* %1, align 4
  %168 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %177, label %170

170:                                              ; preds = %142
  %171 = load i32, i32* %1, align 4
  %172 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  %173 = icmp eq i32 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i64 @broken(i32 %174)
  %176 = icmp ne i64 %175, 0
  br label %177

177:                                              ; preds = %170, %142
  %178 = phi i1 [ true, %142 ], [ %176, %170 ]
  %179 = zext i1 %178 to i32
  %180 = load i32, i32* %1, align 4
  %181 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  %182 = load i32*, i32** %5, align 8
  %183 = icmp eq i32* %182, null
  br i1 %183, label %190, label %184

184:                                              ; preds = %177
  %185 = load i32*, i32** %5, align 8
  %186 = icmp ne i32* %185, null
  %187 = zext i1 %186 to i32
  %188 = call i64 @broken(i32 %187)
  %189 = icmp ne i64 %188, 0
  br label %190

190:                                              ; preds = %184, %177
  %191 = phi i1 [ true, %177 ], [ %189, %184 ]
  %192 = zext i1 %191 to i32
  %193 = load i32*, i32** %5, align 8
  %194 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32* %193)
  %195 = load i8*, i8** @TRUSTEE_IS_NAME, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  store i8* %195, i8** %197, align 8
  %198 = load i32, i32* @TRUSTEE_IS_IMPERSONATE, align 4
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 @pSetEntriesInAclW(i32 1, %struct.TYPE_8__* %8, i32* %201, i32** %5)
  store i32 %202, i32* %1, align 4
  %203 = load i32, i32* %1, align 4
  %204 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %213, label %206

206:                                              ; preds = %190
  %207 = load i32, i32* %1, align 4
  %208 = load i32, i32* @ERROR_NOT_SUPPORTED, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i64 @broken(i32 %210)
  %212 = icmp ne i64 %211, 0
  br label %213

213:                                              ; preds = %206, %190
  %214 = phi i1 [ true, %190 ], [ %212, %206 ]
  %215 = zext i1 %214 to i32
  %216 = load i32, i32* %1, align 4
  %217 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %216)
  %218 = load i32*, i32** %5, align 8
  %219 = icmp eq i32* %218, null
  br i1 %219, label %226, label %220

220:                                              ; preds = %213
  %221 = load i32*, i32** %5, align 8
  %222 = icmp ne i32* %221, null
  %223 = zext i1 %222 to i32
  %224 = call i64 @broken(i32 %223)
  %225 = icmp ne i64 %224, 0
  br label %226

226:                                              ; preds = %220, %213
  %227 = phi i1 [ true, %213 ], [ %225, %220 ]
  %228 = zext i1 %227 to i32
  %229 = load i32*, i32** %5, align 8
  %230 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32* %229)
  %231 = load i8*, i8** @NO_MULTIPLE_TRUSTEE, align 8
  %232 = ptrtoint i8* %231 to i32
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* @SET_ACCESS, align 4
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %235, i32* %236, align 8
  %237 = load i32*, i32** %4, align 8
  %238 = call i32 @pSetEntriesInAclW(i32 1, %struct.TYPE_8__* %8, i32* %237, i32** %5)
  store i32 %238, i32* %1, align 4
  %239 = load i32, i32* %1, align 4
  %240 = load i32, i32* @ERROR_SUCCESS, align 4
  %241 = icmp eq i32 %239, %240
  %242 = zext i1 %241 to i32
  %243 = load i32, i32* %1, align 4
  %244 = call i32 (i32, i8*, ...) @ok(i32 %242, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %243)
  %245 = load i32*, i32** %5, align 8
  %246 = icmp ne i32* %245, null
  %247 = zext i1 %246 to i32
  %248 = call i32 (i32, i8*, ...) @ok(i32 %247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %249 = load i32*, i32** %5, align 8
  %250 = call i32 @LocalFree(i32* %249)
  br label %251

251:                                              ; preds = %226, %140
  %252 = load i8*, i8** @TRUSTEE_IS_NAME, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 2
  store i8* %252, i8** %254, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_SetEntriesInAclW.wszCurrentUser, i64 0, i64 0), i8** %256, align 8
  %257 = load i32*, i32** %4, align 8
  %258 = call i32 @pSetEntriesInAclW(i32 1, %struct.TYPE_8__* %8, i32* %257, i32** %5)
  store i32 %258, i32* %1, align 4
  %259 = load i32, i32* %1, align 4
  %260 = load i32, i32* @ERROR_SUCCESS, align 4
  %261 = icmp eq i32 %259, %260
  %262 = zext i1 %261 to i32
  %263 = load i32, i32* %1, align 4
  %264 = call i32 (i32, i8*, ...) @ok(i32 %262, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %263)
  %265 = load i32*, i32** %5, align 8
  %266 = icmp ne i32* %265, null
  %267 = zext i1 %266 to i32
  %268 = call i32 (i32, i8*, ...) @ok(i32 %267, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %269 = load i32*, i32** %5, align 8
  %270 = call i32 @LocalFree(i32* %269)
  %271 = load i32, i32* @REVOKE_ACCESS, align 4
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %271, i32* %272, align 8
  %273 = load i8*, i8** @TRUSTEE_IS_SID, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 2
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 1
  store i8* %276, i8** %278, align 8
  %279 = load i32*, i32** %4, align 8
  %280 = call i32 @pSetEntriesInAclW(i32 1, %struct.TYPE_8__* %8, i32* %279, i32** %5)
  store i32 %280, i32* %1, align 4
  %281 = load i32, i32* %1, align 4
  %282 = load i32, i32* @ERROR_SUCCESS, align 4
  %283 = icmp eq i32 %281, %282
  %284 = zext i1 %283 to i32
  %285 = load i32, i32* %1, align 4
  %286 = call i32 (i32, i8*, ...) @ok(i32 %284, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %285)
  %287 = load i32*, i32** %5, align 8
  %288 = icmp ne i32* %287, null
  %289 = zext i1 %288 to i32
  %290 = call i32 (i32, i8*, ...) @ok(i32 %289, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %291 = load i32*, i32** %5, align 8
  %292 = call i32 @LocalFree(i32* %291)
  %293 = load i8*, i8** %3, align 8
  %294 = call i32 @FreeSid(i8* %293)
  %295 = load i8*, i8** %2, align 8
  %296 = call i32 @FreeSid(i8* %295)
  %297 = call i32 (...) @GetProcessHeap()
  %298 = load i32*, i32** %4, align 8
  %299 = call i32 @HeapFree(i32 %297, i32 0, i32* %298)
  br label %300

300:                                              ; preds = %251, %52, %17
  ret void
}

declare dso_local i32 @pSetEntriesInAclW(i32, %struct.TYPE_8__*, i32*, i32**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @InitializeAcl(i32*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @AllocateAndInitializeSid(%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**) #1

declare dso_local i32 @AddAccessAllowedAce(i32*, i32, i32, i8*) #1

declare dso_local i64 @PRIMARYLANGID(i32) #1

declare dso_local i32 @GetSystemDefaultLangID(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @FreeSid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
