; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_modify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_10__*, i32, i32*, i32)* }

@.str = private unnamed_addr constant [10 x i8] c"%p %d %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%p %d %p %u - unknown mode\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*, i32, i32*, i32)* @WHERE_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WHERE_modify(%struct.tagMSIVIEW* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tagMSIVIEW*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %15 = bitcast %struct.tagMSIVIEW* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %10, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %11, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %19, i32 %20, i32* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %26, i32* %5, align 4
  br label %79

27:                                               ; preds = %4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %60, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i64 @find_row(%struct.TYPE_8__* %33, i32 %35, i32** %13)
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32*, i32** %13, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %45

44:                                               ; preds = %32
  store i32 -1, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_10__*, i32, i32*, i32)*, i32 (%struct.TYPE_10__*, i32, i32*, i32)** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 %52(%struct.TYPE_10__* %55, i32 %56, i32* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %79

60:                                               ; preds = %27
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %70 [
    i32 132, label %62
    i32 140, label %66
    i32 139, label %66
    i32 138, label %66
    i32 137, label %66
    i32 136, label %66
    i32 134, label %66
    i32 133, label %66
    i32 131, label %66
    i32 130, label %66
    i32 129, label %66
    i32 128, label %66
    i32 135, label %68
  ]

62:                                               ; preds = %60
  %63 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @join_modify_update(%struct.tagMSIVIEW* %63, i32* %64)
  store i32 %65, i32* %5, align 4
  br label %79

66:                                               ; preds = %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60
  %67 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %67, i32* %12, align 4
  br label %77

68:                                               ; preds = %60
  %69 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  store i32 %69, i32* %12, align 4
  br label %77

70:                                               ; preds = %60
  %71 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.tagMSIVIEW* %71, i32 %72, i32* %73, i32 %74)
  %76 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %70, %68, %66
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %62, %45, %25
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i64 @find_row(%struct.TYPE_8__*, i32, i32**) #1

declare dso_local i32 @join_modify_update(%struct.tagMSIVIEW*, i32*) #1

declare dso_local i32 @WARN(i8*, %struct.tagMSIVIEW*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
