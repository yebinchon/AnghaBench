; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_get_classes_root_hkey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_get_classes_root_hkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_WOW64_32KEY = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i64 0, align 8
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@classes_root_hkey = common dso_local global i64 0, align 8
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@get_classes_root_hkey.wow6432nodeW = internal constant [12 x i8] c"Wow6432Node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @get_classes_root_hkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_classes_root_hkey(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @KEY_WOW64_32KEY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @HKEY_CLASSES_ROOT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* @classes_root_hkey, align 8
  store i64 %24, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %30 = and i32 %28, %29
  %31 = or i32 %27, %30
  %32 = call i64 @create_classes_root_hkey(i32 %31)
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %26, %23, %2
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @classes_root_hkey, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* @KEY_WOW64_32KEY, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i64, i64* @classes_root_hkey, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @create_classes_key(i64 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @get_classes_root_hkey.wow6432nodeW, i64 0, i64 0), i32 %49, i64* %4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i64 0, i64* %3, align 8
  br label %57

53:                                               ; preds = %43
  %54 = load i64, i64* %4, align 8
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %53, %39, %36, %33
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i64 @create_classes_root_hkey(i32) #1

declare dso_local i64 @create_classes_key(i64, i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
