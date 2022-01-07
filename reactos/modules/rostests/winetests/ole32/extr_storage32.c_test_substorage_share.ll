; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_substorage_share.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_substorage_share.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_substorage_share.stgname = internal constant [8 x i8] c"PERMSTG\00", align 1
@test_substorage_share.stmname = internal constant [9 x i8] c"CONTENTS\00", align 1
@test_substorage_share.othername = internal constant [8 x i8] c"NEWNAME\00", align 1
@filenameA = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"StgCreateDocfile failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"IStorage->CreateStorage failed, hr=%08x\0A\00", align 1
@STG_E_ACCESSDENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"IStorage->OpenStorage should fail %08x\0A\00", align 1
@STGM_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"IStorage->RenameElement should fail %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"IStorage->DestroyElement failed, hr=%08x\0A\00", align 1
@STG_E_REVERTED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"IStorage->CreateStream failed, hr=%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"IStorage->OpenStream should fail %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"this shouldn't work\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"IStream_Write should fail %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"deleted file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_substorage_share to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_substorage_share() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @filenameA, align 4
  %9 = call i32 @DeleteFileA(i32 %8)
  %10 = load i32, i32* @filename, align 4
  %11 = load i32, i32* @STGM_CREATE, align 4
  %12 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @STGM_READWRITE, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @StgCreateDocfile(i32 %10, i32 %15, i32 0, i32** %1)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %1, align 8
  %23 = load i32, i32* @STGM_READWRITE, align 4
  %24 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @IStorage_CreateStorage(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_substorage_share.stgname, i64 0, i64 0), i32 %25, i32 0, i32 0, i32** %2)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %6, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %116

36:                                               ; preds = %0
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @STGM_READWRITE, align 4
  %39 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @IStorage_OpenStorage(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_substorage_share.stgname, i64 0, i64 0), i32* null, i32 %40, i32 0, i32 0, i32** %3)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %6, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @IStorage_Release(i32* %52)
  br label %54

54:                                               ; preds = %51, %36
  %55 = load i32*, i32** %1, align 8
  %56 = load i32, i32* @STGM_READ, align 4
  %57 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @IStorage_OpenStorage(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_substorage_share.stgname, i64 0, i64 0), i32* null, i32 %58, i32 0, i32 0, i32** %3)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %6, align 8
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @IStorage_Release(i32* %70)
  br label %72

72:                                               ; preds = %69, %54
  %73 = load i32*, i32** %1, align 8
  %74 = call i64 @IStorage_RenameElement(i32* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_substorage_share.stgname, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_substorage_share.othername, i64 0, i64 0))
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %6, align 8
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @SUCCEEDED(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load i32*, i32** %1, align 8
  %86 = call i64 @IStorage_RenameElement(i32* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_substorage_share.othername, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_substorage_share.stgname, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %72
  %88 = load i32*, i32** %1, align 8
  %89 = call i64 @IStorage_DestroyElement(i32* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_substorage_share.stgname, i64 0, i64 0))
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @S_OK, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i64, i64* %6, align 8
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %94)
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* @STGM_READWRITE, align 4
  %98 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %99 = or i32 %97, %98
  %100 = call i64 @IStorage_CreateStream(i32* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_substorage_share.stmname, i64 0, i64 0), i32 %99, i32 0, i32 0, i32** %4)
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @STG_E_REVERTED, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %6, align 8
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %105)
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %87
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @IStream_Release(i32* %111)
  br label %113

113:                                              ; preds = %110, %87
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @IStorage_Release(i32* %114)
  br label %116

116:                                              ; preds = %113, %0
  %117 = load i32*, i32** %1, align 8
  %118 = load i32, i32* @STGM_READWRITE, align 4
  %119 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %120 = or i32 %118, %119
  %121 = call i64 @IStorage_CreateStream(i32* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_substorage_share.stmname, i64 0, i64 0), i32 %120, i32 0, i32 0, i32** %4)
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* @S_OK, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %6, align 8
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %126)
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* @S_OK, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %201

131:                                              ; preds = %116
  %132 = load i32*, i32** %1, align 8
  %133 = load i32, i32* @STGM_READWRITE, align 4
  %134 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %135 = or i32 %133, %134
  %136 = call i64 @IStorage_OpenStream(i32* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_substorage_share.stmname, i64 0, i64 0), i32* null, i32 %135, i32 0, i32** %5)
  store i64 %136, i64* %6, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i64, i64* %6, align 8
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %141)
  %143 = load i64, i64* %6, align 8
  %144 = load i64, i64* @S_OK, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %131
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 @IStream_Release(i32* %147)
  br label %149

149:                                              ; preds = %146, %131
  %150 = load i32*, i32** %1, align 8
  %151 = load i32, i32* @STGM_READ, align 4
  %152 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %153 = or i32 %151, %152
  %154 = call i64 @IStorage_OpenStream(i32* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_substorage_share.stmname, i64 0, i64 0), i32* null, i32 %153, i32 0, i32** %5)
  store i64 %154, i64* %6, align 8
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i64, i64* %6, align 8
  %160 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %159)
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* @S_OK, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %149
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 @IStream_Release(i32* %165)
  br label %167

167:                                              ; preds = %164, %149
  %168 = load i32*, i32** %1, align 8
  %169 = call i64 @IStorage_RenameElement(i32* %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_substorage_share.stmname, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_substorage_share.othername, i64 0, i64 0))
  store i64 %169, i64* %6, align 8
  %170 = load i64, i64* %6, align 8
  %171 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %172 = icmp eq i64 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i64, i64* %6, align 8
  %175 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %174)
  %176 = load i64, i64* %6, align 8
  %177 = call i64 @SUCCEEDED(i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %167
  %180 = load i32*, i32** %1, align 8
  %181 = call i64 @IStorage_RenameElement(i32* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_substorage_share.othername, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_substorage_share.stmname, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %167
  %183 = load i32*, i32** %1, align 8
  %184 = call i64 @IStorage_DestroyElement(i32* %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_substorage_share.stmname, i64 0, i64 0))
  store i64 %184, i64* %6, align 8
  %185 = load i64, i64* %6, align 8
  %186 = load i64, i64* @S_OK, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i64, i64* %6, align 8
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %189)
  %191 = load i32*, i32** %4, align 8
  %192 = call i64 @IStream_Write(i32* %191, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 20, i32* null)
  store i64 %192, i64* %6, align 8
  %193 = load i64, i64* %6, align 8
  %194 = load i64, i64* @STG_E_REVERTED, align 8
  %195 = icmp eq i64 %193, %194
  %196 = zext i1 %195 to i32
  %197 = load i64, i64* %6, align 8
  %198 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 %197)
  %199 = load i32*, i32** %4, align 8
  %200 = call i32 @IStream_Release(i32* %199)
  br label %201

201:                                              ; preds = %182, %116
  %202 = load i32*, i32** %1, align 8
  %203 = call i32 @IStorage_Release(i32* %202)
  %204 = load i32, i32* @filenameA, align 4
  %205 = call i32 @DeleteFileA(i32 %204)
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i64 @StgCreateDocfile(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IStorage_CreateStorage(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i64 @IStorage_OpenStorage(i32*, i8*, i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i64 @IStorage_RenameElement(i32*, i8*, i8*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IStorage_DestroyElement(i32*, i8*) #1

declare dso_local i64 @IStorage_CreateStream(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i64 @IStorage_OpenStream(i32*, i8*, i32*, i32, i32, i32**) #1

declare dso_local i64 @IStream_Write(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
