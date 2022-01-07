; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_get_elem_script_host.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_get_elem_script_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Could not find script GUID\0A\00", align 1
@CLSID_JScript = common dso_local global i32 0, align 4
@SCRIPTMODE_ACTIVESCRIPT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Ignoring JScript\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, %struct.TYPE_11__*)* @get_elem_script_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_elem_script_host(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @get_script_guid(%struct.TYPE_12__* %7, i32 %10, i32* %6)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = call i64 @IsEqualGUID(i32* @CLSID_JScript, i32* %6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SCRIPTMODE_ACTIVESCRIPT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24, %18
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %38

35:                                               ; preds = %24, %15
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = call i32* @get_script_host(%struct.TYPE_12__* %36, i32* %6)
  store i32* %37, i32** %3, align 8
  br label %38

38:                                               ; preds = %35, %33, %13
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local i32 @get_script_guid(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32* @get_script_host(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
