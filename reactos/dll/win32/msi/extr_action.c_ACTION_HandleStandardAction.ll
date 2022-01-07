; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ACTION_HandleStandardAction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ACTION_HandleStandardAction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64 (%struct.TYPE_8__*)*, i64, i32* }
%struct.TYPE_8__ = type { i32 }

@ERROR_FUNCTION_NOT_CALLED = common dso_local global i64 0, align 8
@StandardActions = common dso_local global %struct.TYPE_9__* null, align 8
@msi_hInstance = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"scheduling rollback action\0A\00", align 1
@SCRIPT_ROLLBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unhandled standard action %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32)* @ACTION_HandleStandardAction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ACTION_HandleStandardAction(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [100 x i32], align 16
  %8 = alloca [100 x i32], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @ERROR_FUNCTION_NOT_CALLED, align 8
  store i64 %9, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %120, %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @StandardActions, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %123

17:                                               ; preds = %10
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @StandardActions, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @strcmpW(i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %120, label %26

26:                                               ; preds = %17
  %27 = bitcast [100 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 400, i1 false)
  %28 = bitcast [100 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 400, i1 false)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @StandardActions, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load i32, i32* @msi_hInstance, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @StandardActions, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = ptrtoint [100 x i32]* %7 to i32
  %43 = call i32 @LoadStringW(i32 %36, i64 %41, i32 %42, i32 100)
  br label %44

44:                                               ; preds = %35, %26
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @StandardActions, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load i32, i32* @msi_hInstance, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @StandardActions, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = ptrtoint [100 x i32]* %8 to i32
  %59 = call i32 @LoadStringW(i32 %52, i64 %57, i32 %58, i32 100)
  br label %60

60:                                               ; preds = %51, %44
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0
  %64 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0
  %65 = call i32 @ui_actionstart(%struct.TYPE_8__* %61, i32 %62, i32* %63, i32* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @StandardActions, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %69, align 8
  %71 = icmp ne i64 (%struct.TYPE_8__*)* %70, null
  br i1 %71, label %72, label %114

72:                                               ; preds = %60
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @TRUE, align 4
  %76 = call i32 @ui_actioninfo(%struct.TYPE_8__* %73, i32 %74, i32 %75, i32 0)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** @StandardActions, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = call i64 %81(%struct.TYPE_8__* %82)
  store i64 %83, i64* %5, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @ui_actioninfo(%struct.TYPE_8__* %84, i32 %85, i32 %86, i32 %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @StandardActions, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %72
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %98
  %104 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = load i32, i32* @SCRIPT_ROLLBACK, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** @StandardActions, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @msi_schedule_action(%struct.TYPE_8__* %105, i32 %106, i64 %111)
  br label %113

113:                                              ; preds = %103, %98, %72
  br label %119

114:                                              ; preds = %60
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @debugstr_w(i32 %115)
  %117 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %114, %113
  br label %123

120:                                              ; preds = %17
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %6, align 8
  br label %10

123:                                              ; preds = %119, %10
  %124 = load i64, i64* %5, align 8
  ret i64 %124
}

declare dso_local i32 @strcmpW(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @LoadStringW(i32, i64, i32, i32) #1

declare dso_local i32 @ui_actionstart(%struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i32 @ui_actioninfo(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @msi_schedule_action(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
