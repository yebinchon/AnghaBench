; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xinput1_3/extr_xinput.c_test_get_state.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xinput1_3/extr_xinput.c_test_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }

@XUSER_MAX_COUNT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_DEVICE_NOT_CONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s failed with (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"XInputGetState\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"XInputGetStateEx\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Controller %d is not connected\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"-- Results for controller %d --\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"XInputGetState: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"XInputGetStateEx: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"State->dwPacketNumber: %d\0A\00", align 1
@ERROR_BAD_ARGUMENTS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"XInputGetState returned (%d)\0A\00", align 1
@winetest_interactive = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [49 x i8] c"You have 20 seconds to test the joystick freely\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Buttons 0x%04X Triggers %3d/%3d LT %6d/%6d RT %6d/%6d\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Test over...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_state() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = load i32, i32* @XUSER_MAX_COUNT, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %73, %0
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %76

13:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %69, %13
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @XUSER_MAX_COUNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = call i32 @ZeroMemory(%struct.TYPE_7__* %1, i32 32)
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @pXInputGetState(i32 %23, %struct.TYPE_7__* %1)
  store i32 %24, i32* %4, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @pXInputGetStateEx(i32 %26, %struct.TYPE_7__* %1)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ERROR_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ERROR_DEVICE_NOT_CONNECTED, align 4
  %35 = icmp eq i32 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ true, %28 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  %45 = load i32, i32* @ERROR_DEVICE_NOT_CONNECTED, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %69

51:                                               ; preds = %36
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %2, align 4
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  br label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %68 = call i32 @dump_gamepad(%struct.TYPE_8__* %67)
  br label %69

69:                                               ; preds = %63, %48
  %70 = load i32, i32* %2, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %2, align 4
  br label %14

72:                                               ; preds = %14
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %10

76:                                               ; preds = %10
  %77 = load i32, i32* @XUSER_MAX_COUNT, align 4
  %78 = call i32 @pXInputGetState(i32 %77, %struct.TYPE_7__* %1)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @ERROR_BAD_ARGUMENTS, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %4, align 4
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @XUSER_MAX_COUNT, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @pXInputGetState(i32 %86, %struct.TYPE_7__* %1)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @ERROR_BAD_ARGUMENTS, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %4, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %92)
  br i1 true, label %94, label %112

94:                                               ; preds = %76
  %95 = load i32, i32* @XUSER_MAX_COUNT, align 4
  %96 = call i32 @pXInputGetStateEx(i32 %95, %struct.TYPE_7__* %1)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @ERROR_BAD_ARGUMENTS, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %4, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @XUSER_MAX_COUNT, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i32 @pXInputGetStateEx(i32 %104, %struct.TYPE_7__* %1)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @ERROR_BAD_ARGUMENTS, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %4, align 4
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %94, %76
  %113 = load i64, i64* @winetest_interactive, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %164

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @XUSER_MAX_COUNT, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %164

119:                                              ; preds = %115
  %120 = call i32 (...) @GetTickCount()
  store i32 %120, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %8, align 8
  %122 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  br label %123

123:                                              ; preds = %157, %119
  %124 = call i32 @Sleep(i32 100)
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @pXInputGetState(i32 %125, %struct.TYPE_7__* %1)
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %157

132:                                              ; preds = %123
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %7, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %137, i32 %140, i32 %143, i32 %146, i32 %149, i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %132, %131
  %158 = call i32 (...) @GetTickCount()
  %159 = load i32, i32* %6, align 4
  %160 = sub nsw i32 %158, %159
  %161 = icmp slt i32 %160, 20000
  br i1 %161, label %123, label %162

162:                                              ; preds = %157
  %163 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %115, %112
  ret void
}

declare dso_local i32 @pXInputGetStateEx(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pXInputGetState(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @skip(i8*, i32) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @dump_gamepad(%struct.TYPE_8__*) #1

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @Sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
