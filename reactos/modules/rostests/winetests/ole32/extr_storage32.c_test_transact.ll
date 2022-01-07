; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_transact.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_transact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_transact.stmname = internal constant [9 x i8] c"CONTENTS\00", align 1
@test_transact.stmname2 = internal constant [4 x i8] c"FOO\00", align 1
@test_transact.stgname = internal constant [8 x i8] c"PERMSTG\00", align 1
@test_transact.stgname2 = internal constant [8 x i8] c"TEMPSTG\00", align 1
@filenameA = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"StgCreateDocfile failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"IStorage->CreateStream failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"this is stream 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"IStream->Write failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"IStorage->CreateStorage failed, hr=%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"IStorage->Commit failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"this is stream 2\0A\00", align 1
@STGC_ONLYIFCURRENT = common dso_local global i32 0, align 4
@STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"IStream->Commit failed\0A\00", align 1
@STGM_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"StgOpenStorage failed\0A\00", align 1
@STG_E_INVALIDFLAG = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"IStorage->OpenStream failed %08x\0A\00", align 1
@STGM_DELETEONRELEASE = common dso_local global i32 0, align 4
@STG_E_INVALIDFUNCTION = common dso_local global i64 0, align 8
@STG_E_FILENOTFOUND = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"IStorage->OpenStream should fail %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"IStorage->OpenStorage should fail %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"IStorage->OpenStream should succeed %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"IStorage->OpenStorage should succeed %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"deleted file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_transact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_transact() #0 {
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
  %24 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %25 = load i32, i32* @STGM_READWRITE, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @IStorage_CreateStream(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_transact.stmname2, i64 0, i64 0), i32 %26, i32 0, i32 0, i32** %5)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @IStream_Write(i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 16, i32* null)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @IStream_Release(i32* %40)
  %42 = load i32*, i32** %1, align 8
  %43 = load i32, i32* @STGM_READWRITE, align 4
  %44 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %45 = or i32 %43, %44
  %46 = call i64 @IStorage_CreateStorage(i32* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_transact.stgname, i64 0, i64 0), i32 %45, i32 0, i32 0, i32** %2)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %4, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %51)
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %102

56:                                               ; preds = %0
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @STGM_READWRITE, align 4
  %59 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %60 = or i32 %58, %59
  %61 = call i64 @IStorage_CreateStorage(i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_transact.stgname, i64 0, i64 0), i32 %60, i32 0, i32 0, i32** %3)
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %4, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @S_OK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @IStorage_Release(i32* %72)
  br label %74

74:                                               ; preds = %71, %56
  %75 = load i32*, i32** %1, align 8
  %76 = call i64 @IStorage_Commit(i32* %75, i32 0)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @S_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32*, i32** %2, align 8
  %83 = load i32, i32* @STGM_READWRITE, align 4
  %84 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %85 = or i32 %83, %84
  %86 = call i64 @IStorage_CreateStorage(i32* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_transact.stgname2, i64 0, i64 0), i32 %85, i32 0, i32 0, i32** %3)
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %4, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %91)
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @S_OK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %74
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @IStorage_Release(i32* %97)
  br label %99

99:                                               ; preds = %96, %74
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @IStorage_Release(i32* %100)
  br label %102

