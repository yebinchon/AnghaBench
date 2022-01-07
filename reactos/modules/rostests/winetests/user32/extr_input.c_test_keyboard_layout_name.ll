; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_input.c_test_keyboard_layout_name.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_input.c_test_keyboard_layout_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KL_NAMELENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@ERROR_NOACCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"GetKeyboardLayoutNameA failed %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"00000409\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"expected 00000409, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_keyboard_layout_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_keyboard_layout_name() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @KL_NAMELENGTH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = call i32 @SetLastError(i32 -559038737)
  %10 = call i32 @GetKeyboardLayoutNameW(i32* null)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %1, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i8* (...) @GetLastError()
  %18 = load i64, i64* @ERROR_NOACCESS, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = icmp eq i8* %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i8* (...) @GetLastError()
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i64 @GetKeyboardLayout(i32 0)
  %25 = icmp ne i64 %24, 67699721
  br i1 %25, label %26, label %27

26:                                               ; preds = %0
  store i32 1, i32* %4, align 4
  br label %38

27:                                               ; preds = %0
  %28 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %28, align 16
  %29 = call i32 @GetKeyboardLayoutNameA(i8* %8)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i8* (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %8)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %27, %26
  %39 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %42 [
    i32 0, label %41
    i32 1, label %41
  ]

41:                                               ; preds = %38, %38
  ret void

42:                                               ; preds = %38
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @GetKeyboardLayoutNameW(i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i8* @GetLastError(...) #2

declare dso_local i64 @GetKeyboardLayout(i32) #2

declare dso_local i32 @GetKeyboardLayoutNameA(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
