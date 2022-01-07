; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_file.c_create_temp_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_file.c_create_temp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_FLAG_DELETE_ON_CLOSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to create temp file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @create_temp_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_temp_file(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = call i32 @GetTempPathA(i32 %14, i8* %10)
  %16 = call i32 @GetTempFileNameA(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i8* %13)
  %17 = load i32, i32* @GENERIC_READ, align 4
  %18 = load i32, i32* @GENERIC_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CREATE_ALWAYS, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @FILE_FLAG_DELETE_ON_CLOSE, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @CreateFileA(i8* %13, i32 %19, i32 0, i32* null, i32 %20, i32 %23, i32 0)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %36

34:                                               ; preds = %1
  %35 = load i64, i64* %6, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i64 [ 0, %33 ], [ %35, %34 ]
  %38 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %38)
  ret i64 %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @GetTempFileNameA(i8*, i8*, i32, i8*) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @ok(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
