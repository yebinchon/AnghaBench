; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/test/eh/extr_mwerks_console_OS_X.c_InstallConsole.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/test/eh/extr_mwerks_console_OS_X.c_InstallConsole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32*, i32* }

@__msl_os_x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"System.framework\00", align 1
@noErr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @InstallConsole(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  store i16 -1, i16* %4, align 2
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 2), align 8
  %5 = call i32 @CFSTR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = call i64 @__msl_CreateFrameworkBundleFromName(i32 %5, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 1))
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @noErr, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 1), align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  store i16 0, i16* %4, align 2
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 1), align 8
  %15 = call i32 @CFBundleLoadExecutable(i32* %14)
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 0), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 0), align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 1), align 8
  %20 = call i32 @CFSTR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i64 @CFBundleGetFunctionPointerForName(i32* %19, i32 %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 3), align 8
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 1), align 8
  %24 = call i32 @CFSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i64 @CFBundleGetFunctionPointerForName(i32* %23, i32 %24)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @__msl_os_x, i32 0, i32 2), align 8
  br label %27

27:                                               ; preds = %18, %13
  br label %28

28:                                               ; preds = %27, %10, %1
  %29 = load i16, i16* %4, align 2
  ret i16 %29
}

declare dso_local i64 @__msl_CreateFrameworkBundleFromName(i32, i32**) #1

declare dso_local i32 @CFSTR(i8*) #1

declare dso_local i32 @CFBundleLoadExecutable(i32*) #1

declare dso_local i64 @CFBundleGetFunctionPointerForName(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
