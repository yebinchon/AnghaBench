; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_delete_key_value.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_registry.c_test_delete_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@hkey_main = common dso_local global i32* null, align 8
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Subkey1\00", align 1
@KEY_WRITE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"failed with error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"expected ERROR_SUCCESS, got %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"expected ERROR_FILE_NOT_FOUND, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_delete_key_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_delete_key_value() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @pRegDeleteKeyValueA(i32* null, i8* null, i8* null)
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @ERROR_INVALID_HANDLE, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i32*, i32** @hkey_main, align 8
  %11 = call i64 @pRegDeleteKeyValueA(i32* %10, i8* null, i8* null)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32*, i32** @hkey_main, align 8
  %19 = load i32, i32* @REG_SZ, align 4
  %20 = call i64 @RegSetValueExA(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %19, i32* bitcast ([6 x i8]* @.str.2 to i32*), i32 6)
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %2, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** @hkey_main, align 8
  %28 = call i64 @RegQueryValueExA(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i64 %28, i64* %2, align 8
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** @hkey_main, align 8
  %36 = call i64 @pRegDeleteKeyValueA(i32* %35, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %36, i64* %2, align 8
  %37 = load i64, i64* %2, align 8
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** @hkey_main, align 8
  %44 = call i64 @RegQueryValueExA(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i64 %44, i64* %2, align 8
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %2, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** @hkey_main, align 8
  %52 = load i32, i32* @KEY_WRITE, align 4
  %53 = load i32, i32* @KEY_READ, align 4
  %54 = or i32 %52, %53
  %55 = call i64 @RegCreateKeyExA(i32* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %54, i32* null, i32** %1, i32* null)
  store i64 %55, i64* %2, align 8
  %56 = load i64, i64* %2, align 8
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %2, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = load i32, i32* @REG_SZ, align 4
  %64 = call i64 @RegSetValueExA(i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %63, i32* bitcast ([6 x i8]* @.str.2 to i32*), i32 6)
  store i64 %64, i64* %2, align 8
  %65 = load i64, i64* %2, align 8
  %66 = load i64, i64* @ERROR_SUCCESS, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %2, align 8
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i64 @RegQueryValueExA(i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i64 %72, i64* %2, align 8
  %73 = load i64, i64* %2, align 8
  %74 = load i64, i64* @ERROR_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %2, align 8
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %77)
  %79 = load i32*, i32** @hkey_main, align 8
  %80 = call i64 @pRegDeleteKeyValueA(i32* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i64 %80, i64* %2, align 8
  %81 = load i64, i64* %2, align 8
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %2, align 8
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %85)
  %87 = load i32*, i32** %1, align 8
  %88 = call i64 @RegQueryValueExA(i32* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i64 %88, i64* %2, align 8
  %89 = load i64, i64* %2, align 8
  %90 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %2, align 8
  %94 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %93)
  %95 = load i32*, i32** %1, align 8
  %96 = load i32, i32* @REG_SZ, align 4
  %97 = call i64 @RegSetValueExA(i32* %95, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %96, i32* bitcast ([6 x i8]* @.str.2 to i32*), i32 6)
  store i64 %97, i64* %2, align 8
  %98 = load i64, i64* %2, align 8
  %99 = load i64, i64* @ERROR_SUCCESS, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %2, align 8
  %103 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %102)
  %104 = load i32*, i32** %1, align 8
  %105 = call i64 @RegQueryValueExA(i32* %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i64 %105, i64* %2, align 8
  %106 = load i64, i64* %2, align 8
  %107 = load i64, i64* @ERROR_SUCCESS, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %2, align 8
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %110)
  %112 = load i32*, i32** @hkey_main, align 8
  %113 = call i64 @pRegDeleteKeyValueA(i32* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  store i64 %113, i64* %2, align 8
  %114 = load i64, i64* %2, align 8
  %115 = load i64, i64* @ERROR_SUCCESS, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %2, align 8
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %118)
  %120 = load i32*, i32** %1, align 8
  %121 = call i64 @RegQueryValueExA(i32* %120, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i64 %121, i64* %2, align 8
  %122 = load i64, i64* %2, align 8
  %123 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %2, align 8
  %127 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %126)
  %128 = load i32*, i32** %1, align 8
  %129 = call i32 @RegDeleteKeyA(i32* %128, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %130 = load i32*, i32** %1, align 8
  %131 = call i32 @RegCloseKey(i32* %130)
  ret void
}

declare dso_local i64 @pRegDeleteKeyValueA(i32*, i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @RegSetValueExA(i32*, i8*, i32, i32, i32*, i32) #1

declare dso_local i64 @RegQueryValueExA(i32*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @RegCreateKeyExA(i32*, i8*, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @RegDeleteKeyA(i32*, i8*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
