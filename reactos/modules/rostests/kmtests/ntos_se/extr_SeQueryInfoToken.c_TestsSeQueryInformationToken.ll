; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_se/extr_SeQueryInfoToken.c_TestsSeQueryInformationToken.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_se/extr_SeQueryInfoToken.c_TestsSeQueryInformationToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Token is not captured. Testing SQIT interrupted\0A\0A\00", align 1
@TokenOwner = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"SQIT with TokenOwner arg fails with status 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Wrong. SQIT call was successful with TokenOwner arg. But Buffer == NULL\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"TokenOwner's SID is not a valid SID\0A\00", align 1
@TokenDefaultDacl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"SQIT with TokenDefaultDacl fails with status 0x%08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"Wrong. SQIT call was successful with TokenDefaultDacl arg. But Buffer == NULL\0A\00", align 1
@ACL_REVISION = common dso_local global i64 0, align 8
@ACL_REVISION_DS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"DACL is invalid\0A\00", align 1
@TokenGroups = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"SQIT with TokenGroups fails with status 0x%08X\0A\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"Wrong. SQIT call was successful with TokenGroups arg. But Buffer == NULL\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"TokenGroup's SIDs are not valid\0A\00", align 1
@TokenImpersonationLevel = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [60 x i8] c"SQIT with TokenImpersonationLevel fails with status 0x%08X\0A\00", align 1
@.str.11 = private unnamed_addr constant [71 x i8] c"and again: SQIT with TokenImpersonationLevel fails with status 0x%08X\0A\00", align 1
@.str.12 = private unnamed_addr constant [86 x i8] c"Wrong. SQIT call was successful with TokenImpersonationLevel arg. But Buffer == NULL\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Wrong. SQIT call failed. But Buffer != NULL\0A\00", align 1
@TokenOrigin = common dso_local global i32 0, align 4
@STATUS_INVALID_INFO_CLASS = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [85 x i8] c"SQIT with TokenOrigin failed with Status 0x%08X; expected STATUS_INVALID_INFO_CLASS\0A\00", align 1
@TokenGroupsAndPrivileges = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [98 x i8] c"SQIT with TokenGroupsAndPrivileges failed with Status 0x%08X; expected STATUS_INVALID_INFO_CLASS\0A\00", align 1
@TokenRestrictedSids = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [93 x i8] c"SQIT with TokenRestrictedSids failed with Status 0x%08X; expected STATUS_INVALID_INFO_CLASS\0A\00", align 1
@TokenSandBoxInert = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [91 x i8] c"SQIT with TokenSandBoxInert failed with Status 0x%08X; expected STATUS_INVALID_INFO_CLASS\0A\00", align 1
@TokenStatistics = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [52 x i8] c"SQIT with TokenStatistics fails with status 0x%08X\0A\00", align 1
@.str.19 = private unnamed_addr constant [78 x i8] c"Wrong. SQIT call was successful with TokenStatistics arg. But Buffer == NULL\0A\00", align 1
@.str.20 = private unnamed_addr constant [95 x i8] c"print statistics:\0A\09TokenID = %u_%d\0A\09SecurityImperLevel = %d\0A\09PrivCount = %d\0A\09GroupCount = %d\0A\0A\00", align 1
@TokenType = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [46 x i8] c"SQIT with TokenType fails with status 0x%08X\0A\00", align 1
@.str.22 = private unnamed_addr constant [72 x i8] c"Wrong. SQIT call was successful with TokenType arg. But Buffer == NULL\0A\00", align 1
@TokenPrimary = common dso_local global i64 0, align 8
@TokenImpersonation = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [54 x i8] c"TokenType in not a primary nor impersonation. FAILED\0A\00", align 1
@TokenUser = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [27 x i8] c"SQIT with TokenUser fails\0A\00", align 1
@.str.25 = private unnamed_addr constant [72 x i8] c"Wrong. SQIT call was successful with TokenUser arg. But Buffer == NULL\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"TokenUser has an invalid Sid\0A\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"SQIT must fail with wrong TOKEN_INFORMATION_CLASS arg\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestsSeQueryInformationToken(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %2, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %386

23:                                               ; preds = %1
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @TokenOwner, align 4
  %26 = call i64 @SeQueryInformationToken(i32* %24, i32 %25, i32** %4)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @STATUS_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %3, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @STATUS_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %23
  %37 = load i32*, i32** %4, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32*, i32** %4, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = bitcast i32* %44 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %6, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @RtlValidSid(i32 %49)
  %51 = load i32, i32* @TRUE, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @ExFreePool(i32* %55)
  br label %57

57:                                               ; preds = %43, %36
  br label %58

