; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmcache.c_check_dotnet20.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmcache.c_check_dotnet20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@check_dotnet20.winedll = internal constant [9 x i8] c"wine.dll\00", align 1
@.str = private unnamed_addr constant [9 x i8] c"wine.dll\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CLDB_E_FILE_OLDVER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"Tests can't be run on older .NET version (.NET 1.1)\0A\00", align 1
@E_ACCESSDENIED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Not enough rights to install an assembly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_dotnet20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dotnet20() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 @create_assembly(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = call i64 @pCreateAssemblyCache(i32** %1, i32 0)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i64 @IAssemblyCache_InstallAssembly(i32* %14, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @check_dotnet20.winedll, i64 0, i64 0), i32* null)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %0
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @CLDB_E_FILE_OLDVER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @win_skip(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %37

27:                                               ; preds = %21
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* @E_ACCESSDENIED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %36

33:                                               ; preds = %27
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @ok(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %33, %31
  br label %37

37:                                               ; preds = %36, %25
  br label %38

38:                                               ; preds = %37, %19
  %39 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @IAssemblyCache_UninstallAssembly(i32* %40, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @check_dotnet20.winedll, i64 0, i64 0), i32* null, i32* %4)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @IAssemblyCache_Release(i32* %42)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @create_assembly(i8*) #1

declare dso_local i64 @pCreateAssemblyCache(i32**, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IAssemblyCache_InstallAssembly(i32*, i32, i8*, i32*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i32 @IAssemblyCache_UninstallAssembly(i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @IAssemblyCache_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
