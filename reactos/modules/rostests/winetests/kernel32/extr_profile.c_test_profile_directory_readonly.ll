; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_profile.c_test_profile_directory_readonly.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_profile.c_test_profile_directory_readonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"D:PAI(A;;0x1200a9;;;WD)\00", align 1
@__const.test_profile_directory_readonly.lpStruct = private unnamed_addr constant [6 x i8] c"string", align 1
@SDDL_REVISION_1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"ConvertStringSecurityDescriptorToSecurityDescriptor failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"wine-test\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\\tmp.ini\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"CreateDirectoryA failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"App\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"Expected FALSE, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"key=string\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"RemoveDirectoryA failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_profile_directory_readonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_profile_directory_readonly() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca [6 x i8], align 1
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %15 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 12, i1 false)
  %16 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_profile_directory_readonly.lpStruct, i32 0, i32 0), i64 6, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 12, i32* %17, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @SDDL_REVISION_1, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %21 = call i64 @ConvertStringSecurityDescriptorToSecurityDescriptorA(i8* %18, i32 %19, i32* %20, i32* null)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @TRUE, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = call i32 @GetTempPathA(i32 %28, i32* %11)
  %30 = call i32 @lstrcatA(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @strcpy(i32* %14, i32* %11)
  %32 = call i32 @lstrcatA(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i64 @CreateDirectoryA(i32* %11, %struct.TYPE_3__* %6)
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @TRUE, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 (...) @GetLastError()
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %38)
  %40 = call i64 @WritePrivateProfileStringA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %14)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @FALSE, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %1, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %45)
  %47 = call i64 @WritePrivateProfileSectionA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32* %14)
  store i64 %47, i64* %1, align 8
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @FALSE, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %1, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %52)
  %54 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %55 = call i64 @WritePrivateProfileStructA(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %54, i32 6, i32* %14)
  store i64 %55, i64* %1, align 8
  %56 = load i64, i64* %1, align 8
  %57 = load i64, i64* @FALSE, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %1, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %60)
  %62 = call i64 @RemoveDirectoryA(i32* %11)
  store i64 %62, i64* %1, align 8
  %63 = load i64, i64* %1, align 8
  %64 = load i64, i64* @TRUE, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 (...) @GetLastError()
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 %67)
  %69 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %69)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ConvertStringSecurityDescriptorToSecurityDescriptorA(i8*, i32, i32*, i32*) #3

declare dso_local i32 @ok(i32, i8*, i64) #3

declare dso_local i64 @GetLastError(...) #3

declare dso_local i32 @GetTempPathA(i32, i32*) #3

declare dso_local i32 @lstrcatA(i32*, i8*) #3

declare dso_local i32 @strcpy(i32*, i32*) #3

declare dso_local i64 @CreateDirectoryA(i32*, %struct.TYPE_3__*) #3

declare dso_local i64 @WritePrivateProfileStringA(i8*, i8*, i8*, i32*) #3

declare dso_local i64 @WritePrivateProfileSectionA(i8*, i8*, i32*) #3

declare dso_local i64 @WritePrivateProfileStructA(i8*, i8*, i8*, i32, i32*) #3

declare dso_local i64 @RemoveDirectoryA(i32*) #3

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
