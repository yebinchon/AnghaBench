; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_delete_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_delete_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@READ_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to delete key %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i64*)* @delete_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_key(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @get_registry_view(i32* %12)
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i64*, i64** %6, align 8
  %17 = call i64* @strdupW(i64* %16)
  store i64* %17, i64** %8, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %72

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %66, %20
  %22 = load i64*, i64** %8, align 8
  %23 = call i64* @strrchrW(i64* %22, i8 signext 92)
  store i64* %23, i64** %9, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i64*, i64** %9, align 8
  store i64 0, i64* %26, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %66

32:                                               ; preds = %25
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i64*, i64** %8, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @READ_CONTROL, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @open_key(i32* %33, i32 %34, i64* %35, i32 %36, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %69

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  %46 = load i64*, i64** %9, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @RegDeleteKeyExW(i32 %45, i64* %47, i32 %48, i32 0)
  store i64 %49, i64* %11, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @RegCloseKey(i32 %50)
  br label %57

52:                                               ; preds = %21
  %53 = load i32, i32* %5, align 4
  %54 = load i64*, i64** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @RegDeleteKeyExW(i32 %53, i64* %54, i32 %55, i32 0)
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %52, %44
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i64*, i64** %8, align 8
  %62 = call i32 @debugstr_w(i64* %61)
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %62, i64 %63)
  br label %69

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %31
  %67 = load i64*, i64** %9, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %21, label %69

69:                                               ; preds = %66, %60, %43
  %70 = load i64*, i64** %8, align 8
  %71 = call i32 @msi_free(i64* %70)
  br label %72

72:                                               ; preds = %69, %19
  ret void
}

declare dso_local i32 @get_registry_view(i32*) #1

declare dso_local i64* @strdupW(i64*) #1

declare dso_local i64* @strrchrW(i64*, i8 signext) #1

declare dso_local i32 @open_key(i32*, i32, i64*, i32, i32) #1

declare dso_local i64 @RegDeleteKeyExW(i32, i64*, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i32 @msi_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
