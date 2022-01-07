; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pnpdump/extr_pnpdump.c_GetPnpKey.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pnpdump/extr_pnpdump.c_GetPnpKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"HARDWARE\\DESCRIPTION\\System\\MultifunctionAdapter\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Identifier\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"pnp bios\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetPnpKey(i64* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %11 = load i64*, i64** %3, align 8
  store i64 0, i64* %11, align 8
  %12 = load i64, i64* @HKEY_LOCAL_MACHINE, align 8
  %13 = call i64 @RegOpenKey(i64 %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64* %6)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %67

18:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %64, %18
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %25 = call i64 @RegOpenKey(i64 %23, i8* %24, i64* %7)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @RegCloseKey(i64 %30)
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %2, align 8
  br label %67

33:                                               ; preds = %19
  store i32 80, i32* %10, align 4
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %36 = ptrtoint i8* %35 to i32
  %37 = call i64 @RegQueryValueEx(i64 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %9, i32 %36, i32* %10)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @RegCloseKey(i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @RegCloseKey(i64 %44)
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* %2, align 8
  br label %67

47:                                               ; preds = %33
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @REG_SZ, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %53 = call i64 @stricmp(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = load i64*, i64** %3, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @RegCloseKey(i64 %58)
  %60 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %60, i64* %2, align 8
  br label %67

61:                                               ; preds = %51, %47
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @RegCloseKey(i64 %62)
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %19

67:                                               ; preds = %55, %41, %29, %17
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i64 @RegOpenKey(i64, i8*, i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @RegCloseKey(i64) #1

declare dso_local i64 @RegQueryValueEx(i64, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
