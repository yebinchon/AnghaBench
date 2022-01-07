; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_button.c_test_button_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_button.c_test_button_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.button_desc = type { i32*, i32*, i32 }

@test_button_data.styles = internal constant [15 x i32] [i32 131, i32 135, i32 138, i32 140, i32 130, i32 142, i32 141, i32 133, i32 128, i32 139, i32 132, i32 129, i32 134, i32 137, i32 136], align 16
@.str = private unnamed_addr constant [16 x i8] c"TestParentClass\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Test parent\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to create parent window\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to create a button.\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Expected window data.\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Unexpected 'self' field.\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Unexpected 'parent' field.\0A\00", align 1
@WS_CHILD = common dso_local global i32 0, align 4
@BS_NOTIFY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Unexpected 'style' field.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_button_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_button_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.button_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %6 = load i32, i32* @WS_VISIBLE, align 4
  %7 = or i32 %5, %6
  %8 = call i32* @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 100, i32 100, i32 200, i32 200, i32 0, i32 0, i32 0, i32* null)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %72, %0
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([15 x i32], [15 x i32]* @test_button_data.styles, i64 0, i64 0))
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %75

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [15 x i32], [15 x i32]* @test_button_data.styles, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call i32* @create_button(i32 %21, i32* %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @GetWindowLongPtrA(i32* %28, i32 0)
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.button_desc*
  store %struct.button_desc* %31, %struct.button_desc** %3, align 8
  %32 = load %struct.button_desc*, %struct.button_desc** %3, align 8
  %33 = icmp ne %struct.button_desc* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.button_desc*, %struct.button_desc** %3, align 8
  %37 = icmp ne %struct.button_desc* %36, null
  br i1 %37, label %38, label %67

38:                                               ; preds = %17
  %39 = load %struct.button_desc*, %struct.button_desc** %3, align 8
  %40 = getelementptr inbounds %struct.button_desc, %struct.button_desc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = icmp eq i32* %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %46 = load %struct.button_desc*, %struct.button_desc** %3, align 8
  %47 = getelementptr inbounds %struct.button_desc, %struct.button_desc* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = icmp eq i32* %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %53 = load %struct.button_desc*, %struct.button_desc** %3, align 8
  %54 = getelementptr inbounds %struct.button_desc, %struct.button_desc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @WS_CHILD, align 4
  %57 = load i32, i32* @BS_NOTIFY, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %1, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [15 x i32], [15 x i32]* @test_button_data.styles, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %58, %62
  %64 = icmp eq i32 %55, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %38, %17
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @test_bcm_splitinfo(i32* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @DestroyWindow(i32* %70)
  br label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %1, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %13

75:                                               ; preds = %13
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @DestroyWindow(i32* %76)
  ret void
}

declare dso_local i32* @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32* @create_button(i32, i32*) #1

declare dso_local i64 @GetWindowLongPtrA(i32*, i32) #1

declare dso_local i32 @test_bcm_splitinfo(i32*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
