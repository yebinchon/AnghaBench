; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wshom/extr_wshom.c_delete_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wshom/extr_wshom.c_delete_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@KEY_ENUMERATE_SUB_KEYS = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @delete_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @delete_key(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  br label %13

13:                                               ; preds = %33, %1
  %14 = load i32, i32* %3, align 4
  %15 = trunc i64 %10 to i32
  %16 = call i64 @RegEnumKeyA(i32 %14, i32 0, i8* %12, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @KEY_ENUMERATE_SUB_KEYS, align 4
  %22 = call i64 @RegOpenKeyExA(i32 %20, i8* %12, i32 0, i32 %21, i32* %7)
  store i64 %22, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @delete_key(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @RegCloseKey(i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29
  br label %13

34:                                               ; preds = %32, %13
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @RegDeleteKeyA(i32 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %38
  %44 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i64, i64* %2, align 8
  ret i64 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegEnumKeyA(i32, i32, i8*, i32) #2

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
