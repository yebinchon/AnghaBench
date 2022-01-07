; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_gettargetpath_bad.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_gettargetpath_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_gettargetpath_bad.boo = internal constant [4 x i8] c"boo\00", align 1
@test_gettargetpath_bad.empty = internal constant [1 x i8] zeroinitializer, align 1
@ERROR_INSTALL_PACKAGE_REJECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Not enough rights to perform tests\0A\00", align 1
@msifile = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to create package %u\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"wrong return val\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"boo\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@ERROR_DIRECTORY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gettargetpath_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gettargetpath_bad() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca [128 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call i32 (...) @create_package_db()
  %7 = call i64 @package_from_db(i32 %6, i32* %3)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @ERROR_INSTALL_PACKAGE_REJECTED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @msifile, align 4
  %14 = call i32 @DeleteFileA(i32 %13)
  br label %120

15:                                               ; preds = %0
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @ERROR_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = call i64 @MsiGetTargetPathA(i32 0, i8* null, i8* null, i64* null)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i64 @MsiGetTargetPathA(i32 0, i8* null, i8* null, i64* %4)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i64 @MsiGetTargetPathA(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* null, i64* null)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i64 @MsiGetTargetPathA(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* null, i64* null)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @MsiGetTargetPathA(i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* null, i64* null)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @ERROR_DIRECTORY, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %3, align 4
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %55 = call i64 @MsiGetTargetPathA(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %54, i64* null)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @ERROR_DIRECTORY, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  %61 = load i32, i32* %3, align 4
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %63 = call i64 @MsiGetTargetPathA(i32 %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %62, i64* %4)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @ERROR_DIRECTORY, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i64 @MsiGetTargetPathW(i32 0, i8* null, i8* null, i64* null)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i64 @MsiGetTargetPathW(i32 0, i8* null, i8* null, i64* %4)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i64 @MsiGetTargetPathW(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_gettargetpath_bad.boo, i64 0, i64 0), i8* null, i64* null)
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i64 @MsiGetTargetPathW(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_gettargetpath_bad.boo, i64 0, i64 0), i8* null, i64* null)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* %3, align 4
  %94 = call i64 @MsiGetTargetPathW(i32 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_gettargetpath_bad.boo, i64 0, i64 0), i8* null, i64* null)
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  %96 = load i64, i64* @ERROR_DIRECTORY, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* %3, align 4
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %102 = call i64 @MsiGetTargetPathW(i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_gettargetpath_bad.boo, i64 0, i64 0), i8* %101, i64* null)
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @ERROR_DIRECTORY, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  %108 = load i32, i32* %3, align 4
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %110 = call i64 @MsiGetTargetPathW(i32 %108, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_gettargetpath_bad.empty, i64 0, i64 0), i8* %109, i64* %4)
  store i64 %110, i64* %5, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* @ERROR_DIRECTORY, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @MsiCloseHandle(i32 %116)
  %118 = load i32, i32* @msifile, align 4
  %119 = call i32 @DeleteFileA(i32 %118)
  br label %120

120:                                              ; preds = %15, %11
  ret void
}

declare dso_local i64 @package_from_db(i32, i32*) #1

declare dso_local i32 @create_package_db(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @MsiGetTargetPathA(i32, i8*, i8*, i64*) #1

declare dso_local i64 @MsiGetTargetPathW(i32, i8*, i8*, i64*) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
