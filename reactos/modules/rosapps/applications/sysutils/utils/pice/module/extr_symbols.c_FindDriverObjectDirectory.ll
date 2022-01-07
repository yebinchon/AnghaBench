; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_FindDriverObjectDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_FindDriverObjectDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@pNameSpaceRoot = common dso_local global %struct.TYPE_11__** null, align 8
@OBJECT_HEADER = common dso_local global i32 0, align 4
@Entry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Scanning %S\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i32] [i32 77, i32 111, i32 100, i32 117, i32 108, i32 101, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Found it %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @FindDriverObjectDirectory() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32 (...) @ENTER_FUNC()
  %6 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @pNameSpaceRoot, align 8
  %7 = icmp ne %struct.TYPE_11__** %6, null
  br i1 %7, label %8, label %52

8:                                                ; preds = %0
  %9 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @pNameSpaceRoot, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %52

12:                                               ; preds = %8
  %13 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @pNameSpaceRoot, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %2, align 8
  br label %18

18:                                               ; preds = %47, %12
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @pNameSpaceRoot, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = icmp ne %struct.TYPE_10__* %19, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = load i32, i32* @OBJECT_HEADER, align 4
  %27 = load i32, i32* @Entry, align 4
  %28 = call %struct.TYPE_9__* @CONTAINING_RECORD(%struct.TYPE_10__* %25, i32 %26, i32 %27)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %3, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DPRINT(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @_wcsicmp(i32 %37, i8* bitcast ([8 x i32]* @.str.1 to i8*))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %24
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = call i32* @HEADER_TO_BODY(%struct.TYPE_9__* %41)
  store i32* %42, i32** %4, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = ptrtoint i32* %43 to i32
  %45 = call i32 @DPRINT(i32 %44)
  %46 = load i32*, i32** %4, align 8
  store i32* %46, i32** %1, align 8
  br label %54

47:                                               ; preds = %24
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %2, align 8
  br label %18

51:                                               ; preds = %18
  br label %52

52:                                               ; preds = %51, %8, %0
  %53 = call i32 (...) @LEAVE_FUNC()
  store i32* null, i32** %1, align 8
  br label %54

54:                                               ; preds = %52, %40
  %55 = load i32*, i32** %1, align 8
  ret i32* %55
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local %struct.TYPE_9__* @CONTAINING_RECORD(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i64 @_wcsicmp(i32, i8*) #1

declare dso_local i32* @HEADER_TO_BODY(%struct.TYPE_9__*) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