102:                                              ; preds = %99, %0
  store i32* null, i32** %5, align 8
  %103 = load i32*, i32** %1, align 8
  %104 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %105 = load i32, i32* @STGM_READWRITE, align 4
  %106 = or i32 %104, %105
  %107 = call i64 @IStorage_CreateStream(i32* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_transact.stmname, i64 0, i64 0), i32 %106, i32 0, i32 0, i32** %5)
  store i64 %107, i64* %4, align 8
  %108 = load i64, i64* %4, align 8
  %109 = load i64, i64* @S_OK, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32*, i32** %5, align 8
  %114 = call i64 @IStream_Write(i32* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 16, i32* null)
  store i64 %114, i64* %4, align 8
  %115 = load i64, i64* %4, align 8
  %116 = load i64, i64* @S_OK, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* @STGC_ONLYIFCURRENT, align 4
  %122 = load i32, i32* @STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE, align 4
  %123 = or i32 %121, %122
  %124 = call i64 @IStream_Commit(i32* %120, i32 %123)
  store i64 %124, i64* %4, align 8
  %125 = load i64, i64* %4, align 8
  %126 = load i64, i64* @S_OK, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i32*, i32** %1, align 8
  %131 = load i32, i32* @STGM_READWRITE, align 4
  %132 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %133 = or i32 %131, %132
  %134 = call i64 @IStorage_CreateStorage(i32* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_transact.stgname2, i64 0, i64 0), i32 %133, i32 0, i32 0, i32** %2)
  store i64 %134, i64* %4, align 8
  %135 = load i64, i64* %4, align 8
  %136 = load i64, i64* @S_OK, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i64, i64* %4, align 8
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %139)
  %141 = load i64, i64* %4, align 8
  %142 = load i64, i64* @S_OK, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %102
  %145 = load i32*, i32** %2, align 8
  %146 = call i32 @IStorage_Release(i32* %145)
  br label %147

147:                                              ; preds = %144, %102
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @IStream_Release(i32* %148)
  %150 = load i32*, i32** %1, align 8
  %151 = call i32 @IStorage_Release(i32* %150)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %1, align 8
  %152 = load i32, i32* @filename, align 4
  %153 = load i32, i32* @STGM_SHARE_DENY_NONE, align 4
  %154 = load i32, i32* @STGM_READ, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @STGM_TRANSACTED, align 4
  %157 = or i32 %155, %156
  %158 = call i64 @StgOpenStorage(i32 %152, i32* null, i32 %157, i32* null, i32 0, i32** %1)
  store i64 %158, i64* %4, align 8
  %159 = load i64, i64* %4, align 8
  %160 = load i64, i64* @S_OK, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %164 = load i32*, i32** %1, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %147
  br label %345

167:                                              ; preds = %147
  %168 = load i32*, i32** %1, align 8
  %169 = load i32, i32* @STGM_SHARE_DENY_NONE, align 4
  %170 = load i32, i32* @STGM_READ, align 4
  %171 = or i32 %169, %170
  %172 = call i64 @IStorage_OpenStream(i32* %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_transact.stmname, i64 0, i64 0), i32* null, i32 %171, i32 0, i32** %5)
  store i64 %172, i64* %4, align 8
  %173 = load i64, i64* %4, align 8
  %174 = load i64, i64* @STG_E_INVALIDFLAG, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = load i64, i64* %4, align 8
  %178 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %177)
  %179 = load i32*, i32** %1, align 8
  %180 = load i32, i32* @STGM_DELETEONRELEASE, align 4
  %181 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @STGM_READWRITE, align 4
  %184 = or i32 %182, %183
  %185 = call i64 @IStorage_OpenStream(i32* %179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_transact.stmname, i64 0, i64 0), i32* null, i32 %184, i32 0, i32** %5)
  store i64 %185, i64* %4, align 8
  %186 = load i64, i64* %4, align 8
  %187 = load i64, i64* @STG_E_INVALIDFUNCTION, align 8
  %188 = icmp eq i64 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i64, i64* %4, align 8
  %191 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %190)
  %192 = load i32*, i32** %1, align 8
  %193 = load i32, i32* @STGM_TRANSACTED, align 4
  %194 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @STGM_READWRITE, align 4
  %197 = or i32 %195, %196
  %198 = call i64 @IStorage_OpenStream(i32* %192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_transact.stmname, i64 0, i64 0), i32* null, i32 %197, i32 0, i32** %5)
  store i64 %198, i64* %4, align 8
  %199 = load i64, i64* %4, align 8
  %200 = load i64, i64* @STG_E_INVALIDFUNCTION, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = load i64, i64* %4, align 8
  %204 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %203)
  %205 = load i32*, i32** %1, align 8
  %206 = load i32, i32* @STGM_TRANSACTED, align 4
  %207 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @STGM_READWRITE, align 4
  %210 = or i32 %208, %209
  %211 = call i64 @IStorage_OpenStorage(i32* %205, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_transact.stmname, i64 0, i64 0), i32* null, i32 %210, i32* null, i32 0, i32** %2)
  store i64 %211, i64* %4, align 8
  %212 = load i64, i64* %4, align 8
  %213 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i64, i64* %4, align 8
  %217 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %216)
  %218 = load i32*, i32** %1, align 8
  %219 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %220 = load i32, i32* @STGM_READWRITE, align 4
  %221 = or i32 %219, %220
  %222 = call i64 @IStorage_OpenStream(i32* %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_transact.stmname, i64 0, i64 0), i32* null, i32 %221, i32 0, i32** %5)
  store i64 %222, i64* %4, align 8
  %223 = load i64, i64* %4, align 8
  %224 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %225 = icmp eq i64 %223, %224
  %226 = zext i1 %225 to i32
  %227 = load i64, i64* %4, align 8
  %228 = call i32 (i32, i8*, ...) @ok(i32 %226, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i64 %227)
  %229 = load i64, i64* %4, align 8
  %230 = load i64, i64* @S_OK, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %167
  %233 = load i32*, i32** %5, align 8
  %234 = call i32 @IStream_Release(i32* %233)
  br label %235

