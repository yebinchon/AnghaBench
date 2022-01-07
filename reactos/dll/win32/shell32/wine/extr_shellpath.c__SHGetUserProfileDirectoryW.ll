; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shellpath.c__SHGetUserProfileDirectoryW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shellpath.c__SHGetUserProfileDirectoryW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOKEN_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"_SHGetUserProfileDirectoryW returning %S\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_SHGetUserProfileDirectoryW(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = call i32 (...) @GetCurrentProcess()
  %12 = load i32, i32* @TOKEN_QUERY, align 4
  %13 = call i32 @OpenProcessToken(i32 %11, i32 %12, i64* %4)
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @GetUserProfileDirectoryW(i64 %14, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @CloseHandle(i64 %18)
  br label %34

20:                                               ; preds = %3
  %21 = load i64, i64* %4, align 8
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @GetDefaultUserProfileDirectoryW(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %33

28:                                               ; preds = %20
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @GetUserProfileDirectoryW(i64 %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33, %10
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @OpenProcessToken(i32, i32, i64*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @GetUserProfileDirectoryW(i64, i32, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @GetDefaultUserProfileDirectoryW(i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
