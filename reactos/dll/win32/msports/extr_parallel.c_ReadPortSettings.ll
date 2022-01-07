; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msports/extr_parallel.c_ReadPortSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msports/extr_parallel.c_ReadPortSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"ReadPortSettings(%p)\0A\00", align 1
@DICS_FLAG_GLOBAL = common dso_local global i32 0, align 4
@DIREG_DEV = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i32] [i32 80, i32 111, i32 114, i32 116, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"RegQueryValueExW failed (Error %lu)\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i32] [i32 70, i32 105, i32 108, i32 116, i32 101, i32 114, i32 82, i32 101, i32 115, i32 111, i32 117, i32 114, i32 99, i32 101, i32 77, i32 101, i32 116, i32 104, i32 111, i32 100, i32 0], align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i32] [i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 92, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 83, i32 101, i32 116, i32 92, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 115, i32 92, i32 80, i32 97, i32 114, i32 112, i32 111, i32 114, i32 116, i32 92, i32 80, i32 97, i32 114, i32 97, i32 109, i32 101, i32 116, i32 101, i32 114, i32 115, i32 0], align 4
@.str.5 = private unnamed_addr constant [19 x i32] [i32 80, i32 97, i32 114, i32 69, i32 110, i32 97, i32 98, i32 108, i32 101, i32 76, i32 101, i32 103, i32 97, i32 99, i32 121, i32 90, i32 105, i32 112, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @ReadPortSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadPortSettings(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DICS_FLAG_GLOBAL, align 4
  %22 = load i32, i32* @DIREG_DEV, align 4
  %23 = load i32, i32* @KEY_READ, align 4
  %24 = call i64 @SetupDiOpenDevRegKey(i32 %17, i32 %20, i32 %21, i32 0, i32 %22, i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %1
  store i64 8, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i64 @RegQueryValueExW(i64 %29, i8* bitcast ([9 x i32]* @.str.1 to i8*), i32* null, i32* null, i32 %33, i64* %4)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %38, %28
  store i64 4, i64* %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = ptrtoint i32* %44 to i32
  %46 = call i64 @RegQueryValueExW(i64 %42, i8* bitcast ([21 x i32]* @.str.3 to i8*), i32* null, i32* null, i32 %45, i64* %4)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %50, %41
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @RegCloseKey(i64 %54)
  br label %56

56:                                               ; preds = %53, %1
  %57 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %58 = load i32, i32* @KEY_READ, align 4
  %59 = call i64 @RegOpenKeyExW(i32 %57, i8* bitcast ([53 x i32]* @.str.4 to i8*), i32 0, i32 %58, i64* %5)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %56
  store i64 8, i64* %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = ptrtoint i64* %66 to i32
  %68 = call i64 @RegQueryValueExW(i64 %64, i8* bitcast ([19 x i32]* @.str.5 to i8*), i32* null, i32* null, i32 %67, i64* %4)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %72, %63
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @RegCloseKey(i64 %76)
  br label %78

78:                                               ; preds = %75, %56
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*) #1

declare dso_local i64 @SetupDiOpenDevRegKey(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @RegQueryValueExW(i64, i8*, i32*, i32*, i32, i64*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @RegCloseKey(i64) #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
