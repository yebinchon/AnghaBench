; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xinput1_3/extr_xinput.c_test_set_state.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xinput1_3/extr_xinput.c_test_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@XUSER_MAX_COUNT = common dso_local global i64 0, align 8
@ERROR_DEVICE_NOT_CONNECTED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"XInputSetState failed with (%d)\0A\00", align 1
@ERROR_BAD_ARGUMENTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"XInputSetState returned (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_state() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %58, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @XUSER_MAX_COUNT, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %61

8:                                                ; preds = %4
  %9 = call i32 @ZeroMemory(%struct.TYPE_4__* %1, i32 8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 32767, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 32767, i32* %11, align 4
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @pXInputSetState(i64 %12, %struct.TYPE_4__* %1)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @ERROR_DEVICE_NOT_CONNECTED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %58

18:                                               ; preds = %8
  %19 = call i32 @Sleep(i32 250)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @pXInputSetState(i64 %22, %struct.TYPE_4__* %1)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %28)
  br i1 true, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 @pXInputEnable(i32 0)
  br label %32

32:                                               ; preds = %30, %18
  %33 = call i32 @Sleep(i32 250)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 65535, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 65535, i32* %35, align 4
  %36 = load i64, i64* %2, align 8
  %37 = call i64 @pXInputSetState(i64 %36, %struct.TYPE_4__* %1)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %42)
  br i1 true, label %44, label %46

44:                                               ; preds = %32
  %45 = call i32 @pXInputEnable(i32 1)
  br label %46

46:                                               ; preds = %44, %32
  %47 = call i32 @Sleep(i32 250)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load i64, i64* %2, align 8
  %51 = call i64 @pXInputSetState(i64 %50, %struct.TYPE_4__* %1)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %46, %17
  %59 = load i64, i64* %2, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %2, align 8
  br label %4

61:                                               ; preds = %4
  %62 = load i64, i64* @XUSER_MAX_COUNT, align 8
  %63 = add nsw i64 %62, 1
  %64 = call i64 @pXInputSetState(i64 %63, %struct.TYPE_4__* %1)
  store i64 %64, i64* %3, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @ERROR_BAD_ARGUMENTS, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  ret void
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @pXInputSetState(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @pXInputEnable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
