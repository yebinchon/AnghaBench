; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infput.c_InfpFindOrAddSection.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infput.c_InfpFindOrAddSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"InfpFindOrAddSection section %S\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"MALLOC() failed\0A\00", align 1
@INF_STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Section not found, creating it\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to create section\0A\00", align 1
@INF_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfpFindOrAddSection(i32 %0, i32 %1, %struct.TYPE_8__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call %struct.TYPE_8__* @MALLOC(i32 4)
  %12 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %12, align 8
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp eq %struct.TYPE_8__* null, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @DPRINT1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @INF_STATUS_NO_MEMORY, align 4
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.TYPE_9__* @InfpFindSection(i32 %27, i32 %28)
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %8, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = icmp eq %struct.TYPE_9__* null, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %19
  %33 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.TYPE_9__* @InfpAddSection(i32 %34, i32 %35)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = icmp eq %struct.TYPE_9__* null, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = call i32 @FREE(%struct.TYPE_8__* %42)
  %44 = load i32, i32* @INF_STATUS_NO_MEMORY, align 4
  store i32 %44, i32* %4, align 4
  br label %54

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @INF_STATUS_SUCCESS, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %46, %39, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @MALLOC(i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local %struct.TYPE_9__* @InfpFindSection(i32, i32) #1

declare dso_local %struct.TYPE_9__* @InfpAddSection(i32, i32) #1

declare dso_local i32 @FREE(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
