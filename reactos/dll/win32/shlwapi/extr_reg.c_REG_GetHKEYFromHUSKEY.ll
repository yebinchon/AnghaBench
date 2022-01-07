; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shlwapi/extr_reg.c_REG_GetHKEYFromHUSKEY.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shlwapi/extr_reg.c_REG_GetHKEYFromHUSKEY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@HKEY_CLASSES_ROOT = common dso_local global i64 0, align 8
@HKEY_CURRENT_CONFIG = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i64 0, align 8
@HKEY_DYN_DATA = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i64 0, align 8
@HKEY_PERFORMANCE_DATA = common dso_local global i64 0, align 8
@HKEY_USERS = common dso_local global i64 0, align 8
@REG_HKCU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @REG_GetHKEYFromHUSKEY to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @REG_GetHKEYFromHUSKEY(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @HKEY_CLASSES_ROOT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %39, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @HKEY_CURRENT_CONFIG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @HKEY_CURRENT_USER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @HKEY_DYN_DATA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @HKEY_LOCAL_MACHINE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @HKEY_PERFORMANCE_DATA, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @HKEY_USERS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31, %27, %23, %19, %15, %2
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %3, align 8
  br label %53

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @REG_HKCU, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %3, align 8
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %49, %45, %39
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
