; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/mspatcha/extr_mspatcha.c_validate_signature.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/mspatcha/extr_mspatcha.c_validate_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"GetFilePatchSignatureA failed %lu, %s.%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Got %s for %s.%s\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"GetFilePatchSignatureW failed %lu, %s.%s\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to open file %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"GetFilePatchSignatureByHandle failed %lu, %s.%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.TYPE_4__*, i8*)* @validate_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_signature(i8* %0, i8* %1, %struct.TYPE_4__* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca [32 x i8], align 16
  %15 = alloca [32 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %25 = bitcast [32 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 32, i1 false)
  %26 = bitcast [32 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 32, i1 false)
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %28 = call i32 @memset(i8* %27, i32 170, i32 32)
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i8* %29, i32 %32, i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = call i32 @extract(i8* %21, %struct.TYPE_4__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %4
  store i32 1, i32* %17, align 4
  br label %143

41:                                               ; preds = %4
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %43 = call i32 @memset(i8* %42, i32 170, i32 31)
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %45 = call i32 @GetFilePatchSignatureA(i8* %21, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null, i32 32, i8* %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i8* (...) @GetLastError()
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 (i32, i8*, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %48, i8* %49)
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %41
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %56 = call i32 @_stricmp(i8* %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 (i32, i8*, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %61, i8* %62)
  br label %64

64:                                               ; preds = %53, %41
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %66 = call i32 @memset(i8* %65, i32 170, i32 31)
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %68 = call i32 @memset(i8* %67, i32 170, i32 31)
  %69 = load i32, i32* @CP_ACP, align 4
  %70 = call i32 @_countof(i8* %24)
  %71 = call i32 @MultiByteToWideChar(i32 %69, i32 0, i8* %21, i32 -1, i8* %24, i32 %70)
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %73 = call i32 @GetFilePatchSignatureW(i8* %24, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null, i32 32, i8* %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i8* (...) @GetLastError()
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 (i32, i8*, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %75, i8* %76, i8* %77)
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %64
  %82 = load i32, i32* @CP_ACP, align 4
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %86 = call i32 @_countof(i8* %85)
  %87 = call i32 @WideCharToMultiByte(i32 %82, i32 0, i8* %83, i32 -1, i8* %84, i32 %86, i32* null, i32* null)
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %90 = call i32 @_stricmp(i8* %88, i8* %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 (i32, i8*, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %94, i8* %95, i8* %96)
  br label %98

98:                                               ; preds = %81, %64
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %100 = call i32 @memset(i8* %99, i32 170, i32 31)
  %101 = load i32, i32* @GENERIC_READ, align 4
  %102 = load i32, i32* @FILE_SHARE_READ, align 4
  %103 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @OPEN_EXISTING, align 4
  %106 = call i64 @CreateFileA(i8* %21, i32 %101, i32 %104, i32* null, i32 %105, i32 0, i32 0)
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %109 = icmp ne i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i8* (...) @GetLastError()
  %112 = call i32 (i32, i8*, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %98
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %119 = call i32 @GetFilePatchSignatureByHandle(i64 %117, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null, i32 32, i8* %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = call i8* (...) @GetLastError()
  %122 = load i8*, i8** %5, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 (i32, i8*, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %121, i8* %122, i8* %123)
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %116
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %130 = call i32 @_stricmp(i8* %128, i8* %129)
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %135 = load i8*, i8** %5, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 (i32, i8*, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %134, i8* %135, i8* %136)
  br label %138

138:                                              ; preds = %127, %116
  %139 = load i64, i64* %12, align 8
  %140 = call i32 @CloseHandle(i64 %139)
  br label %141

141:                                              ; preds = %138, %98
  %142 = call i32 @DeleteFileA(i8* %21)
  store i32 0, i32* %17, align 4
  br label %143

143:                                              ; preds = %141, %40
  %144 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %17, align 4
  switch i32 %145, label %147 [
    i32 0, label %146
    i32 1, label %146
  ]

146:                                              ; preds = %143, %143
  ret void

147:                                              ; preds = %143
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(i8*, i32, i32) #3

declare dso_local i32 @memcpy(i8*, i32, i32) #3

declare dso_local i32 @extract(i8*, %struct.TYPE_4__*) #3

declare dso_local i32 @GetFilePatchSignatureA(i8*, i32, i32*, i32, i32*, i32, i32*, i32, i8*) #3

declare dso_local i32 @ok(i32, i8*, i8*, ...) #3

declare dso_local i8* @GetLastError(...) #3

declare dso_local i32 @_stricmp(i8*, i8*) #3

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i8*, i32) #3

declare dso_local i32 @_countof(i8*) #3

declare dso_local i32 @GetFilePatchSignatureW(i8*, i32, i32*, i32, i32*, i32, i32*, i32, i8*) #3

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32*, i32*) #3

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #3

declare dso_local i32 @GetFilePatchSignatureByHandle(i64, i32, i32*, i32, i32*, i32, i32*, i32, i8*) #3

declare dso_local i32 @CloseHandle(i64) #3

declare dso_local i32 @DeleteFileA(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
