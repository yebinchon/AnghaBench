; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infget.c_InfpGetData.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infget.c_InfpGetData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@INF_STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@INF_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfpGetData(i32* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32**, i32*** %7, align 8
  %13 = icmp eq i32** %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @INF_STATUS_INVALID_PARAMETER, align 4
  store i32 %16, i32* %4, align 4
  br label %47

17:                                               ; preds = %11
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.TYPE_5__* @InfpGetLineForContext(i32* %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %8, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = icmp ne i32** %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32**, i32*** %6, align 8
  store i32* %25, i32** %26, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32**, i32*** %7, align 8
  %29 = icmp ne i32** %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp eq %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32**, i32*** %7, align 8
  store i32* null, i32** %36, align 8
  br label %44

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32**, i32*** %7, align 8
  store i32* %42, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %35
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i32, i32* @INF_STATUS_SUCCESS, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local %struct.TYPE_5__* @InfpGetLineForContext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
