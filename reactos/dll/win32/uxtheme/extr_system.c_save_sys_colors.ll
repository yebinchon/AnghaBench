; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_system.c_save_sys_colors.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_system.c_save_sys_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strColorKey = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@NUM_SYS_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@SysColorsNames = common dso_local global i32* null, align 8
@REG_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @save_sys_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_sys_colors(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [13 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @strColorKey, align 4
  %9 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %10 = call i64 @RegCreateKeyExW(i32 %7, i32 %8, i32 0, i32 0, i32 0, i32 %9, i32 0, i32* %4, i32 0)
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NUM_SYS_COLORS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @GetSysColor(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @GetRValue(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @GetGValue(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @GetBValue(i32 %26)
  %28 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** @SysColorsNames, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @REG_SZ, align 4
  %36 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %37 = bitcast i8* %36 to i32*
  %38 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %39 = call i64 @strlen(i8* %38)
  %40 = add nsw i64 %39, 1
  %41 = call i32 @RegSetValueExA(i32 %29, i32 %34, i32 0, i32 %35, i32* %37, i64 %40)
  br label %42

42:                                               ; preds = %18
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %14

45:                                               ; preds = %14
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @RegCloseKey(i32 %46)
  br label %48

48:                                               ; preds = %45, %1
  ret void
}

declare dso_local i64 @RegCreateKeyExW(i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @GetRValue(i32) #1

declare dso_local i32 @GetGValue(i32) #1

declare dso_local i32 @GetBValue(i32) #1

declare dso_local i32 @RegSetValueExA(i32, i32, i32, i32, i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