58:                                               ; preds = %57, %23
  store i32* null, i32** %4, align 8
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @TokenDefaultDacl, align 4
  %61 = call i64 @SeQueryInformationToken(i32* %59, i32 %60, i32** %4)
  store i64 %61, i64* %3, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @STATUS_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %3, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* @STATUS_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %105

71:                                               ; preds = %58
  %72 = load i32*, i32** %4, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32*, i32** %4, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %104

78:                                               ; preds = %71
  %79 = load i32*, i32** %4, align 8
  %80 = bitcast i32* %79 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %7, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %10, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ACL_REVISION, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %78
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ACL_REVISION_DS, align 8
  %94 = icmp eq i64 %92, %93
  br label %95

95:                                               ; preds = %89, %78
  %96 = phi i1 [ true, %78 ], [ %94, %89 ]
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* @TRUE, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @ExFreePool(i32* %102)
  br label %104

104:                                              ; preds = %95, %71
  br label %105

105:                                              ; preds = %104, %58
  store i32* null, i32** %4, align 8
  %106 = load i32*, i32** %2, align 8
  %107 = load i32, i32* @TokenGroups, align 4
  %108 = call i64 @SeQueryInformationToken(i32* %106, i32 %107, i32** %4)
  store i64 %108, i64* %3, align 8
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @STATUS_SUCCESS, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %3, align 8
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i64 %113)
  %115 = load i64, i64* %3, align 8
  %116 = load i64, i64* @STATUS_SUCCESS, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %162

118:                                              ; preds = %105
  %119 = load i32*, i32** %4, align 8
  %120 = icmp ne i32* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0))
  %123 = load i32*, i32** %4, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %161

125:                                              ; preds = %118
  %126 = load i32*, i32** %4, align 8
  %127 = bitcast i32* %126 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %127, %struct.TYPE_18__** %8, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %9, align 8
  %131 = load i32, i32* @TRUE, align 4
  store i32 %131, i32* %14, align 4
  store i64 0, i64* %15, align 8
  br label %132

132:                                              ; preds = %150, %125
  %133 = load i64, i64* %15, align 8
  %134 = load i64, i64* %9, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %132
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load i64, i64* %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @RtlValidSid(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %136
  %148 = load i32, i32* @FALSE, align 4
  store i32 %148, i32* %14, align 4
  br label %153

149:                                              ; preds = %136
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %15, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %15, align 8
  br label %132

153:                                              ; preds = %147, %132
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @TRUE, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @ExFreePool(i32* %159)
  br label %161

161:                                              ; preds = %153, %118
  br label %162

162:                                              ; preds = %161, %105
  store i32* null, i32** %4, align 8
  %163 = load i32*, i32** %2, align 8
  %164 = load i32, i32* @TokenImpersonationLevel, align 4
  %165 = call i64 @SeQueryInformationToken(i32* %163, i32 %164, i32** %4)
  store i64 %165, i64* %3, align 8
  %166 = load i64, i64* %3, align 8
  %167 = load i64, i64* @STATUS_SUCCESS, align 8
  %168 = icmp eq i64 %166, %167
  %169 = zext i1 %168 to i32
  %170 = load i64, i64* %3, align 8
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i64 %170)
  %172 = load i32*, i32** %4, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %162
  %175 = load i32*, i32** %4, align 8
  %176 = call i32 @ExFreePool(i32* %175)
  br label %177

177:                                              ; preds = %174, %162
  store i32* null, i32** %4, align 8
  %178 = load i32*, i32** %2, align 8
  %179 = load i32, i32* @TokenImpersonationLevel, align 4
  %180 = call i64 @SeQueryInformationToken(i32* %178, i32 %179, i32** %4)
  store i64 %180, i64* %3, align 8
  %181 = load i64, i64* %3, align 8
  %182 = load i64, i64* @STATUS_SUCCESS, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load i64, i64* %3, align 8
  %186 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i64 0, i64 0), i64 %185)
  %187 = load i64, i64* %3, align 8
  %188 = load i64, i64* @STATUS_SUCCESS, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %177
  %191 = load i32*, i32** %4, align 8
  %192 = icmp ne i32* %191, null
  %193 = zext i1 %192 to i32
  %194 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.12, i64 0, i64 0))
  br label %200

195:                                              ; preds = %177
  %196 = load i32*, i32** %4, align 8
  %197 = icmp eq i32* %196, null
  %198 = zext i1 %197 to i32
  %199 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  br label %200

200:                                              ; preds = %195, %190
  %201 = load i32*, i32** %4, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32*, i32** %4, align 8
  %205 = call i32 @ExFreePool(i32* %204)
  br label %206

