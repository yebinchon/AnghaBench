; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_testAuth.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/secur32/extr_ntlm.c_testAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_26__*, %struct.TYPE_21__ }
%struct.TYPE_26__ = type { i8*, i8*, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i64 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i64, i64, i8* }

@SEC_I_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@sec_pkg_name = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"NTLM package not installed, skipping test.\0A\00", align 1
@test_user = common dso_local global i64 0, align 8
@workgroup = common dso_local global i64 0, align 8
@test_pass = common dso_local global i64 0, align 8
@SEC_WINNT_AUTH_IDENTITY_ANSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Error: Setting up the client returned %s, exiting test!\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Error: Setting up the server returned %s, exiting test!\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Running the client returned %s, more tests will fail.\0A\00", align 1
@SEC_E_LOGON_DENIED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [64 x i8] c"Running the server returned %s, more tests will fail from now.\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Looping\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"Authentication failed, skipping test.\0A\00", align 1
@SECPKG_ATTR_SIZES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"pQueryContextAttributesA(SECPKG_ATTR_SIZES) returned %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"cbMaxToken should be 1904 or 2888 but is %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"cbMaxSignature should be 16 but is %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"cbSecurityTrailer should be 16 but is  %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"cbBlockSize should be 0 but is %u\0A\00", align 1
@SECPKG_ATTR_NEGOTIATION_INFO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"QueryContextAttributesA returned %08x\0A\00", align 1
@SECPKG_NEGOTIATION_COMPLETE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"expected non-NULL PackageInfo\0A\00", align 1
@NTLM_BASE_CAPS = common dso_local global i32 0, align 4
@SECPKG_FLAG_READONLY_WITH_CHECKSUM = common dso_local global i32 0, align 4
@SECPKG_FLAG_RESTRICTED_TOKENS = common dso_local global i32 0, align 4
@SECPKG_FLAG_APPCONTAINER_CHECKS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@RPC_C_AUTHN_WINNT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"NTLM\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"got %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"got %u, expected %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Name doesn't fit into allocated block\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Comment doesn't fit into allocated block\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"FreeContextBuffer error %#x\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"DeleteSecurityContext(server) returned %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"DeleteSecurityContext(client) returned %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"FreeCredentialsHandle(server) returned %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"FreeCredentialsHandle(client) returned %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @testAuth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testAuth(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca %struct.TYPE_22__, align 8
  %12 = alloca %struct.TYPE_26__, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca %struct.TYPE_25__, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %19 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  store i64 %20, i64* %6, align 8
  store i32* null, i32** %8, align 8
  %21 = load i64, i64* @TRUE, align 8
  store i64 %21, i64* %9, align 8
  %22 = bitcast %struct.TYPE_22__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = bitcast %struct.TYPE_22__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  %24 = load i32, i32* @sec_pkg_name, align 4
  %25 = call i64 @pQuerySecurityPackageInfoA(i32 %24, i32** %8)
  %26 = load i64, i64* @SEC_E_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %410

30:                                               ; preds = %2
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @pFreeContextBuffer(i32* %31)
  %33 = load i64, i64* @test_user, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @strlen(i8* %37)
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 6
  store i8* %38, i8** %39, align 8
  %40 = load i64, i64* @workgroup, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @strlen(i8* %44)
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 5
  store i8* %45, i8** %46, align 8
  %47 = load i64, i64* @test_pass, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @strlen(i8* %51)
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 4
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* @SEC_WINNT_AUTH_IDENTITY_ANSI, align 4
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 2
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %56, align 8
  %57 = load i32, i32* @sec_pkg_name, align 4
  %58 = call i64 @setupClient(%struct.TYPE_22__* %10, i32 %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @SEC_E_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %30
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @getSecError(i64 %63)
  %65 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %67 = call i64 @pFreeCredentialsHandle(i32* %66)
  br label %410

68:                                               ; preds = %30
  %69 = load i64, i64* %4, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @sec_pkg_name, align 4
  %73 = call i64 @setupFakeServer(%struct.TYPE_22__* %11, i32 %72)
  store i64 %73, i64* %7, align 8
  br label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @sec_pkg_name, align 4
  %76 = call i64 @setupServer(%struct.TYPE_22__* %11, i32 %75)
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @SEC_E_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i64, i64* %7, align 8
  %83 = call i64 @getSecError(i64 %82)
  %84 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %86 = call i64 @pFreeCredentialsHandle(i32* %85)
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %88 = call i64 @pFreeCredentialsHandle(i32* %87)
  br label %410

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %140, %89
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %97 = icmp eq i64 %95, %96
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i1 [ false, %90 ], [ %97, %94 ]
  br i1 %99, label %100, label %149

100:                                              ; preds = %98
  %101 = load i64, i64* %9, align 8
  %102 = load i32, i32* %3, align 4
  %103 = call i64 @runClient(%struct.TYPE_22__* %10, i64 %101, i32 %102)
  store i64 %103, i64* %5, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @SEC_E_OK, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %110 = icmp eq i64 %108, %109
  br label %111

111:                                              ; preds = %107, %100
  %112 = phi i1 [ true, %100 ], [ %110, %107 ]
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %5, align 8
  %115 = call i64 @getSecError(i64 %114)
  %116 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %115)
  %117 = call i32 @communicate(%struct.TYPE_22__* %10, %struct.TYPE_22__* %11)
  %118 = load i64, i64* %4, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load i64, i64* %9, align 8
  %122 = load i32, i32* %3, align 4
  %123 = call i64 @runFakeServer(%struct.TYPE_22__* %11, i64 %121, i32 %122)
  store i64 %123, i64* %6, align 8
  br label %128

