; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netcfgx/extr_netcfg_iface.c_ReadBindingString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netcfgx/extr_netcfg_iface.c_ReadBindingString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32* }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 0], align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 92, i32 76, i32 105, i32 110, i32 107, i32 97, i32 103, i32 101, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i32] [i32 66, i32 105, i32 110, i32 100, i32 0], align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadBindingString(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [200 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @S_OK, align 4
  store i32 %16, i32* %2, align 4
  br label %60

17:                                               ; preds = %10
  %18 = getelementptr inbounds [200 x i32], [200 x i32]* %4, i64 0, i64 0
  %19 = call i32 @wcscpy(i32* %18, i8* bitcast ([35 x i32]* @.str to i8*))
  %20 = getelementptr inbounds [200 x i32], [200 x i32]* %4, i64 0, i64 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @wcscat(i32* %20, i8* %23)
  %25 = getelementptr inbounds [200 x i32], [200 x i32]* %4, i64 0, i64 0
  %26 = call i32 @wcscat(i32* %25, i8* bitcast ([9 x i32]* @.str.1 to i8*))
  %27 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %28 = getelementptr inbounds [200 x i32], [200 x i32]* %4, i64 0, i64 0
  %29 = load i32, i32* @KEY_READ, align 4
  %30 = call i64 @RegOpenKeyExW(i32 %27, i32* %28, i32 0, i32 %29, i32* %5)
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @RegQueryValueExW(i32 %34, i8* bitcast ([5 x i32]* @.str.2 to i8*), i32* null, i32* %6, i32* null, i32* %7)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = call i32* @CoTaskMemAlloc(i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %48, i32* %2, align 4
  br label %60

49:                                               ; preds = %38
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @RegQueryValueExW(i32 %50, i8* bitcast ([5 x i32]* @.str.2 to i8*), i32* null, i32* %6, i32* %53, i32* %7)
  br label %55

55:                                               ; preds = %49, %33
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @RegCloseKey(i32 %56)
  br label %58

58:                                               ; preds = %55, %17
  %59 = load i32, i32* @S_OK, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %47, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @wcscpy(i32*, i8*) #1

declare dso_local i32 @wcscat(i32*, i8*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @RegQueryValueExW(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
