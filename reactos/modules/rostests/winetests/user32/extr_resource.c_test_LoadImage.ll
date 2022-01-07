; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_resource.c_test_LoadImage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_resource.c_test_LoadImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Could not load a bitmap resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"#100\00", align 1
@RT_BITMAP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"Could not find a bitmap resource with a numeric string\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Could not load a bitmap resource with a numeric string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LoadImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LoadImage() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @GetModuleHandleA(i32* null)
  %4 = call i8* @MAKEINTRESOURCEA(i32 100)
  %5 = call i32* @LoadBitmapA(i32 %3, i8* %4)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %1, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @DeleteObject(i32* %13)
  br label %15

15:                                               ; preds = %12, %0
  %16 = call i32 @GetModuleHandleA(i32* null)
  %17 = load i64, i64* @RT_BITMAP, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32* @FindResourceA(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @GetModuleHandleA(i32* null)
  %25 = call i32* @LoadBitmapA(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %1, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32*, i32** %1, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @DeleteObject(i32* %33)
  br label %35

35:                                               ; preds = %32, %15
  ret void
}

declare dso_local i32* @LoadBitmapA(i32, i8*) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i8* @MAKEINTRESOURCEA(i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32* @FindResourceA(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
