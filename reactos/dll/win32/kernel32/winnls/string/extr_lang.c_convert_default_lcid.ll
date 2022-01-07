; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lang.c_convert_default_lcid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lang.c_convert_default_lcid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOCALE_SYSTEM_DEFAULT = common dso_local global i64 0, align 8
@LOCALE_USER_DEFAULT = common dso_local global i64 0, align 8
@LOCALE_NEUTRAL = common dso_local global i64 0, align 8
@lcid_LC_COLLATE = common dso_local global i64 0, align 8
@lcid_LC_CTYPE = common dso_local global i64 0, align 8
@lcid_LC_MONETARY = common dso_local global i64 0, align 8
@lcid_LC_NUMERIC = common dso_local global i64 0, align 8
@lcid_LC_TIME = common dso_local global i64 0, align 8
@lcid_LC_PAPER = common dso_local global i64 0, align 8
@lcid_LC_MEASUREMENT = common dso_local global i64 0, align 8
@lcid_LC_TELEPHONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @convert_default_lcid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_default_lcid(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @LOCALE_SYSTEM_DEFAULT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @LOCALE_USER_DEFAULT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @LOCALE_NEUTRAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13, %9, %2
  store i64 0, i64* %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 65535
  switch i32 %19, label %36 [
    i32 132, label %20
    i32 223, label %22
    i32 215, label %22
    i32 214, label %22
    i32 213, label %22
    i32 212, label %22
    i32 211, label %22
    i32 219, label %24
    i32 218, label %24
    i32 206, label %24
    i32 201, label %24
    i32 199, label %24
    i32 198, label %24
    i32 197, label %24
    i32 194, label %24
    i32 193, label %24
    i32 192, label %24
    i32 166, label %24
    i32 155, label %24
    i32 153, label %24
    i32 152, label %24
    i32 138, label %24
    i32 137, label %24
    i32 210, label %26
    i32 209, label %26
    i32 204, label %26
    i32 200, label %26
    i32 157, label %26
    i32 156, label %26
    i32 136, label %26
    i32 135, label %26
    i32 134, label %26
    i32 131, label %26
    i32 222, label %28
    i32 221, label %28
    i32 217, label %28
    i32 216, label %28
    i32 208, label %28
    i32 207, label %28
    i32 205, label %28
    i32 202, label %28
    i32 196, label %28
    i32 191, label %28
    i32 190, label %28
    i32 189, label %28
    i32 188, label %28
    i32 187, label %28
    i32 186, label %28
    i32 185, label %28
    i32 184, label %28
    i32 183, label %28
    i32 182, label %28
    i32 181, label %28
    i32 180, label %28
    i32 179, label %28
    i32 174, label %28
    i32 173, label %28
    i32 172, label %28
    i32 171, label %28
    i32 170, label %28
    i32 169, label %28
    i32 168, label %28
    i32 167, label %28
    i32 178, label %28
    i32 177, label %28
    i32 176, label %28
    i32 175, label %28
    i32 165, label %28
    i32 164, label %28
    i32 163, label %28
    i32 162, label %28
    i32 161, label %28
    i32 160, label %28
    i32 159, label %28
    i32 158, label %28
    i32 154, label %28
    i32 151, label %28
    i32 146, label %28
    i32 145, label %28
    i32 144, label %28
    i32 143, label %28
    i32 142, label %28
    i32 141, label %28
    i32 140, label %28
    i32 139, label %28
    i32 150, label %28
    i32 149, label %28
    i32 148, label %28
    i32 147, label %28
    i32 133, label %28
    i32 130, label %28
    i32 129, label %28
    i32 128, label %28
    i32 195, label %30
    i32 203, label %32
    i32 220, label %34
  ]

20:                                               ; preds = %17
  %21 = load i64, i64* @lcid_LC_COLLATE, align 8
  store i64 %21, i64* %5, align 8
  br label %36

22:                                               ; preds = %17, %17, %17, %17, %17, %17
  %23 = load i64, i64* @lcid_LC_CTYPE, align 8
  store i64 %23, i64* %5, align 8
  br label %36

24:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  %25 = load i64, i64* @lcid_LC_MONETARY, align 8
  store i64 %25, i64* %5, align 8
  br label %36

26:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  %27 = load i64, i64* @lcid_LC_NUMERIC, align 8
  store i64 %27, i64* %5, align 8
  br label %36

28:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  %29 = load i64, i64* @lcid_LC_TIME, align 8
  store i64 %29, i64* %5, align 8
  br label %36

30:                                               ; preds = %17
  %31 = load i64, i64* @lcid_LC_PAPER, align 8
  store i64 %31, i64* %5, align 8
  br label %36

32:                                               ; preds = %17
  %33 = load i64, i64* @lcid_LC_MEASUREMENT, align 8
  store i64 %33, i64* %5, align 8
  br label %36

34:                                               ; preds = %17
  %35 = load i64, i64* @lcid_LC_TELEPHONE, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %17, %34, %32, %30, %28, %26, %24, %22, %20
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41, %13
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @ConvertDefaultLocale(i64 %43)
  ret i64 %44
}

declare dso_local i64 @ConvertDefaultLocale(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
