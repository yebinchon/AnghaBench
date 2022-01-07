; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_get_column_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_get_column_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_11__*, i32, i32*, i32*, i32*, i32*)* }

@.str = private unnamed_addr constant [19 x i8] c"%p %d %p %p %p %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*, i32, i32*, i32*, i32*, i32*)* @WHERE_get_column_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WHERE_get_column_info(%struct.tagMSIVIEW* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tagMSIVIEW*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %8, align 8
  %17 = bitcast %struct.tagMSIVIEW* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %14, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %18, i32 %19, i32* %20, i32* %21, i32* %22, i32* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %30, i32* %7, align 4
  br label %56

31:                                               ; preds = %6
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.TYPE_10__* @find_table(%struct.TYPE_9__* %32, i32 %33, i32* %9)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %15, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %38, i32* %7, align 4
  br label %56

39:                                               ; preds = %31
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_11__*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_11__*, i32, i32*, i32*, i32*, i32*)** %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 %46(%struct.TYPE_11__* %49, i32 %50, i32* %51, i32* %52, i32* %53, i32* %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %39, %37, %29
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_9__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @find_table(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
