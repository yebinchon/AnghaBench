; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_registry.c_CreateUserHive.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_registry.c_CreateUserHive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"CreateUserHive(%S) called\0A\00", align 1
@HKEY_USERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 46, i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 0], align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateUserHive(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @HKEY_USERS, align 4
  %13 = load i32, i32* @KEY_READ, align 4
  %14 = call i64 @RegOpenKeyExW(i32 %12, i8* bitcast ([9 x i32]* @.str.1 to i8*), i32 0, i32 %13, i32** %5)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @SetLastError(i32 %20)
  br label %50

22:                                               ; preds = %2
  %23 = load i32, i32* @HKEY_USERS, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %26 = call i64 @RegOpenKeyExW(i32 %23, i8* %24, i32 0, i32 %25, i32** %6)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @SetLastError(i32 %32)
  br label %50

34:                                               ; preds = %22
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @CopyKey(i32* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %50

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @UpdateUsersShellFolderSettings(i8* %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %50

46:                                               ; preds = %40
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @RegFlushKey(i32* %47)
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %45, %39, %30, %18
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @RegCloseKey(i32* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32*, i32** %5, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @RegCloseKey(i32* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @DPRINT(i8*, i8*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32**) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CopyKey(i32*, i32*) #1

declare dso_local i32 @UpdateUsersShellFolderSettings(i8*, i32*) #1

declare dso_local i32 @RegFlushKey(i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