206:                                              ; preds = %203, %200
  store i32* null, i32** %4, align 8
  %207 = load i32*, i32** %2, align 8
  %208 = load i32, i32* @TokenOrigin, align 4
  %209 = call i64 @SeQueryInformationToken(i32* %207, i32 %208, i32** %4)
  store i64 %209, i64* %3, align 8
  %210 = load i64, i64* %3, align 8
  %211 = load i64, i64* @STATUS_INVALID_INFO_CLASS, align 8
  %212 = icmp eq i64 %210, %211
  %213 = zext i1 %212 to i32
  %214 = load i64, i64* %3, align 8
  %215 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.14, i64 0, i64 0), i64 %214)
  %216 = load i32*, i32** %4, align 8
  %217 = icmp eq i32* %216, null
  %218 = zext i1 %217 to i32
  %219 = call i32 (i32, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  %220 = load i32*, i32** %2, align 8
  %221 = load i32, i32* @TokenGroupsAndPrivileges, align 4
  %222 = call i64 @SeQueryInformationToken(i32* %220, i32 %221, i32** %4)
  store i64 %222, i64* %3, align 8
  %223 = load i64, i64* %3, align 8
  %224 = load i64, i64* @STATUS_INVALID_INFO_CLASS, align 8
  %225 = icmp eq i64 %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i64, i64* %3, align 8
  %228 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.15, i64 0, i64 0), i64 %227)
  %229 = load i32*, i32** %4, align 8
  %230 = icmp eq i32* %229, null
  %231 = zext i1 %230 to i32
  %232 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  %233 = load i32*, i32** %2, align 8
  %234 = load i32, i32* @TokenRestrictedSids, align 4
  %235 = call i64 @SeQueryInformationToken(i32* %233, i32 %234, i32** %4)
  store i64 %235, i64* %3, align 8
  %236 = load i64, i64* %3, align 8
  %237 = load i64, i64* @STATUS_INVALID_INFO_CLASS, align 8
  %238 = icmp eq i64 %236, %237
  %239 = zext i1 %238 to i32
  %240 = load i64, i64* %3, align 8
  %241 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.16, i64 0, i64 0), i64 %240)
  %242 = load i32*, i32** %4, align 8
  %243 = icmp eq i32* %242, null
  %244 = zext i1 %243 to i32
  %245 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  %246 = load i32*, i32** %2, align 8
  %247 = load i32, i32* @TokenSandBoxInert, align 4
  %248 = call i64 @SeQueryInformationToken(i32* %246, i32 %247, i32** %4)
  store i64 %248, i64* %3, align 8
  %249 = load i64, i64* %3, align 8
  %250 = load i64, i64* @STATUS_INVALID_INFO_CLASS, align 8
  %251 = icmp eq i64 %249, %250
  %252 = zext i1 %251 to i32
  %253 = load i64, i64* %3, align 8
  %254 = call i32 (i32, i8*, ...) @ok(i32 %252, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.17, i64 0, i64 0), i64 %253)
  %255 = load i32*, i32** %4, align 8
  %256 = icmp eq i32* %255, null
  %257 = zext i1 %256 to i32
  %258 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  %259 = load i32*, i32** %2, align 8
  %260 = load i32, i32* @TokenStatistics, align 4
  %261 = call i64 @SeQueryInformationToken(i32* %259, i32 %260, i32** %4)
  store i64 %261, i64* %3, align 8
  %262 = load i64, i64* %3, align 8
  %263 = load i64, i64* @STATUS_SUCCESS, align 8
  %264 = icmp eq i64 %262, %263
  %265 = zext i1 %264 to i32
  %266 = load i64, i64* %3, align 8
  %267 = call i32 (i32, i8*, ...) @ok(i32 %265, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0), i64 %266)
  %268 = load i64, i64* %3, align 8
  %269 = load i64, i64* @STATUS_SUCCESS, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %302

271:                                              ; preds = %206
  %272 = load i32*, i32** %4, align 8
  %273 = icmp ne i32* %272, null
  %274 = zext i1 %273 to i32
  %275 = call i32 (i32, i8*, ...) @ok(i32 %274, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.19, i64 0, i64 0))
  %276 = load i32*, i32** %4, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %301

278:                                              ; preds = %271
  %279 = load i32*, i32** %4, align 8
  %280 = bitcast i32* %279 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %280, %struct.TYPE_17__** %11, align 8
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (i32, i8*, ...) @ok(i32 1, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.20, i64 0, i64 0), i32 %284, i32 %288, i32 %291, i32 %294, i32 %297)
  %299 = load i32*, i32** %4, align 8
  %300 = call i32 @ExFreePool(i32* %299)
  br label %301

301:                                              ; preds = %278, %271
  br label %307

