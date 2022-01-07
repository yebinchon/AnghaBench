; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmenum.c_create_file_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmenum.c_create_file_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@FILE_BEGIN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @create_file_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_file_data(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GENERIC_WRITE, align 4
  %12 = load i32, i32* @CREATE_ALWAYS, align 4
  %13 = call i64 @CreateFileA(i32 %10, i32 %11, i32 0, i32* null, i32 %12, i32 0, i32* null)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @strlen(i32 %22)
  %24 = call i32 @WriteFile(i64 %20, i32 %21, i32 %23, i64* %9, i32* null)
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @FILE_BEGIN, align 4
  %31 = call i32 @SetFilePointer(i64 %28, i64 %29, i32* null, i32 %30)
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @SetEndOfFile(i64 %32)
  br label %34

34:                                               ; preds = %27, %19
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @CloseHandle(i64 %35)
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %17
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @WriteFile(i64, i32, i32, i64*, i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @SetFilePointer(i64, i64, i32*, i32) #1

declare dso_local i32 @SetEndOfFile(i64) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
