; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_create_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_msi.c_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failure to open file %s\0A\00", align 1
@FILE_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_file(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @GENERIC_WRITE, align 4
  %11 = load i32, i32* @CREATE_ALWAYS, align 4
  %12 = call i64 @CreateFileA(i32 %9, i32 %10, i32 0, i32* null, i32 %11, i32 0, i32* null)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @strlen(i32 %21)
  %23 = call i32 @WriteFile(i64 %19, i32 %20, i32 %22, i64* %8, i32* null)
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* @FILE_BEGIN, align 4
  %30 = call i32 @SetFilePointer(i64 %27, i64 %28, i32* null, i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @SetEndOfFile(i64 %31)
  br label %33

33:                                               ; preds = %26, %3
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @CloseHandle(i64 %34)
  ret void
}

declare dso_local i64 @CreateFileA(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

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