302:                                              ; preds = %206
  %303 = load i32*, i32** %4, align 8
  %304 = icmp eq i32* %303, null
  %305 = zext i1 %304 to i32
  %306 = call i32 (i32, i8*, ...) @ok(i32 %305, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  br label %307

307:                                              ; preds = %302, %301
  store i32* null, i32** %4, align 8
  %308 = load i32*, i32** %2, align 8
  %309 = load i32, i32* @TokenType, align 4
  %310 = call i64 @SeQueryInformationToken(i32* %308, i32 %309, i32** %4)
  store i64 %310, i64* %3, align 8
  %311 = load i64, i64* %3, align 8
  %312 = load i64, i64* @STATUS_SUCCESS, align 8
  %313 = icmp eq i64 %311, %312
  %314 = zext i1 %313 to i32
  %315 = load i64, i64* %3, align 8
  %316 = call i32 (i32, i8*, ...) @ok(i32 %314, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i64 %315)
  %317 = load i64, i64* %3, align 8
  %318 = load i64, i64* @STATUS_SUCCESS, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %346

320:                                              ; preds = %307
  %321 = load i32*, i32** %4, align 8
  %322 = icmp ne i32* %321, null
  %323 = zext i1 %322 to i32
  %324 = call i32 (i32, i8*, ...) @ok(i32 %323, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.22, i64 0, i64 0))
  %325 = load i32*, i32** %4, align 8
  %326 = icmp ne i32* %325, null
  br i1 %326, label %327, label %345

327:                                              ; preds = %320
  %328 = load i32*, i32** %4, align 8
  %329 = bitcast i32* %328 to i64*
  store i64* %329, i64** %12, align 8
  %330 = load i64*, i64** %12, align 8
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @TokenPrimary, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %339, label %334

334:                                              ; preds = %327
  %335 = load i64*, i64** %12, align 8
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @TokenImpersonation, align 8
  %338 = icmp eq i64 %336, %337
  br label %339

339:                                              ; preds = %334, %327
  %340 = phi i1 [ true, %327 ], [ %338, %334 ]
  %341 = zext i1 %340 to i32
  %342 = call i32 (i32, i8*, ...) @ok(i32 %341, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0))
  %343 = load i32*, i32** %4, align 8
  %344 = call i32 @ExFreePool(i32* %343)
  br label %345

345:                                              ; preds = %339, %320
  br label %346

346:                                              ; preds = %345, %307
  store i32* null, i32** %4, align 8
  %347 = load i32*, i32** %2, align 8
  %348 = load i32, i32* @TokenUser, align 4
  %349 = call i64 @SeQueryInformationToken(i32* %347, i32 %348, i32** %4)
  store i64 %349, i64* %3, align 8
  %350 = load i64, i64* %3, align 8
  %351 = load i64, i64* @STATUS_SUCCESS, align 8
  %352 = icmp eq i64 %350, %351
  %353 = zext i1 %352 to i32
  %354 = call i32 (i32, i8*, ...) @ok(i32 %353, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0))
  %355 = load i64, i64* %3, align 8
  %356 = load i64, i64* @STATUS_SUCCESS, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %377

358:                                              ; preds = %346
  %359 = load i32*, i32** %4, align 8
  %360 = icmp ne i32* %359, null
  %361 = zext i1 %360 to i32
  %362 = call i32 (i32, i8*, ...) @ok(i32 %361, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.25, i64 0, i64 0))
  %363 = load i32*, i32** %4, align 8
  %364 = icmp ne i32* %363, null
  br i1 %364, label %365, label %376

365:                                              ; preds = %358
  %366 = load i32*, i32** %4, align 8
  %367 = bitcast i32* %366 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %367, %struct.TYPE_16__** %13, align 8
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @RtlValidSid(i32 %371)
  %373 = call i32 (i32, i8*, ...) @ok(i32 %372, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0))
  %374 = load i32*, i32** %4, align 8
  %375 = call i32 @ExFreePool(i32* %374)
  br label %376

376:                                              ; preds = %365, %358
  br label %377

377:                                              ; preds = %376, %346
  store i32* null, i32** %4, align 8
  %378 = load i32*, i32** %2, align 8
  %379 = load i32, i32* @TokenSandBoxInert, align 4
  %380 = call i64 @SeQueryInformationToken(i32* %378, i32 %379, i32** %4)
  store i64 %380, i64* %3, align 8
  %381 = load i64, i64* %3, align 8
  %382 = load i64, i64* @STATUS_SUCCESS, align 8
  %383 = icmp ne i64 %381, %382
  %384 = zext i1 %383 to i32
  %385 = call i32 (i32, i8*, ...) @ok(i32 %384, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i64 0, i64 0))
  br label %386

386:                                              ; preds = %377, %22
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @SeQueryInformationToken(i32*, i32, i32**) #1

declare dso_local i32 @RtlValidSid(i32) #1

declare dso_local i32 @ExFreePool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
