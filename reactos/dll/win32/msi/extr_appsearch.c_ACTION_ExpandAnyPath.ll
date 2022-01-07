; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_ExpandAnyPath.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_ExpandAnyPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i64)* @ACTION_ExpandAnyPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ACTION_ExpandAnyPath(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16, %13, %4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  store i8 0, i8* %23, align 1
  br label %24

24:                                               ; preds = %22, %19
  br label %61

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @strchrW(i8* %28, i8 signext 124)
  store i8* %29, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %9, align 8
  br label %36

34:                                               ; preds = %25
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @deformat_string(i32* %37, i8* %38, i8** %10)
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @strlenW(i8* %43)
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %45, 1
  %47 = icmp ugt i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %36
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @msi_free(i8* %49)
  br label %61

51:                                               ; preds = %42
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @lstrcpyW(i8* %52, i8* %53)
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i64 @lstrlenW(i8* %56)
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @msi_free(i8* %59)
  br label %61

61:                                               ; preds = %51, %48, %24
  ret void
}

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @deformat_string(i32*, i8*, i8**) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i32 @msi_free(i8*) #1

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i64 @lstrlenW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
