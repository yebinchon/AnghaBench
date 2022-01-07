; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_profile.c_AppendSystemPostfix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/userenv/extr_profile.c_AppendSystemPostfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 37, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 82, i32 111, i32 111, i32 116, i32 37, i32 0], align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Error: %lu\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Error: buffer overflow\0A\00", align 1
@ERROR_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AppendSystemPostfix(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = call i32 @ARRAYSIZE(i32* %14)
  %16 = call i32 @ExpandEnvironmentStringsW(i8* bitcast ([13 x i32]* @.str to i8*), i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %59

22:                                               ; preds = %2
  %23 = call i32 @_wcsupr(i32* %14)
  %24 = getelementptr inbounds i32, i32* %14, i64 2
  store i32 46, i32* %24, align 8
  %25 = getelementptr inbounds i32, i32* %14, i64 2
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  store i32* %26, i32** %9, align 8
  br label %27

27:                                               ; preds = %37, %22
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32*, i32** %9, align 8
  store i32 95, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  br label %27

40:                                               ; preds = %27
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @wcslen(i32* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @wcslen(i32* %43)
  %45 = add nsw i64 %42, %44
  %46 = add nsw i64 %45, 1
  %47 = load i64, i64* %5, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @ERROR_BUFFER_OVERFLOW, align 4
  %52 = call i32 @SetLastError(i32 %51)
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %59

54:                                               ; preds = %40
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @wcscat(i32* %55, i32* %56)
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %54, %49, %18
  %60 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ExpandEnvironmentStringsW(i8*, i32*, i32) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @DPRINT1(i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @_wcsupr(i32*) #2

declare dso_local i64 @wcslen(i32*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @wcscat(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
