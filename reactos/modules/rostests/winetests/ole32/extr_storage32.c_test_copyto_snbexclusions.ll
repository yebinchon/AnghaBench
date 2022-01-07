; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_copyto_snbexclusions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_copyto_snbexclusions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_copyto_snbexclusions.snb_exclude = internal global [4 x i32*] [i32* inttoptr (i64 130 to i32*), i32* inttoptr (i64 129 to i32*), i32* inttoptr (i64 128 to i32*), i32* null], align 16
@file1_name = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"StgCreateDocfile failed: 0x%08x\0A\00", align 1
@file2_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"CopyTo failed: 0x%08x\0A\00", align 1
@STG_E_FILENOTFOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"OpenStorage should give STG_E_FILENOTFOUND, gave: 0x%08x\0A\00", align 1
@strmA_name = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"OpenStream should give STG_E_FILENOTFOUND, gave: 0x%08x\0A\00", align 1
@stgB_name = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"OpenStorage failed: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"OpenStream failed: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Read failed: 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Expected %s to be read, got %s\0A\00", align 1
@file1_nameA = common dso_local global i32 0, align 4
@file2_nameA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_copyto_snbexclusions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_copyto_snbexclusions() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [64 x i32], align 16
  %6 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %7 = load i32, i32* @file1_name, align 4
  %8 = load i32, i32* @STGM_CREATE, align 4
  %9 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @STGM_READWRITE, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @StgCreateDocfile(i32 %7, i32 %12, i32 0, i32** %1)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %6, align 8
  %19 = call i32 (i32, i8*, i64, ...) @ok(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @FAILED(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  br label %181

24:                                               ; preds = %0
  %25 = load i32*, i32** %1, align 8
  %26 = call i64 @create_test_file(i32* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @FAILED(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %181

31:                                               ; preds = %24
  %32 = load i32, i32* @file2_name, align 4
  %33 = load i32, i32* @STGM_CREATE, align 4
  %34 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @STGM_READWRITE, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @StgCreateDocfile(i32 %32, i32 %37, i32 0, i32** %2)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %6, align 8
  %44 = call i32 (i32, i8*, i64, ...) @ok(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @FAILED(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  br label %181

49:                                               ; preds = %31
  %50 = load i32*, i32** %1, align 8
  %51 = load i32*, i32** %2, align 8
  %52 = call i64 @IStorage_CopyTo(i32* %50, i32 0, i32* null, i32 ptrtoint ([4 x i32*]* @test_copyto_snbexclusions.snb_exclude to i32), i32* %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %6, align 8
  %58 = call i32 (i32, i8*, i64, ...) @ok(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @FAILED(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %181

63:                                               ; preds = %49
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* @STGM_READWRITE, align 4
  %66 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %67 = or i32 %65, %66
  %68 = call i64 @IStorage_OpenStorage(i32* %64, i32* inttoptr (i64 130 to i32*), i32* null, i32 %67, i32* null, i32 0, i32** %3)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %6, align 8
  %74 = call i32 (i32, i8*, i64, ...) @ok(i32 %72, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @SUCCEEDED(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %63
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @IStorage_Release(i32* %79)
  br label %81

81:                                               ; preds = %78, %63
  %82 = load i32*, i32** %2, align 8
  %83 = load i32*, i32** @strmA_name, align 8
  %84 = load i32, i32* @STGM_READWRITE, align 4
  %85 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %86 = or i32 %84, %85
  %87 = call i64 @IStorage_OpenStream(i32* %82, i32* %83, i32* null, i32 %86, i32 0, i32** %4)
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %6, align 8
  %93 = call i32 (i32, i8*, i64, ...) @ok(i32 %91, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %92)
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @SUCCEEDED(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %81
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @IStream_Release(i32* %98)
  br label %100

100:                                              ; preds = %97, %81
  %101 = load i32*, i32** %2, align 8
  %102 = load i32*, i32** @stgB_name, align 8
  %103 = load i32, i32* @STGM_READWRITE, align 4
  %104 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %105 = or i32 %103, %104
  %106 = call i64 @IStorage_OpenStorage(i32* %101, i32* %102, i32* null, i32 %105, i32* null, i32 0, i32** %3)
  store i64 %106, i64* %6, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %6, align 8
  %112 = call i32 (i32, i8*, i64, ...) @ok(i32 %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %111)
  %113 = load i64, i64* %6, align 8
  %114 = call i64 @SUCCEEDED(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %162

116:                                              ; preds = %100
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* @STGM_READWRITE, align 4
  %119 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %120 = or i32 %118, %119
  %121 = call i64 @IStorage_OpenStream(i32* %117, i32* inttoptr (i64 129 to i32*), i32* null, i32 %120, i32 0, i32** %4)
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* @S_OK, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %6, align 8
  %127 = call i32 (i32, i8*, i64, ...) @ok(i32 %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %126)
  %128 = load i64, i64* %6, align 8
  %129 = call i64 @SUCCEEDED(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %116
  %132 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %133 = call i32 @memset(i32* %132, i32 0, i32 256)
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %136 = call i64 @IStream_Read(i32* %134, i32* %135, i32 256, i32* null)
  store i64 %136, i64* %6, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load i64, i64* @S_OK, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i64, i64* %6, align 8
  %142 = call i32 (i32, i8*, i64, ...) @ok(i32 %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %141)
  %143 = load i64, i64* %6, align 8
  %144 = call i64 @SUCCEEDED(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %131
  %147 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %148 = call i64 @strcmp_ww(i32* %147, i32* inttoptr (i64 129 to i32*))
  %149 = icmp eq i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @wine_dbgstr_w(i32* inttoptr (i64 129 to i32*))
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %154 = call i32 @wine_dbgstr_w(i32* %153)
  %155 = call i32 (i32, i8*, i64, ...) @ok(i32 %150, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %152, i32 %154)
  br label %156

156:                                              ; preds = %146, %131
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @IStream_Release(i32* %157)
  br label %159

159:                                              ; preds = %156, %116
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 @IStorage_Release(i32* %160)
  br label %162

162:                                              ; preds = %159, %100
  %163 = load i32*, i32** %2, align 8
  %164 = load i32, i32* @STGM_READWRITE, align 4
  %165 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %166 = or i32 %164, %165
  %167 = call i64 @IStorage_OpenStream(i32* %163, i32* inttoptr (i64 128 to i32*), i32* null, i32 %166, i32 0, i32** %4)
  store i64 %167, i64* %6, align 8
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = load i64, i64* %6, align 8
  %173 = call i32 (i32, i8*, i64, ...) @ok(i32 %171, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %172)
  %174 = load i64, i64* %6, align 8
  %175 = call i64 @SUCCEEDED(i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %162
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 @IStream_Release(i32* %178)
  br label %180

180:                                              ; preds = %177, %162
  br label %181

181:                                              ; preds = %180, %62, %48, %30, %23
  %182 = load i32*, i32** %1, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32*, i32** %1, align 8
  %186 = call i32 @IStorage_Release(i32* %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load i32*, i32** %2, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32*, i32** %2, align 8
  %192 = call i32 @IStorage_Release(i32* %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32, i32* @file1_nameA, align 4
  %195 = call i32 @DeleteFileA(i32 %194)
  %196 = load i32, i32* @file2_nameA, align 4
  %197 = call i32 @DeleteFileA(i32 %196)
  ret void
}

declare dso_local i64 @StgCreateDocfile(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @create_test_file(i32*) #1

declare dso_local i64 @IStorage_CopyTo(i32*, i32, i32*, i32, i32*) #1

declare dso_local i64 @IStorage_OpenStorage(i32*, i32*, i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i64 @IStorage_OpenStream(i32*, i32*, i32*, i32, i32, i32**) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @IStream_Read(i32*, i32*, i32, i32*) #1

declare dso_local i64 @strcmp_ww(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
