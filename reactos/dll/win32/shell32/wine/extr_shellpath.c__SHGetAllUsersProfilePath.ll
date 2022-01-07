; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shellpath.c__SHGetAllUsersProfilePath.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shellpath.c__SHGetAllUsersProfilePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"0x%08x,0x%02x,%p\0A\00", align 1
@CSIDL_Data = common dso_local global %struct.TYPE_3__* null, align 8
@E_INVALIDARG = common dso_local global i32 0, align 4
@CSIDL_Type_AllUsers = common dso_local global i64 0, align 8
@SHGFP_TYPE_DEFAULT = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"returning 0x%08x (output path is %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @_SHGetAllUsersProfilePath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_SHGetAllUsersProfilePath(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 (i8*, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %10, i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CSIDL_Data, align 8
  %15 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %14)
  %16 = icmp uge i64 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %18, i32* %4, align 4
  br label %69

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CSIDL_Data, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CSIDL_Type_AllUsers, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %28, i32* %4, align 4
  br label %69

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %33, i32* %4, align 4
  br label %69

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SHGFP_TYPE_DEFAULT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 (i64, i64, ...) @_SHGetDefaultValue(i64 %40, i64 %42)
  store i32 %43, i32* %8, align 4
  br label %62

44:                                               ; preds = %34
  %45 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CSIDL_Data, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i32, i32*, i32, ...) @_SHGetUserShellFolderPath(i32 %45, i32* null, i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @FAILED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 (i64, i64, ...) @_SHGetDefaultValue(i64 %57, i64 %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %56, %44
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @debugstr_w(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = call i32 (i8*, i32, i64, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %62, %32, %27, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @TRACE(i8*, i32, i64, ...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @_SHGetDefaultValue(i64, i64, ...) #1

declare dso_local i32 @_SHGetUserShellFolderPath(i32, i32*, i32, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