124:                                              ; preds = %111
  %125 = load i64, i64* %9, align 8
  %126 = load i32, i32* %3, align 4
  %127 = call i64 @runServer(%struct.TYPE_22__* %11, i64 %125, i32 %126)
  store i64 %127, i64* %6, align 8
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* @SEC_E_OK, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* %6, align 8
  %138 = load i64, i64* @SEC_E_LOGON_DENIED, align 8
  %139 = icmp eq i64 %137, %138
  br label %140

140:                                              ; preds = %136, %132, %128
  %141 = phi i1 [ true, %132 ], [ true, %128 ], [ %139, %136 ]
  %142 = zext i1 %141 to i32
  %143 = load i64, i64* %6, align 8
  %144 = call i64 @getSecError(i64 %143)
  %145 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i64 %144)
  %146 = call i32 @communicate(%struct.TYPE_22__* %11, %struct.TYPE_22__* %10)
  %147 = call i32 @trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i64, i64* @FALSE, align 8
  store i64 %148, i64* %9, align 8
  br label %90

149:                                              ; preds = %98
  %150 = load i64, i64* %5, align 8
  %151 = load i64, i64* @SEC_E_OK, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %363

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %157 = load i32, i32* @SECPKG_ATTR_SIZES, align 4
  %158 = call i64 @pQueryContextAttributesA(i32* %156, i32 %157, %struct.TYPE_24__* %13)
  store i64 %158, i64* %7, align 8
  %159 = load i64, i64* %7, align 8
  %160 = load i64, i64* @SEC_E_OK, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = load i64, i64* %7, align 8
  %164 = call i64 @getSecError(i64 %163)
  %165 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i64 %164)
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 1904
  br i1 %168, label %173, label %169

169:                                              ; preds = %155
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 2888
  br label %173