235:                                              ; preds = %232, %167
  %236 = load i32*, i32** %1, align 8
  %237 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %238 = load i32, i32* @STGM_READWRITE, align 4
  %239 = or i32 %237, %238
  %240 = call i64 @IStorage_OpenStorage(i32* %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_transact.stgname2, i64 0, i64 0), i32* null, i32 %239, i32* null, i32 0, i32** %2)
  store i64 %240, i64* %4, align 8
  %241 = load i64, i64* %4, align 8
  %242 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %243 = icmp eq i64 %241, %242
  %244 = zext i1 %243 to i32
  %245 = load i64, i64* %4, align 8
  %246 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i64 %245)
  %247 = load i64, i64* %4, align 8
  %248 = load i64, i64* @S_OK, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %235
  %251 = load i32*, i32** %2, align 8
  %252 = call i32 @IStorage_Release(i32* %251)
  br label %253

253:                                              ; preds = %250, %235
  %254 = load i32*, i32** %1, align 8
  %255 = load i32, i32* @STGM_TRANSACTED, align 4
  %256 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @STGM_READWRITE, align 4
  %259 = or i32 %257, %258
  %260 = call i64 @IStorage_OpenStorage(i32* %254, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_transact.stmname2, i64 0, i64 0), i32* null, i32 %259, i32* null, i32 0, i32** %2)
  store i64 %260, i64* %4, align 8
  %261 = load i64, i64* %4, align 8
  %262 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %263 = icmp eq i64 %261, %262
  %264 = zext i1 %263 to i32
  %265 = load i64, i64* %4, align 8
  %266 = call i32 (i32, i8*, ...) @ok(i32 %264, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %265)
  %267 = load i32*, i32** %1, align 8
  %268 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %269 = load i32, i32* @STGM_READWRITE, align 4
  %270 = or i32 %268, %269
  %271 = call i64 @IStorage_OpenStream(i32* %267, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_transact.stmname2, i64 0, i64 0), i32* null, i32 %270, i32 0, i32** %5)
  store i64 %271, i64* %4, align 8
  %272 = load i64, i64* %4, align 8
  %273 = load i64, i64* @S_OK, align 8
  %274 = icmp eq i64 %272, %273
  %275 = zext i1 %274 to i32
  %276 = load i64, i64* %4, align 8
  %277 = call i32 (i32, i8*, ...) @ok(i32 %275, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i64 %276)
  %278 = load i64, i64* %4, align 8
  %279 = load i64, i64* @S_OK, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %253
  %282 = load i32*, i32** %5, align 8
  %283 = call i32 @IStream_Release(i32* %282)
  br label %284

