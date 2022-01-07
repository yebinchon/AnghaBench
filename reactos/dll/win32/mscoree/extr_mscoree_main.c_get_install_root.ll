; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_mscoree_main.c_get_install_root.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_mscoree_main.c_get_install_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.get_install_root.dotnet_key = private unnamed_addr constant [34 x i8] c"SOFTWARE\\Microsoft\\.NETFramework\\\00", align 16
@__const.get_install_root.install_root = private unnamed_addr constant [12 x i8] c"InstallRoot\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @get_install_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_install_root(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [34 x i8], align 16
  %5 = alloca [12 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = bitcast [34 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([34 x i8], [34 x i8]* @__const.get_install_root.dotnet_key, i32 0, i32 0), i64 34, i1 false)
  %9 = bitcast [12 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.get_install_root.install_root, i32 0, i32 0), i64 12, i1 false)
  %10 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %11 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 0
  %12 = load i32, i32* @KEY_READ, align 4
  %13 = call i64 @RegOpenKeyExW(i32 %10, i8* %11, i32 0, i32 %12, i32* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load i32, i32* @MAX_PATH, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %21 = load i64, i64* %3, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i64 @RegQueryValueExW(i32 %19, i8* %20, i32 0, i32* null, i32 %22, i32* %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @RegCloseKey(i32 %26)
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @RegCloseKey(i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %25, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32, i32*, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