173:                                              ; preds = %169, %155
  %174 = phi i1 [ true, %155 ], [ %172, %169 ]
  %175 = zext i1 %174 to i32
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 16
  %182 = zext i1 %181 to i32
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 16
  %189 = zext i1 %188 to i32
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %191)
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %194, 0
  %196 = zext i1 %195 to i32
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i64 %198)
  %200 = call i32 @memset(%struct.TYPE_25__* %14, i32 0, i32 16)
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %202 = load i32, i32* @SECPKG_ATTR_NEGOTIATION_INFO, align 4
  %203 = call i64 @QueryContextAttributesA(i32* %201, i32 %202, %struct.TYPE_25__* %14)
  store i64 %203, i64* %7, align 8
  %204 = load i64, i64* %7, align 8
  %205 = load i64, i64* @SEC_E_OK, align 8
  %206 = icmp eq i64 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load i64, i64* %7, align 8
  %209 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i64 %208)
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %210, align 8
  store %struct.TYPE_23__* %211, %struct.TYPE_23__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @SECPKG_NEGOTIATION_COMPLETE, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i64 %218)
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %221 = icmp ne %struct.TYPE_23__* %220, null
  %222 = zext i1 %221 to i32
  %223 = call i32 (i32, i8*, ...) @ok(i32 %222, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %225 = icmp ne %struct.TYPE_23__* %224, null
  br i1 %225, label %226, label %362

226:                                              ; preds = %173
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @NTLM_BASE_CAPS, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %258, label %232

232:                                              ; preds = %226
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @NTLM_BASE_CAPS, align 4
  %237 = load i32, i32* @SECPKG_FLAG_READONLY_WITH_CHECKSUM, align 4
  %238 = or i32 %236, %237
  %239 = icmp eq i32 %235, %238
  br i1 %239, label %258, label %240

240:                                              ; preds = %232
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @NTLM_BASE_CAPS, align 4
  %245 = load i32, i32* @SECPKG_FLAG_RESTRICTED_TOKENS, align 4
  %246 = or i32 %244, %245
  %247 = icmp eq i32 %243, %246
  br i1 %247, label %258, label %248

248:                                              ; preds = %240
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @NTLM_BASE_CAPS, align 4
  %253 = load i32, i32* @SECPKG_FLAG_RESTRICTED_TOKENS, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @SECPKG_FLAG_APPCONTAINER_CHECKS, align 4
  %256 = or i32 %254, %255
  %257 = icmp eq i32 %251, %256
  br label %258

258:                                              ; preds = %248, %240, %232, %226
  %259 = phi i1 [ true, %240 ], [ true, %232 ], [ true, %226 ], [ %257, %248 ]
  %260 = zext i1 %259 to i32
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 (i32, i8*, ...) @ok(i32 %260, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %263)
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 1
  %269 = zext i1 %268 to i32
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (i32, i8*, ...) @ok(i32 %269, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %272)
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @RPC_C_AUTHN_WINNT, align 8
  %278 = icmp eq i64 %276, %277
  %279 = zext i1 %278 to i32
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %281 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = call i32 (i32, i8*, ...) @ok(i32 %279, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i64 %282)
  %284 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @lstrcmpA(i64 %286, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %288 = icmp ne i32 %287, 0
  %289 = xor i1 %288, true
  %290 = zext i1 %289 to i32
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = call i32 (i32, i8*, ...) @ok(i32 %290, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 %293)
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = inttoptr i64 %297 to i8*
  %299 = call i32 @lstrlenA(i8* %298)
  %300 = sext i32 %299 to i64
  %301 = add i64 32, %300
  %302 = add i64 %301, 1
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 4
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 @lstrlenA(i8* %305)
  %307 = sext i32 %306 to i64
  %308 = add i64 %302, %307
  %309 = add i64 %308, 1
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %16, align 4
  %311 = call i32 (...) @GetProcessHeap()
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %313 = call i32 @HeapSize(i32 %311, i32 0, %struct.TYPE_23__* %312)
  store i32 %313, i32* %17, align 4
  %314 = load i32, i32* %17, align 4
  %315 = load i32, i32* %16, align 4
  %316 = icmp eq i32 %314, %315
  %317 = zext i1 %316 to i32
  %318 = load i32, i32* %17, align 4
  %319 = load i32, i32* %16, align 4
  %320 = call i32 (i32, i8*, ...) @ok(i32 %317, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 %318, i32 %319)
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %322 = bitcast %struct.TYPE_23__* %321 to i8*
  %323 = load i32, i32* %16, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %322, i64 %324
  store i8* %325, i8** %18, align 8
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 3
  %331 = load i64, i64* %330, align 8
  %332 = inttoptr i64 %331 to i8*
  %333 = call i32 @lstrlenA(i8* %332)
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %328, %334
  %336 = inttoptr i64 %335 to i8*
  %337 = load i8*, i8** %18, align 8
  %338 = icmp ult i8* %336, %337
  %339 = zext i1 %338 to i32
  %340 = call i32 (i32, i8*, ...) @ok(i32 %339, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0))
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 4
  %343 = load i8*, i8** %342, align 8
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %345 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %344, i32 0, i32 4
  %346 = load i8*, i8** %345, align 8
  %347 = call i32 @lstrlenA(i8* %346)
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %343, i64 %348
  %350 = load i8*, i8** %18, align 8
  %351 = icmp ult i8* %349, %350
  %352 = zext i1 %351 to i32
  %353 = call i32 (i32, i8*, ...) @ok(i32 %352, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0))
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %355 = call i64 @FreeContextBuffer(%struct.TYPE_23__* %354)
  store i64 %355, i64* %7, align 8
  %356 = load i64, i64* %7, align 8
  %357 = load i64, i64* @SEC_E_OK, align 8
  %358 = icmp eq i64 %356, %357
  %359 = zext i1 %358 to i32
  %360 = load i64, i64* %7, align 8
  %361 = call i32 (i32, i8*, ...) @ok(i32 %359, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i64 %360)
  br label %362

