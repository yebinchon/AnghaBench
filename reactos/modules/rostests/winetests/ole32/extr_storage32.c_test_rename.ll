; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_rename.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_rename.stgname = internal constant [8 x i8] c"PERMSTG\00", align 1
@test_rename.stgname2 = internal constant [4 x i8] c"STG\00", align 1
@test_rename.stmname = internal constant [9 x i8] c"CONTENTS\00", align 1
@test_rename.stmname2 = internal constant [5 x i8] c"ENTS\00", align 1
@filenameA = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"StgCreateDocfile failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"IStorage->CreateStorage failed, hr=%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"IStorage->CreateStream failed, hr=%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"IStorage->RenameElement failed, hr=%08x\0A\00", align 1
@STG_E_FILENOTFOUND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"IStorage_OpenStream should fail, hr=%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"IStorage_OpenStream failed, hr=%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"deleted file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rename() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @filenameA, align 4
  %7 = call i32 @DeleteFileA(i32 %6)
  %8 = load i32, i32* @filename, align 4
  %9 = load i32, i32* @STGM_CREATE, align 4
  %10 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @STGM_READWRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @StgCreateDocfile(i32 %8, i32 %13, i32 0, i32** %1)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @STGM_READWRITE, align 4
  %22 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @IStorage_CreateStorage(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_rename.stgname, i64 0, i64 0), i32 %23, i32 0, i32 0, i32** %2)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %4, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @STGM_READWRITE, align 4
  %33 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @IStorage_CreateStream(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_rename.stmname, i64 0, i64 0), i32 %34, i32 0, i32 0, i32** %3)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %4, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @IStream_Release(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i64 @IStorage_RenameElement(i32* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_rename.stmname, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_rename.stmname2, i64 0, i64 0))
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %4, align 8
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* @STGM_READWRITE, align 4
  %54 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %55 = or i32 %53, %54
  %56 = call i64 @IStorage_OpenStream(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_rename.stmname, i64 0, i64 0), i32* null, i32 %55, i32 0, i32** %3)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %4, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  %63 = load i64, i64* %4, align 8
  %64 = call i64 @SUCCEEDED(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %0
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @IStream_Release(i32* %67)
  br label %69

69:                                               ; preds = %66, %0
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* @STGM_READWRITE, align 4
  %72 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %73 = or i32 %71, %72
  %74 = call i64 @IStorage_OpenStream(i32* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_rename.stmname2, i64 0, i64 0), i32* null, i32 %73, i32 0, i32** %3)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %4, align 8
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* %4, align 8
  %82 = call i64 @SUCCEEDED(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %69
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @IStream_Release(i32* %85)
  br label %87

87:                                               ; preds = %84, %69
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @IStorage_Release(i32* %88)
  %90 = load i32*, i32** %1, align 8
  %91 = call i64 @IStorage_RenameElement(i32* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_rename.stgname, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_rename.stgname2, i64 0, i64 0))
  %92 = load i32*, i32** %1, align 8
  %93 = load i32, i32* @STGM_READWRITE, align 4
  %94 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %95 = or i32 %93, %94
  %96 = call i64 @IStorage_OpenStorage(i32* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_rename.stgname, i64 0, i64 0), i32* null, i32 %95, i32* null, i32 0, i32** %2)
  store i64 %96, i64* %4, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %4, align 8
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %101)
  %103 = load i64, i64* %4, align 8
  %104 = call i64 @SUCCEEDED(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %87
  %107 = load i32*, i32** %2, align 8
  %108 = call i32 @IStorage_Release(i32* %107)
  br label %109

109:                                              ; preds = %106, %87
  %110 = load i32*, i32** %1, align 8
  %111 = load i32, i32* @STGM_READWRITE, align 4
  %112 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %113 = or i32 %111, %112
  %114 = call i64 @IStorage_OpenStorage(i32* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_rename.stgname2, i64 0, i64 0), i32* null, i32 %113, i32* null, i32 0, i32** %2)
  store i64 %114, i64* %4, align 8
  %115 = load i64, i64* %4, align 8
  %116 = load i64, i64* @S_OK, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i64, i64* %4, align 8
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %119)
  %121 = load i64, i64* %4, align 8
  %122 = call i64 @SUCCEEDED(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %109
  %125 = load i32*, i32** %2, align 8
  %126 = load i32, i32* @STGM_READWRITE, align 4
  %127 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %128 = or i32 %126, %127
  %129 = call i64 @IStorage_OpenStream(i32* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_rename.stmname2, i64 0, i64 0), i32* null, i32 %128, i32 0, i32** %3)
  store i64 %129, i64* %4, align 8
  %130 = load i64, i64* %4, align 8
  %131 = load i64, i64* @S_OK, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i64, i64* %4, align 8
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %134)
  %136 = load i64, i64* %4, align 8
  %137 = call i64 @SUCCEEDED(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %124
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 @IStream_Release(i32* %140)
  br label %142

142:                                              ; preds = %139, %124
  %143 = load i32*, i32** %2, align 8
  %144 = call i32 @IStorage_Release(i32* %143)
  br label %145

145:                                              ; preds = %142, %109
  %146 = load i32*, i32** %1, align 8
  %147 = call i32 @IStorage_Release(i32* %146)
  %148 = load i32, i32* @filenameA, align 4
  %149 = call i32 @DeleteFileA(i32 %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i64 @StgCreateDocfile(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IStorage_CreateStorage(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i64 @IStorage_CreateStream(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i64 @IStorage_RenameElement(i32*, i8*, i8*) #1

declare dso_local i64 @IStorage_OpenStream(i32*, i8*, i32*, i32, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i64 @IStorage_OpenStorage(i32*, i8*, i32*, i32, i32*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
