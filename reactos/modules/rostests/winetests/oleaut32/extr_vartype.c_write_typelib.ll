; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_write_typelib.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_write_typelib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"file creation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"TYPELIB\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"couldn't find resource\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"couldn't write resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @write_typelib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_typelib(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @GENERIC_READ, align 4
  %11 = load i32, i32* @GENERIC_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CREATE_ALWAYS, align 4
  %14 = call i64 @CreateFileA(i8* %9, i32 %12, i32 0, i32* null, i32 %13, i32 0, i32 0)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %53

24:                                               ; preds = %2
  %25 = call i32 @GetModuleHandleA(i32* null)
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @MAKEINTRESOURCE(i32 %26)
  %28 = trunc i64 %27 to i32
  %29 = call i64 @FindResourceA(i32 %25, i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @GetModuleHandleA(i32* null)
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @LoadResource(i32 %34, i64 %35)
  %37 = call i8* @LockResource(i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @GetModuleHandleA(i32* null)
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @SizeofResource(i32 %40, i64 %41)
  %43 = call i32 @WriteFile(i64 %38, i8* %39, i64 %42, i64* %5, i32* null)
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @GetModuleHandleA(i32* null)
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @SizeofResource(i32 %45, i64 %46)
  %48 = icmp eq i64 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @CloseHandle(i64 %51)
  br label %53

53:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @FindResourceA(i32, i32, i8*) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i64 @MAKEINTRESOURCE(i32) #1

declare dso_local i8* @LockResource(i32) #1

declare dso_local i32 @LoadResource(i32, i64) #1

declare dso_local i32 @WriteFile(i64, i8*, i64, i64*, i32*) #1

declare dso_local i64 @SizeofResource(i32, i64) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
