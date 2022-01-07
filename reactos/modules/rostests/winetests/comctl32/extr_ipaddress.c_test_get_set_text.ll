; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_ipaddress.c_test_get_set_text.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_ipaddress.c_test_get_set_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"IPAddress control not implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Expected null IP address, got %s\0A\00", align 1
@IPM_SETADDRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Expected 127.0.0.1, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_set_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_set_text() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i32], align 16
  %3 = alloca i32, align 4
  %4 = call i32 (...) @create_ipaddress_control()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %42

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = call i32 @GetWindowTextA(i32 %10, i32* %11, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @expect(i32 7, i32 %15)
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %18 = call i64 @strcmp(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %21)
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @IPM_SETADDRESS, align 4
  %25 = call i32 @MAKEIPADDRESS(i32 127, i32 0, i32 0, i32 1)
  %26 = call i32 @SendMessageA(i32 %23, i32 %24, i32 0, i32 %25)
  %27 = load i32, i32* %1, align 4
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = call i32 @GetWindowTextA(i32 %27, i32* %28, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @expect(i32 9, i32 %32)
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %35 = call i64 @strcmp(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32* %38)
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @DestroyWindow(i32 %40)
  br label %42

42:                                               ; preds = %9, %7
  ret void
}

declare dso_local i32 @create_ipaddress_control(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @GetWindowTextA(i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @MAKEIPADDRESS(i32, i32, i32, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
