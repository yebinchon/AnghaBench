; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/lz32/extr_lzexpand_main.c_full_file_path_name_in_a_CWD.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/lz32/extr_lzexpand_main.c_full_file_path_name_in_a_CWD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"GetCurrentDirectoryA returned %d, GLE=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"GetShortPathNameA returned %d for '%s', GLE=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @full_file_path_name_in_a_CWD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @full_file_path_name_in_a_CWD(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @GetCurrentDirectoryA(i32 %14, i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (...) @GetLastError()
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 (i32, i8*, i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 92
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @lstrcatA(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %3
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @lstrcatA(i8* %37, i8* %38)
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @MAX_PATH, align 4
  %45 = call i32 @memcpy(i8* %13, i8* %43, i32 %44)
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @MAX_PATH, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @GetShortPathNameA(i8* %13, i8* %46, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %7, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 (...) @GetLastError()
  %56 = call i32 (i32, i8*, i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %53, i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %42, %36
  %58 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrentDirectoryA(i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @GetShortPathNameA(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
