; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonEachComputePath.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonEachComputePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@JSON_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@JSON_OBJECT = common dso_local global i64 0, align 8
@JNODE_LABEL = common dso_local global i32 0, align 4
@JSON_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c".%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i64)* @jsonEachComputePath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonEachComputePath(%struct.TYPE_9__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @jsonAppendChar(i32* %13, i8 signext 36)
  br label %96

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %9, align 8
  call void @jsonEachComputePath(%struct.TYPE_9__* %23, i32* %24, i64 %25)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %30
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %7, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %36
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %8, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @JSON_ARRAY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %15
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i32*, i8*, i32, ...) @jsonPrintf(i32 30, i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %96

50:                                               ; preds = %15
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @JSON_OBJECT, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @JNODE_LABEL, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 -1
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %7, align 8
  br label %67

67:                                               ; preds = %64, %50
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @JSON_STRING, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @JNODE_LABEL, align 4
  %79 = and i32 %77, %78
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 2
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  %95 = call i32 (i32, i32*, i8*, i32, ...) @jsonPrintf(i32 %84, i32* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %89, i64 %94)
  br label %96

96:                                               ; preds = %12, %67, %43
  ret void
}

declare dso_local i32 @jsonAppendChar(i32*, i8 signext) #1

declare dso_local i32 @jsonPrintf(i32, i32*, i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
