; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infput.c_InfpAddLineWithKey.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infput.c_InfpAddLineWithKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@INF_STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to create line\0A\00", align 1
@INF_STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Failed to add key\0A\00", align 1
@INF_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfpAddLineWithKey(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = icmp eq %struct.TYPE_7__* null, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call i32 @DPRINT1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @INF_STATUS_INVALID_PARAMETER, align 4
  store i32 %12, i32* %3, align 4
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = call i32 @InfpGetSectionForContext(%struct.TYPE_7__* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_8__* @InfpAddLine(i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = icmp eq %struct.TYPE_8__* null, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @INF_STATUS_NO_MEMORY, align 4
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %13
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = icmp ne i32* null, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32* @InfpAddKeyToLine(%struct.TYPE_8__* %32, i32* %33)
  %35 = icmp eq i32* null, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @INF_STATUS_NO_MEMORY, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %31, %23
  %40 = load i32, i32* @INF_STATUS_SUCCESS, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %36, %20, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @InfpGetSectionForContext(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @InfpAddLine(i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32* @InfpAddKeyToLine(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
