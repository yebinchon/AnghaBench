; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_nonroot_transacted.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_nonroot_transacted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_nonroot_transacted.stgname = internal constant [8 x i8] c"PERMSTG\00", align 1
@test_nonroot_transacted.stmname = internal constant [9 x i8] c"CONTENTS\00", align 1
@test_nonroot_transacted.stmname2 = internal constant [4 x i8] c"FOO\00", align 1
@filenameA = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"StgCreateDocfile failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"IStorage->CreateStorage failed, hr=%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"IStorage->CreateStream failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"IStorage->OpenStream should succeed %08x\0A\00", align 1
@STG_E_FILENOTFOUND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"IStorage->OpenStream should fail %08x\0A\00", align 1
@STGM_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"IStorage->OpenStorage failed, hr=%08x\0A\00", align 1
@STG_E_ACCESSDENIED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"IStorage->Commit should fail, hr=%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"deleted file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_nonroot_transacted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_nonroot_transacted() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32, i32* @filenameA, align 4
  %8 = call i32 @DeleteFileA(i32 %7)
  %9 = load i32, i32* @filename, align 4
  %10 = load i32, i32* @STGM_CREATE, align 4
  %11 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @STGM_READWRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @STGM_TRANSACTED, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @StgCreateDocfile(i32 %9, i32 %16, i32 0, i32** %1)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @STGM_READWRITE, align 4
  %25 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @STGM_TRANSACTED, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @IStorage_CreateStorage(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_nonroot_transacted.stgname, i64 0, i64 0), i32 %28, i32 0, i32 0, i32** %2)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %4, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %116

39:                                               ; preds = %0
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %42 = load i32, i32* @STGM_READWRITE, align 4
  %43 = or i32 %41, %42
  %44 = call i64 @IStorage_CreateStream(i32* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_nonroot_transacted.stmname, i64 0, i64 0), i32 %43, i32 0, i32 0, i32** %5)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @IStream_Release(i32* %54)
  br label %56

56:                                               ; preds = %53, %39
  %57 = load i32*, i32** %2, align 8
  %58 = call i64 @IStorage_Commit(i32* %57, i32 0)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %61 = load i32, i32* @STGM_READWRITE, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @IStorage_CreateStream(i32* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_nonroot_transacted.stmname2, i64 0, i64 0), i32 %62, i32 0, i32 0, i32** %5)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %56
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @IStream_Release(i32* %73)
  br label %75

75:                                               ; preds = %72, %56
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @IStorage_Revert(i32* %76)
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %80 = load i32, i32* @STGM_READWRITE, align 4
  %81 = or i32 %79, %80
  %82 = call i64 @IStorage_OpenStream(i32* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_nonroot_transacted.stmname, i64 0, i64 0), i32* null, i32 %81, i32 0, i32** %5)
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @S_OK, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %4, align 8
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %87)
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @S_OK, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %75
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @IStream_Release(i32* %93)
  br label %95

95:                                               ; preds = %92, %75
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %98 = load i32, i32* @STGM_READWRITE, align 4
  %99 = or i32 %97, %98
  %100 = call i64 @IStorage_OpenStream(i32* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_nonroot_transacted.stmname2, i64 0, i64 0), i32* null, i32 %99, i32 0, i32** %5)
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %4, align 8
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %105)
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @IStream_Release(i32* %111)
  br label %113

113:                                              ; preds = %110, %95
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @IStorage_Release(i32* %114)
  br label %116

116:                                              ; preds = %113, %0
  %117 = load i32*, i32** %1, align 8
  %118 = load i32, i32* @STGM_READ, align 4
  %119 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @STGM_TRANSACTED, align 4
  %122 = or i32 %120, %121
  %123 = call i64 @IStorage_OpenStorage(i32* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_nonroot_transacted.stgname, i64 0, i64 0), i32* null, i32 %122, i32* null, i32 0, i32** %2)
  store i64 %123, i64* %4, align 8
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* @S_OK, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %4, align 8
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %128)
  %130 = load i64, i64* %4, align 8
  %131 = load i64, i64* @S_OK, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %162

133:                                              ; preds = %116
  %134 = load i32*, i32** %2, align 8
  %135 = load i32, i32* @STGM_READWRITE, align 4
  %136 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %137 = or i32 %135, %136
  %138 = call i64 @IStorage_CreateStorage(i32* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_nonroot_transacted.stgname, i64 0, i64 0), i32 %137, i32 0, i32 0, i32** %3)
  store i64 %138, i64* %4, align 8
  %139 = load i64, i64* %4, align 8
  %140 = load i64, i64* @S_OK, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i64, i64* %4, align 8
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %143)
  %145 = load i64, i64* %4, align 8
  %146 = load i64, i64* @S_OK, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %133
  %149 = load i32*, i32** %3, align 8
  %150 = call i32 @IStorage_Release(i32* %149)
  br label %151

151:                                              ; preds = %148, %133
  %152 = load i32*, i32** %2, align 8
  %153 = call i64 @IStorage_Commit(i32* %152, i32 0)
  store i64 %153, i64* %4, align 8
  %154 = load i64, i64* %4, align 8
  %155 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %156 = icmp eq i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load i64, i64* %4, align 8
  %159 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %158)
  %160 = load i32*, i32** %2, align 8
  %161 = call i32 @IStorage_Release(i32* %160)
  br label %162