284:                                              ; preds = %281, %253
  %285 = load i32*, i32** %1, align 8
  %286 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %287 = load i32, i32* @STGM_READWRITE, align 4
  %288 = or i32 %286, %287
  %289 = call i64 @IStorage_OpenStorage(i32* %285, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_transact.stgname, i64 0, i64 0), i32* null, i32 %288, i32* null, i32 0, i32** %2)
  store i64 %289, i64* %4, align 8
  %290 = load i64, i64* %4, align 8
  %291 = load i64, i64* @S_OK, align 8
  %292 = icmp eq i64 %290, %291
  %293 = zext i1 %292 to i32
  %294 = load i64, i64* %4, align 8
  %295 = call i32 (i32, i8*, ...) @ok(i32 %293, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 %294)
  %296 = load i64, i64* %4, align 8
  %297 = load i64, i64* @S_OK, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %338

299:                                              ; preds = %284
  %300 = load i32*, i32** %2, align 8
  %301 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %302 = load i32, i32* @STGM_READWRITE, align 4
  %303 = or i32 %301, %302
  %304 = call i64 @IStorage_OpenStorage(i32* %300, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_transact.stgname, i64 0, i64 0), i32* null, i32 %303, i32* null, i32 0, i32** %3)
  store i64 %304, i64* %4, align 8
  %305 = load i64, i64* %4, align 8
  %306 = load i64, i64* @S_OK, align 8
  %307 = icmp eq i64 %305, %306
  %308 = zext i1 %307 to i32
  %309 = load i64, i64* %4, align 8
  %310 = call i32 (i32, i8*, ...) @ok(i32 %308, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i64 %309)
  %311 = load i64, i64* %4, align 8
  %312 = load i64, i64* @S_OK, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %299
  %315 = load i32*, i32** %3, align 8
  %316 = call i32 @IStorage_Release(i32* %315)
  br label %317

317:                                              ; preds = %314, %299
  %318 = load i32*, i32** %2, align 8
  %319 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %320 = load i32, i32* @STGM_READWRITE, align 4
  %321 = or i32 %319, %320
  %322 = call i64 @IStorage_OpenStorage(i32* %318, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_transact.stgname2, i64 0, i64 0), i32* null, i32 %321, i32* null, i32 0, i32** %3)
  store i64 %322, i64* %4, align 8
  %323 = load i64, i64* %4, align 8
  %324 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %325 = icmp eq i64 %323, %324
  %326 = zext i1 %325 to i32
  %327 = load i64, i64* %4, align 8
  %328 = call i32 (i32, i8*, ...) @ok(i32 %326, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i64 %327)
  %329 = load i64, i64* %4, align 8
  %330 = load i64, i64* @S_OK, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %317
  %333 = load i32*, i32** %3, align 8
  %334 = call i32 @IStorage_Release(i32* %333)
  br label %335

335:                                              ; preds = %332, %317
  %336 = load i32*, i32** %2, align 8
  %337 = call i32 @IStorage_Release(i32* %336)
  br label %338

338:                                              ; preds = %335, %284
  %339 = load i32*, i32** %1, align 8
  %340 = call i32 @IStorage_Release(i32* %339)
  %341 = load i32, i32* @filenameA, align 4
  %342 = call i32 @DeleteFileA(i32 %341)
  store i32 %342, i32* %6, align 4
  %343 = load i32, i32* %6, align 4
  %344 = call i32 (i32, i8*, ...) @ok(i32 %343, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %345

345:                                              ; preds = %338, %166
  ret void
}

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i64 @StgCreateDocfile(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IStorage_CreateStream(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i64 @IStream_Write(i32*, i8*, i32, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i64 @IStorage_CreateStorage(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i64 @IStorage_Commit(i32*, i32) #1

declare dso_local i64 @IStream_Commit(i32*, i32) #1

declare dso_local i64 @StgOpenStorage(i32, i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @IStorage_OpenStream(i32*, i8*, i32*, i32, i32, i32**) #1

declare dso_local i64 @IStorage_OpenStorage(i32*, i8*, i32*, i32, i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
