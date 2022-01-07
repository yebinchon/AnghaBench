; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/samsrv/extr_setup.c_SampSetupCreateUserAccount.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/samsrv/extr_setup.c_SampSetupCreateUserAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i8*, i8*, i64, i64, i64, i64, i64, i64, i8*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_14__ = type { i32, i8* }

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@MAXLONGLONG = common dso_local global i32 0, align 4
@DOMAIN_GROUP_RID_USERS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i32] [i32 85, i32 115, i32 101, i32 114, i32 115, i32 92, i32 37, i32 48, i32 56, i32 108, i32 88, i32 0], align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 70, i32 0], align 4
@REG_BINARY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i32] [i32 70, i32 117, i32 108, i32 108, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [14 x i32] [i32 72, i32 111, i32 109, i32 101, i32 68, i32 105, i32 114, i32 101, i32 99, i32 116, i32 111, i32 114, i32 121, i32 0], align 4
@.str.6 = private unnamed_addr constant [19 x i32] [i32 72, i32 111, i32 109, i32 101, i32 68, i32 105, i32 114, i32 101, i32 99, i32 116, i32 111, i32 114, i32 121, i32 68, i32 114, i32 105, i32 118, i32 101, i32 0], align 4
@.str.7 = private unnamed_addr constant [11 x i32] [i32 83, i32 99, i32 114, i32 105, i32 112, i32 116, i32 80, i32 97, i32 116, i32 104, i32 0], align 4
@.str.8 = private unnamed_addr constant [12 x i32] [i32 80, i32 114, i32 111, i32 102, i32 105, i32 108, i32 101, i32 80, i32 97, i32 116, i32 104, i32 0], align 4
@.str.9 = private unnamed_addr constant [13 x i32] [i32 65, i32 100, i32 109, i32 105, i32 110, i32 67, i32 111, i32 109, i32 109, i32 101, i32 110, i32 116, i32 0], align 4
@.str.10 = private unnamed_addr constant [12 x i32] [i32 85, i32 115, i32 101, i32 114, i32 67, i32 111, i32 109, i32 109, i32 101, i32 110, i32 116, i32 0], align 4
@.str.11 = private unnamed_addr constant [13 x i32] [i32 87, i32 111, i32 114, i32 107, i32 83, i32 116, i32 97, i32 116, i32 105, i32 111, i32 110, i32 115, i32 0], align 4
@.str.12 = private unnamed_addr constant [11 x i32] [i32 80, i32 97, i32 114, i32 97, i32 109, i32 101, i32 116, i32 101, i32 114, i32 115, i32 0], align 4
@.str.13 = private unnamed_addr constant [11 x i32] [i32 76, i32 111, i32 103, i32 111, i32 110, i32 72, i32 111, i32 117, i32 114, i32 115, i32 0], align 4
@SE_GROUP_MANDATORY = common dso_local global i32 0, align 4
@SE_GROUP_ENABLED = common dso_local global i32 0, align 4
@SE_GROUP_ENABLED_BY_DEFAULT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i32] [i32 71, i32 114, i32 111, i32 117, i32 112, i32 115, i32 0], align 4
@.str.15 = private unnamed_addr constant [6 x i32] [i32 76, i32 77, i32 80, i32 119, i32 100, i32 0], align 4
@EmptyLmHash = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i32] [i32 78, i32 84, i32 80, i32 119, i32 100, i32 0], align 4
@EmptyNtHash = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i32] [i32 76, i32 77, i32 80, i32 119, i32 100, i32 72, i32 105, i32 115, i32 116, i32 111, i32 114, i32 121, i32 0], align 4
@.str.18 = private unnamed_addr constant [13 x i32] [i32 78, i32 84, i32 80, i32 119, i32 100, i32 72, i32 105, i32 115, i32 116, i32 111, i32 114, i32 121, i32 0], align 4
@.str.19 = private unnamed_addr constant [12 x i32] [i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 68, i32 97, i32 116, i32 97, i32 0], align 4
@.str.20 = private unnamed_addr constant [8 x i32] [i32 83, i32 101, i32 99, i32 68, i32 101, i32 115, i32 99, i32 0], align 4
@.str.21 = private unnamed_addr constant [12 x i32] [i32 85, i32 115, i32 101, i32 114, i32 115, i32 92, i32 78, i32 97, i32 109, i32 101, i32 115, i32 0], align 4
@REG_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32*, i8*, i8*)* @SampSetupCreateUserAccount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SampSetupCreateUserAccount(i32* %0, i8* %1, i8* %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca %struct.TYPE_14__, align 8
  %16 = alloca [23 x i32], align 16
  %17 = alloca i8*, align 8
  %18 = alloca [32 x i32], align 16
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* bitcast ([1 x i32]* @.str to i8*), i8** %17, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i8* null, i8** %22, align 8
  store i32* null, i32** %23, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call i32* @AppendRidToSid(i32* %25, i8* %26)
  store i32* %27, i32** %23, align 8
  %28 = load i32*, i32** %23, align 8
  %29 = call i32 @SampCreateUserSD(i32* %28, i32** %21, i8** %22)
  store i32 %29, i32* %24, align 4
  %30 = load i32, i32* %24, align 4
  %31 = call i32 @NT_SUCCESS(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %6
  br label %286

34:                                               ; preds = %6
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 15
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 14
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 13
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 12
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @MAXLONGLONG, align 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 11
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 10
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** @DOMAIN_GROUP_RID_USERS, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 9
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 6
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @swprintf(i32* %60, i8* bitcast ([12 x i32]* @.str.1 to i8*), i8* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  %65 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %66 = call i32 @SampRegCreateKey(i32* %63, i32* %64, i32 %65, i32** %19)
  store i32 %66, i32* %24, align 4
  %67 = load i32, i32* %24, align 4
  %68 = call i32 @NT_SUCCESS(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %34
  %71 = load i32, i32* %24, align 4
  store i32 %71, i32* %7, align 4
  br label %316

72:                                               ; preds = %34
  %73 = load i32*, i32** %19, align 8
  %74 = load i32, i32* @REG_BINARY, align 4
  %75 = bitcast %struct.TYPE_13__* %14 to i32*
  %76 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %73, i8* bitcast ([2 x i32]* @.str.2 to i8*), i32 %74, i32* %75, i64 128)
  store i32 %76, i32* %24, align 4
  %77 = load i32, i32* %24, align 4
  %78 = call i32 @NT_SUCCESS(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %286

81:                                               ; preds = %72
  %82 = load i32*, i32** %19, align 8
  %83 = load i32, i32* @REG_SZ, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @wcslen(i8* %86)
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %82, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 %83, i32* %85, i64 %90)
  store i32 %91, i32* %24, align 4
  %92 = load i32, i32* %24, align 4
  %93 = call i32 @NT_SUCCESS(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %81
  br label %286

96:                                               ; preds = %81
  %97 = load i32*, i32** %19, align 8
  %98 = load i32, i32* @REG_SZ, align 4
  %99 = load i8*, i8** %17, align 8
  %100 = bitcast i8* %99 to i32*
  %101 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %97, i8* bitcast ([9 x i32]* @.str.4 to i8*), i32 %98, i32* %100, i64 4)
  store i32 %101, i32* %24, align 4
  %102 = load i32, i32* %24, align 4
  %103 = call i32 @NT_SUCCESS(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  br label %286

106:                                              ; preds = %96
  %107 = load i32*, i32** %19, align 8
  %108 = load i32, i32* @REG_SZ, align 4
  %109 = load i8*, i8** %17, align 8
  %110 = bitcast i8* %109 to i32*
  %111 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %107, i8* bitcast ([14 x i32]* @.str.5 to i8*), i32 %108, i32* %110, i64 4)
  store i32 %111, i32* %24, align 4
  %112 = load i32, i32* %24, align 4
  %113 = call i32 @NT_SUCCESS(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %106
  br label %286

116:                                              ; preds = %106
  %117 = load i32*, i32** %19, align 8
  %118 = load i32, i32* @REG_SZ, align 4
  %119 = load i8*, i8** %17, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %117, i8* bitcast ([19 x i32]* @.str.6 to i8*), i32 %118, i32* %120, i64 4)
  store i32 %121, i32* %24, align 4
  %122 = load i32, i32* %24, align 4
  %123 = call i32 @NT_SUCCESS(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %116
  br label %286

126:                                              ; preds = %116
  %127 = load i32*, i32** %19, align 8
  %128 = load i32, i32* @REG_SZ, align 4
  %129 = load i8*, i8** %17, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %127, i8* bitcast ([11 x i32]* @.str.7 to i8*), i32 %128, i32* %130, i64 4)
  store i32 %131, i32* %24, align 4
  %132 = load i32, i32* %24, align 4
  %133 = call i32 @NT_SUCCESS(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %126
  br label %286

136:                                              ; preds = %126
  %137 = load i32*, i32** %19, align 8
  %138 = load i32, i32* @REG_SZ, align 4
  %139 = load i8*, i8** %17, align 8
  %140 = bitcast i8* %139 to i32*
  %141 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %137, i8* bitcast ([12 x i32]* @.str.8 to i8*), i32 %138, i32* %140, i64 4)
  store i32 %141, i32* %24, align 4
  %142 = load i32, i32* %24, align 4
  %143 = call i32 @NT_SUCCESS(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %136
  br label %286

146:                                              ; preds = %136
  %147 = load i32*, i32** %19, align 8
  %148 = load i32, i32* @REG_SZ, align 4
  %149 = load i8*, i8** %10, align 8
  %150 = bitcast i8* %149 to i32*
  %151 = load i8*, i8** %10, align 8
  %152 = call i32 @wcslen(i8* %151)
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %147, i8* bitcast ([13 x i32]* @.str.9 to i8*), i32 %148, i32* %150, i64 %155)
  store i32 %156, i32* %24, align 4
  %157 = load i32, i32* %24, align 4
  %158 = call i32 @NT_SUCCESS(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %146
  br label %286

161:                                              ; preds = %146
  %162 = load i32*, i32** %19, align 8
  %163 = load i32, i32* @REG_SZ, align 4
  %164 = load i8*, i8** %17, align 8
  %165 = bitcast i8* %164 to i32*
  %166 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %162, i8* bitcast ([12 x i32]* @.str.10 to i8*), i32 %163, i32* %165, i64 4)
  store i32 %166, i32* %24, align 4
  %167 = load i32, i32* %24, align 4
  %168 = call i32 @NT_SUCCESS(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %161
  br label %286

171:                                              ; preds = %161
  %172 = load i32*, i32** %19, align 8
  %173 = load i32, i32* @REG_SZ, align 4
  %174 = load i8*, i8** %17, align 8
  %175 = bitcast i8* %174 to i32*
  %176 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %172, i8* bitcast ([13 x i32]* @.str.11 to i8*), i32 %173, i32* %175, i64 4)
  store i32 %176, i32* %24, align 4
  %177 = load i32, i32* %24, align 4
  %178 = call i32 @NT_SUCCESS(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %171
  br label %286

181:                                              ; preds = %171
  %182 = load i32*, i32** %19, align 8
  %183 = load i32, i32* @REG_SZ, align 4
  %184 = load i8*, i8** %17, align 8
  %185 = bitcast i8* %184 to i32*
  %186 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %182, i8* bitcast ([11 x i32]* @.str.12 to i8*), i32 %183, i32* %185, i64 4)
  store i32 %186, i32* %24, align 4
  %187 = load i32, i32* %24, align 4
  %188 = call i32 @NT_SUCCESS(i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %181
  br label %286

191:                                              ; preds = %181
  %192 = getelementptr inbounds [23 x i32], [23 x i32]* %16, i64 0, i64 0
  store i32 168, i32* %192, align 16
  %193 = getelementptr inbounds [23 x i32], [23 x i32]* %16, i64 0, i64 2
  %194 = call i32 @memset(i32* %193, i32 255, i32 21)
  %195 = load i32*, i32** %19, align 8
  %196 = load i32, i32* @REG_BINARY, align 4
  %197 = getelementptr inbounds [23 x i32], [23 x i32]* %16, i64 0, i64 0
  %198 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %195, i8* bitcast ([11 x i32]* @.str.13 to i8*), i32 %196, i32* %197, i64 92)
  store i32 %198, i32* %24, align 4
  %199 = load i32, i32* %24, align 4
  %200 = call i32 @NT_SUCCESS(i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %191
  br label %286

203:                                              ; preds = %191
  %204 = load i8*, i8** @DOMAIN_GROUP_RID_USERS, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  store i8* %204, i8** %205, align 8
  %206 = load i32, i32* @SE_GROUP_MANDATORY, align 4
  %207 = load i32, i32* @SE_GROUP_ENABLED, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @SE_GROUP_ENABLED_BY_DEFAULT, align 4
  %210 = or i32 %208, %209
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store i32 %210, i32* %211, align 8
  %212 = load i32*, i32** %19, align 8
  %213 = load i32, i32* @REG_BINARY, align 4
  %214 = bitcast %struct.TYPE_14__* %15 to i32*
  %215 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %212, i8* bitcast ([7 x i32]* @.str.14 to i8*), i32 %213, i32* %214, i64 16)
  store i32 %215, i32* %24, align 4
  %216 = load i32, i32* %24, align 4
  %217 = call i32 @NT_SUCCESS(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %203
  br label %286

220:                                              ; preds = %203
  %221 = load i32*, i32** %19, align 8
  %222 = load i32, i32* @REG_BINARY, align 4
  %223 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %221, i8* bitcast ([6 x i32]* @.str.15 to i8*), i32 %222, i32* @EmptyLmHash, i64 4)
  store i32 %223, i32* %24, align 4
  %224 = load i32, i32* %24, align 4
  %225 = call i32 @NT_SUCCESS(i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %220
  br label %286

228:                                              ; preds = %220
  %229 = load i32*, i32** %19, align 8
  %230 = load i32, i32* @REG_BINARY, align 4
  %231 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %229, i8* bitcast ([6 x i32]* @.str.16 to i8*), i32 %230, i32* @EmptyNtHash, i64 4)
  store i32 %231, i32* %24, align 4
  %232 = load i32, i32* %24, align 4
  %233 = call i32 @NT_SUCCESS(i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %228
  br label %286

236:                                              ; preds = %228
  %237 = load i32*, i32** %19, align 8
  %238 = load i32, i32* @REG_BINARY, align 4
  %239 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %237, i8* bitcast ([13 x i32]* @.str.17 to i8*), i32 %238, i32* null, i32 0)
  store i32 %239, i32* %24, align 4
  %240 = load i32, i32* %24, align 4
  %241 = call i32 @NT_SUCCESS(i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %236
  br label %286

244:                                              ; preds = %236
  %245 = load i32*, i32** %19, align 8
  %246 = load i32, i32* @REG_BINARY, align 4
  %247 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %245, i8* bitcast ([13 x i32]* @.str.18 to i8*), i32 %246, i32* null, i32 0)
  store i32 %247, i32* %24, align 4
  %248 = load i32, i32* %24, align 4
  %249 = call i32 @NT_SUCCESS(i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %244
  br label %286

252:                                              ; preds = %244
  %253 = load i32*, i32** %19, align 8
  %254 = load i32, i32* @REG_SZ, align 4
  %255 = load i8*, i8** %17, align 8
  %256 = bitcast i8* %255 to i32*
  %257 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %253, i8* bitcast ([12 x i32]* @.str.19 to i8*), i32 %254, i32* %256, i64 4)
  store i32 %257, i32* %24, align 4
  %258 = load i32, i32* %24, align 4
  %259 = call i32 @NT_SUCCESS(i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %252
  br label %286

262:                                              ; preds = %252
  %263 = load i32*, i32** %19, align 8
  %264 = load i32, i32* @REG_BINARY, align 4
  %265 = load i32*, i32** %21, align 8
  %266 = load i8*, i8** %22, align 8
  %267 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %263, i8* bitcast ([8 x i32]* @.str.20 to i8*), i32 %264, i32* %265, i8* %266)
  store i32 %267, i32* %24, align 4
  %268 = load i32, i32* %24, align 4
  %269 = call i32 @NT_SUCCESS(i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %262
  br label %286

272:                                              ; preds = %262
  %273 = load i32*, i32** %8, align 8
  %274 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %275 = call i32 @SampRegOpenKey(i32* %273, i8* bitcast ([12 x i32]* @.str.21 to i8*), i32 %274, i32** %20)
  store i32 %275, i32* %24, align 4
  %276 = load i32, i32* %24, align 4
  %277 = call i32 @NT_SUCCESS(i32 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %272
  br label %286

280:                                              ; preds = %272
  %281 = load i32*, i32** %20, align 8
  %282 = load i8*, i8** %9, align 8
  %283 = load i32, i32* @REG_DWORD, align 4
  %284 = bitcast i8** %12 to i32*
  %285 = call i32 (i32*, i8*, i32, i32*, ...) @SampRegSetValue(i32* %281, i8* %282, i32 %283, i32* %284, i64 8)
  store i32 %285, i32* %24, align 4
  br label %286

286:                                              ; preds = %280, %279, %271, %261, %251, %243, %235, %227, %219, %202, %190, %180, %170, %160, %145, %135, %125, %115, %105, %95, %80, %33
  %287 = call i32 @SampRegCloseKey(i32** %20)
  %288 = load i32*, i32** %21, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %294

290:                                              ; preds = %286
  %291 = call i32 (...) @RtlGetProcessHeap()
  %292 = load i32*, i32** %21, align 8
  %293 = call i32 @RtlFreeHeap(i32 %291, i32 0, i32* %292)
  br label %294

294:                                              ; preds = %290, %286
  %295 = load i32*, i32** %23, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %294
  %298 = call i32 (...) @RtlGetProcessHeap()
  %299 = load i32*, i32** %23, align 8
  %300 = call i32 @RtlFreeHeap(i32 %298, i32 0, i32* %299)
  br label %301

301:                                              ; preds = %297, %294
  %302 = load i32*, i32** %19, align 8
  %303 = icmp ne i32* %302, null
  br i1 %303, label %304, label %314

304:                                              ; preds = %301
  %305 = call i32 @SampRegCloseKey(i32** %19)
  %306 = load i32, i32* %24, align 4
  %307 = call i32 @NT_SUCCESS(i32 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %313, label %309

309:                                              ; preds = %304
  %310 = load i32*, i32** %8, align 8
  %311 = getelementptr inbounds [32 x i32], [32 x i32]* %18, i64 0, i64 0
  %312 = call i32 @SampRegDeleteKey(i32* %310, i32* %311)
  br label %313

313:                                              ; preds = %309, %304
  br label %314

314:                                              ; preds = %313, %301
  %315 = load i32, i32* %24, align 4
  store i32 %315, i32* %7, align 4
  br label %316

316:                                              ; preds = %314, %70
  %317 = load i32, i32* %7, align 4
  ret i32 %317
}

declare dso_local i32* @AppendRidToSid(i32*, i8*) #1

declare dso_local i32 @SampCreateUserSD(i32*, i32**, i8**) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @swprintf(i32*, i8*, i8*) #1

declare dso_local i32 @SampRegCreateKey(i32*, i32*, i32, i32**) #1

declare dso_local i32 @SampRegSetValue(i32*, i8*, i32, i32*, ...) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @SampRegOpenKey(i32*, i8*, i32, i32**) #1

declare dso_local i32 @SampRegCloseKey(i32**) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i32*) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @SampRegDeleteKey(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
