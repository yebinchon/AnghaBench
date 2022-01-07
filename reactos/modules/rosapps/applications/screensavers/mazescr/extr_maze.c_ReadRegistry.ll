; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/mazescr/extr_maze.c_ReadRegistry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/mazescr/extr_maze.c_ReadRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@registryPath = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@size = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"pre_solve_delay\00", align 1
@pre_solve_delay = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"post_solve_delay\00", align 1
@post_solve_delay = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"solve_delay\00", align 1
@solve_delay = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ReadRegistry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReadRegistry() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = call i32 (...) @SetDefaults()
  %10 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %11 = load i32, i32* @registryPath, align 4
  %12 = load i32, i32* @KEY_READ, align 4
  %13 = call i64 @RegOpenKeyEx(i32 %10, i32 %11, i32 0, i32 %12, i32* %2)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  br label %61

18:                                               ; preds = %0
  store i8* inttoptr (i64 8 to i8*), i8** %4, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = ptrtoint i8** %5 to i32
  %22 = call i64 @RegQueryValueEx(i32 %19, i32 %20, i32* null, i8** %3, i32 %21, i8** %4)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @ERROR_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  store i8* %27, i8** @size, align 8
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %31 = ptrtoint i8** %6 to i32
  %32 = call i64 @RegQueryValueEx(i32 %29, i32 %30, i32* null, i8** %3, i32 %31, i8** %4)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i8*, i8** %6, align 8
  store i8* %37, i8** @pre_solve_delay, align 8
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @_T(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %41 = ptrtoint i8** %7 to i32
  %42 = call i64 @RegQueryValueEx(i32 %39, i32 %40, i32* null, i8** %3, i32 %41, i8** %4)
  store i64 %42, i64* %1, align 8
  %43 = load i64, i64* %1, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i8*, i8** %7, align 8
  store i8* %47, i8** @post_solve_delay, align 8
  br label %48

48:                                               ; preds = %46, %38
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %51 = ptrtoint i8** %8 to i32
  %52 = call i64 @RegQueryValueEx(i32 %49, i32 %50, i32* null, i8** %3, i32 %51, i8** %4)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @ERROR_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i8*, i8** %8, align 8
  store i8* %57, i8** @solve_delay, align 8
  br label %58

58:                                               ; preds = %56, %48
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @RegCloseKey(i32 %59)
  br label %61

61:                                               ; preds = %58, %17
  ret void
}

declare dso_local i32 @SetDefaults(...) #1

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueEx(i32, i32, i32*, i8**, i32, i8**) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