362:                                              ; preds = %258, %173
  br label %363

363:                                              ; preds = %362, %153
  %364 = call i32 @cleanupBuffers(%struct.TYPE_22__* %10)
  %365 = call i32 @cleanupBuffers(%struct.TYPE_22__* %11)
  %366 = load i64, i64* %4, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %378, label %368

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  %370 = call i64 @pDeleteSecurityContext(i32* %369)
  store i64 %370, i64* %7, align 8
  %371 = load i64, i64* %7, align 8
  %372 = load i64, i64* @SEC_E_OK, align 8
  %373 = icmp eq i64 %371, %372
  %374 = zext i1 %373 to i32
  %375 = load i64, i64* %7, align 8
  %376 = call i64 @getSecError(i64 %375)
  %377 = call i32 (i32, i8*, ...) @ok(i32 %374, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i64 %376)
  br label %378

378:                                              ; preds = %368, %363
  %379 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %380 = call i64 @pDeleteSecurityContext(i32* %379)
  store i64 %380, i64* %7, align 8
  %381 = load i64, i64* %7, align 8
  %382 = load i64, i64* @SEC_E_OK, align 8
  %383 = icmp eq i64 %381, %382
  %384 = zext i1 %383 to i32
  %385 = load i64, i64* %7, align 8
  %386 = call i64 @getSecError(i64 %385)
  %387 = call i32 (i32, i8*, ...) @ok(i32 %384, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i64 %386)
  %388 = load i64, i64* %4, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %400, label %390

390:                                              ; preds = %378
  %391 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %392 = call i64 @pFreeCredentialsHandle(i32* %391)
  store i64 %392, i64* %7, align 8
  %393 = load i64, i64* %7, align 8
  %394 = load i64, i64* @SEC_E_OK, align 8
  %395 = icmp eq i64 %393, %394
  %396 = zext i1 %395 to i32
  %397 = load i64, i64* %7, align 8
  %398 = call i64 @getSecError(i64 %397)
  %399 = call i32 (i32, i8*, ...) @ok(i32 %396, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i64 %398)
  br label %400

400:                                              ; preds = %390, %378
  %401 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %402 = call i64 @pFreeCredentialsHandle(i32* %401)
  store i64 %402, i64* %7, align 8
  %403 = load i64, i64* %7, align 8
  %404 = load i64, i64* @SEC_E_OK, align 8
  %405 = icmp eq i64 %403, %404
  %406 = zext i1 %405 to i32
  %407 = load i64, i64* %7, align 8
  %408 = call i64 @getSecError(i64 %407)
  %409 = call i32 (i32, i8*, ...) @ok(i32 %406, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0), i64 %408)
  br label %410

410:                                              ; preds = %400, %81, %62, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @pQuerySecurityPackageInfoA(i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @pFreeContextBuffer(i32*) #2

declare dso_local i8* @strlen(i8*) #2

declare dso_local i64 @setupClient(%struct.TYPE_22__*, i32) #2

declare dso_local i32 @skip(i8*, ...) #2

declare dso_local i64 @getSecError(i64) #2

declare dso_local i64 @pFreeCredentialsHandle(i32*) #2

declare dso_local i64 @setupFakeServer(%struct.TYPE_22__*, i32) #2

declare dso_local i64 @setupServer(%struct.TYPE_22__*, i32) #2

declare dso_local i64 @runClient(%struct.TYPE_22__*, i64, i32) #2

declare dso_local i32 @communicate(%struct.TYPE_22__*, %struct.TYPE_22__*) #2

declare dso_local i64 @runFakeServer(%struct.TYPE_22__*, i64, i32) #2

declare dso_local i64 @runServer(%struct.TYPE_22__*, i64, i32) #2

declare dso_local i32 @trace(i8*) #2

declare dso_local i64 @pQueryContextAttributesA(i32*, i32, %struct.TYPE_24__*) #2

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #2

declare dso_local i64 @QueryContextAttributesA(i32*, i32, %struct.TYPE_25__*) #2

declare dso_local i32 @lstrcmpA(i64, i8*) #2

declare dso_local i32 @lstrlenA(i8*) #2

declare dso_local i32 @HeapSize(i32, i32, %struct.TYPE_23__*) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @FreeContextBuffer(%struct.TYPE_23__*) #2

declare dso_local i32 @cleanupBuffers(%struct.TYPE_22__*) #2

declare dso_local i64 @pDeleteSecurityContext(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