162:                                              ; preds = %151, %116
  %163 = load i32*, i32** %1, align 8
  %164 = call i32 @IStorage_Release(i32* %163)
  %165 = load i32, i32* @filename, align 4
  %166 = load i32, i32* @STGM_CREATE, align 4
  %167 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @STGM_READWRITE, align 4
  %170 = or i32 %168, %169
  %171 = call i64 @StgCreateDocfile(i32 %165, i32 %170, i32 0, i32** %1)
  store i64 %171, i64* %4, align 8
  %172 = load i64, i64* %4, align 8
  %173 = load i64, i64* @S_OK, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %177 = load i32*, i32** %1, align 8
  %178 = load i32, i32* @STGM_READWRITE, align 4
  %179 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @STGM_TRANSACTED, align 4
  %182 = or i32 %180, %181
  %183 = call i64 @IStorage_CreateStorage(i32* %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_nonroot_transacted.stgname, i64 0, i64 0), i32 %182, i32 0, i32 0, i32** %2)
  store i64 %183, i64* %4, align 8
  %184 = load i64, i64* %4, align 8
  %185 = load i64, i64* @S_OK, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i64, i64* %4, align 8
  %189 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %188)
  %190 = load i64, i64* %4, align 8
  %191 = load i64, i64* @S_OK, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %270

193:                                              ; preds = %162
  %194 = load i32*, i32** %2, align 8
  %195 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %196 = load i32, i32* @STGM_READWRITE, align 4
  %197 = or i32 %195, %196
  %198 = call i64 @IStorage_CreateStream(i32* %194, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_nonroot_transacted.stmname, i64 0, i64 0), i32 %197, i32 0, i32 0, i32** %5)
  store i64 %198, i64* %4, align 8
  %199 = load i64, i64* %4, align 8
  %200 = load i64, i64* @S_OK, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %204 = load i64, i64* %4, align 8
  %205 = load i64, i64* @S_OK, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %193
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @IStream_Release(i32* %208)
  br label %210

210:                                              ; preds = %207, %193
  %211 = load i32*, i32** %2, align 8
  %212 = call i64 @IStorage_Commit(i32* %211, i32 0)
  %213 = load i32*, i32** %2, align 8
  %214 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %215 = load i32, i32* @STGM_READWRITE, align 4
  %216 = or i32 %214, %215
  %217 = call i64 @IStorage_CreateStream(i32* %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_nonroot_transacted.stmname2, i64 0, i64 0), i32 %216, i32 0, i32 0, i32** %5)
  store i64 %217, i64* %4, align 8
  %218 = load i64, i64* %4, align 8
  %219 = load i64, i64* @S_OK, align 8
  %220 = icmp eq i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %223 = load i64, i64* %4, align 8
  %224 = load i64, i64* @S_OK, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %210
  %227 = load i32*, i32** %5, align 8
  %228 = call i32 @IStream_Release(i32* %227)
  br label %229

229:                                              ; preds = %226, %210
  %230 = load i32*, i32** %2, align 8
  %231 = call i32 @IStorage_Revert(i32* %230)
  %232 = load i32*, i32** %2, align 8
  %233 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %234 = load i32, i32* @STGM_READWRITE, align 4
  %235 = or i32 %233, %234
  %236 = call i64 @IStorage_OpenStream(i32* %232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_nonroot_transacted.stmname, i64 0, i64 0), i32* null, i32 %235, i32 0, i32** %5)
  store i64 %236, i64* %4, align 8
  %237 = load i64, i64* %4, align 8
  %238 = load i64, i64* @S_OK, align 8
  %239 = icmp eq i64 %237, %238
  %240 = zext i1 %239 to i32
  %241 = load i64, i64* %4, align 8
  %242 = call i32 (i32, i8*, ...) @ok(i32 %240, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %241)
  %243 = load i64, i64* %4, align 8
  %244 = load i64, i64* @S_OK, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %229
  %247 = load i32*, i32** %5, align 8
  %248 = call i32 @IStream_Release(i32* %247)
  br label %249

249:                                              ; preds = %246, %229
  %250 = load i32*, i32** %2, align 8
  %251 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %252 = load i32, i32* @STGM_READWRITE, align 4
  %253 = or i32 %251, %252
  %254 = call i64 @IStorage_OpenStream(i32* %250, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_nonroot_transacted.stmname2, i64 0, i64 0), i32* null, i32 %253, i32 0, i32** %5)
  store i64 %254, i64* %4, align 8
  %255 = load i64, i64* %4, align 8
  %256 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %257 = icmp eq i64 %255, %256
  %258 = zext i1 %257 to i32
  %259 = load i64, i64* %4, align 8
  %260 = call i32 (i32, i8*, ...) @ok(i32 %258, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %259)
  %261 = load i64, i64* %4, align 8
  %262 = load i64, i64* @S_OK, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %249
  %265 = load i32*, i32** %5, align 8
  %266 = call i32 @IStream_Release(i32* %265)
  br label %267

267:                                              ; preds = %264, %249
  %268 = load i32*, i32** %2, align 8
  %269 = call i32 @IStorage_Release(i32* %268)
  br label %270

270:                                              ; preds = %267, %162
  %271 = load i32*, i32** %1, align 8
  %272 = call i32 @IStorage_Release(i32* %271)
  %273 = load i32, i32* @filenameA, align 4
  %274 = call i32 @DeleteFileA(i32 %273)
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* %6, align 4
  %276 = call i32 (i32, i8*, ...) @ok(i32 %275, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i64 @StgCreateDocfile(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IStorage_CreateStorage(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i64 @IStorage_CreateStream(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i64 @IStorage_Commit(i32*, i32) #1

declare dso_local i32 @IStorage_Revert(i32*) #1

declare dso_local i64 @IStorage_OpenStream(i32*, i8*, i32*, i32, i32, i32**) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i64 @IStorage_OpenStorage(i32*, i8*, i32*, i32, i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
