; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_layerapi.c_expect_LayerValue_imp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_layerapi.c_expect_LayerValue_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Software\\Microsoft\\Windows NT\\CurrentVersion\\AppCompatFlags\\Layers\00", align 1
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Expected to be able to open a registry key\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Expected to get a valid value, err: %u\0A\00", align 1
@REG_SZ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Expected the type to be REG_SZ, was: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Expected the data to be: '%s', was: '%s'\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Expected not to find the value %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i8*)* @expect_LayerValue_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expect_LayerValue_imp(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @HKEY_CURRENT_USER, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 (...) @QueryFlag()
  %21 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @RegCreateKeyExA(i32 %19, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %22, i32* null, i32** %7, i32* null)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @winetest_ok(i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %78

32:                                               ; preds = %18
  %33 = bitcast [512 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 512, i1 false)
  store i64 0, i64* %10, align 8
  store i64 512, i64* %11, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %37 = ptrtoint i8* %36 to i32
  %38 = call i64 @RegQueryValueExA(i32* %34, i8* %35, i32* null, i64* %10, i32 %37, i64* %11)
  store i64 %38, i64* %8, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %32
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %8, align 8
  %47 = call i32 (i32, i8*, ...) @winetest_ok(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %41
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @REG_SZ, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %10, align 8
  %57 = call i32 (i32, i8*, ...) @winetest_ok(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @strcmp(i8* %58, i8* %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %66 = call i32 (i32, i8*, ...) @winetest_ok(i32 %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %51, %41
  br label %75

68:                                               ; preds = %32
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 (i32, i8*, ...) @winetest_ok(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %68, %67
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @RegCloseKey(i32* %76)
  br label %78

78:                                               ; preds = %75, %18
  ret void
}

declare dso_local i64 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @QueryFlag(...) #1

declare dso_local i32 @winetest_ok(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @RegQueryValueExA(i32*, i8*, i32*, i64*, i32, i64*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
