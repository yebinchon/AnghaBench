; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_get_root_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_get_root_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_root_key.HKCR = internal constant [5 x i8] c"HKCR\00", align 1
@get_root_key.HKCU = internal constant [5 x i8] c"HKCU\00", align 1
@get_root_key.HKLM = internal constant [5 x i8] c"HKLM\00", align 1
@get_root_key.HKU = internal constant [4 x i8] c"HKU\00", align 1
@get_root_key.HKR = internal constant [4 x i8] c"HKR\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@HKEY_USERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @get_root_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_root_key(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmpiW(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_root_key.HKCR, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  store i32 %10, i32* %3, align 4
  br label %36

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strcmpiW(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_root_key.HKCU, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @HKEY_CURRENT_USER, align 4
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strcmpiW(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @get_root_key.HKLM, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcmpiW(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_root_key.HKU, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @HKEY_USERS, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strcmpiW(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_root_key.HKR, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %27, %21, %15, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @strcmpiW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
