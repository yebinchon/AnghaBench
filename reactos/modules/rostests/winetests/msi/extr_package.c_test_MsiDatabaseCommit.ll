; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_MsiDatabaseCommit.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_test_MsiDatabaseCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"failed to create database\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"#%u\00", align 1
@ERROR_INSTALL_PACKAGE_REJECTED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Not enough rights to perform tests\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PROP\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"MsiGetPropertyA returned %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"got \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"MsiDatabaseCommit returned %u\0A\00", align 1
@msifile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_MsiDatabaseCommit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_MsiDatabaseCommit() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [32 x i8], align 16
  %5 = alloca [12 x i8], align 1
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %7 = call i32 (...) @create_package_db()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @create_property_table(i32 %10)
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %16 = call i8* @MsiOpenPackageA(i8* %15, i32* %3)
  store i8* %16, i8** %1, align 8
  %17 = load i8*, i8** %1, align 8
  %18 = load i8*, i8** @ERROR_INSTALL_PACKAGE_REJECTED, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %81

22:                                               ; preds = %0
  %23 = load i8*, i8** %1, align 8
  %24 = load i8*, i8** @ERROR_SUCCESS, align 8
  %25 = icmp eq i8* %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i8* @MsiSetPropertyA(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %30, i8** %1, align 8
  %31 = load i8*, i8** %1, align 8
  %32 = load i8*, i8** @ERROR_SUCCESS, align 8
  %33 = icmp eq i8* %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i8*, i8** %1, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %37, align 16
  store i32 32, i32* %6, align 4
  %38 = load i32, i32* %3, align 4
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %40 = call i8* @MsiGetPropertyA(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %39, i32* %6)
  store i8* %40, i8** %1, align 8
  %41 = load i8*, i8** %1, align 8
  %42 = load i8*, i8** @ERROR_SUCCESS, align 8
  %43 = icmp eq i8* %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i8*, i8** %1, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %45)
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %48 = call i32 @lstrcmpA(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* %2, align 4
  %55 = call i8* @MsiDatabaseCommit(i32 %54)
  store i8* %55, i8** %1, align 8
  %56 = load i8*, i8** %1, align 8
  %57 = load i8*, i8** @ERROR_SUCCESS, align 8
  %58 = icmp eq i8* %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i8*, i8** %1, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %60)
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %62, align 16
  store i32 32, i32* %6, align 4
  %63 = load i32, i32* %3, align 4
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %65 = call i8* @MsiGetPropertyA(i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %64, i32* %6)
  store i8* %65, i8** %1, align 8
  %66 = load i8*, i8** %1, align 8
  %67 = load i8*, i8** @ERROR_SUCCESS, align 8
  %68 = icmp eq i8* %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i8*, i8** %1, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %73 = call i32 @lstrcmpA(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @MsiCloseHandle(i32 %79)
  br label %81

81:                                               ; preds = %22, %20
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @MsiCloseHandle(i32 %82)
  %84 = load i32, i32* @msifile, align 4
  %85 = call i32 @DeleteFileA(i32 %84)
  ret void
}

declare dso_local i32 @create_package_db(...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @create_property_table(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @MsiOpenPackageA(i8*, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i8* @MsiSetPropertyA(i32, i8*, i8*) #1

declare dso_local i8* @MsiGetPropertyA(i32, i8*, i8*, i32*) #1

declare dso_local i32 @lstrcmpA(i8*, i8*) #1

declare dso_local i8* @MsiDatabaseCommit(i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
