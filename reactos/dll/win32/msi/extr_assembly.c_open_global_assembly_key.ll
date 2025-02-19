; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_open_global_assembly_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_open_global_assembly_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@open_global_assembly_key.path_win32 = internal constant [52 x i8] c"Software\\Microsoft\\Installer\\Win32Assemblies\\Global\00", align 16
@open_global_assembly_key.path_dotnet = internal constant [47 x i8] c"Software\\Microsoft\\Installer\\Assemblies\\Global\00", align 16
@open_global_assembly_key.classes_path_win32 = internal constant [33 x i8] c"Installer\\Win32Assemblies\\Global\00", align 16
@open_global_assembly_key.classes_path_dotnet = internal constant [28 x i8] c"Installer\\Assemblies\\Global\00", align 16
@MSIINSTALLCONTEXT_MACHINE = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*)* @open_global_assembly_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_global_assembly_key(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @MSIINSTALLCONTEXT_MACHINE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @open_global_assembly_key.classes_path_win32, i64 0, i64 0), i8** %8, align 8
  br label %18

17:                                               ; preds = %12
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @open_global_assembly_key.classes_path_dotnet, i64 0, i64 0), i8** %8, align 8
  br label %18

18:                                               ; preds = %17, %16
  br label %26

19:                                               ; preds = %3
  %20 = load i32, i32* @HKEY_CURRENT_USER, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @open_global_assembly_key.path_win32, i64 0, i64 0), i8** %8, align 8
  br label %25

24:                                               ; preds = %19
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @open_global_assembly_key.path_dotnet, i64 0, i64 0), i8** %8, align 8
  br label %25

25:                                               ; preds = %24, %23
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @RegCreateKeyW(i32 %27, i8* %28, i32* %29)
  ret i32 %30
}

declare dso_local i32 @RegCreateKeyW(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
