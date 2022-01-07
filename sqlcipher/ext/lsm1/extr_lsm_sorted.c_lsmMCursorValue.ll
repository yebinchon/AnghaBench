; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmMCursorValue.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmMCursorValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, %struct.TYPE_7__*, i32* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32 }

@CURSOR_SEEK_EQ = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@CURSOR_IGNORE_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmMCursorValue(%struct.TYPE_8__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CURSOR_SEEK_EQ, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @LSM_OK, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  br label %78

31:                                               ; preds = %16
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @assert(i32* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CURSOR_IGNORE_DELETE, align 4
  %41 = and i32 %39, %40
  %42 = call i32* @mcursorLocationOk(%struct.TYPE_8__* %36, i32 %41)
  %43 = call i32 @assert(i32* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @multiCursorGetVal(%struct.TYPE_8__* %44, i32 %49, i8** %7, i32* %8)
  store i32 %50, i32* %9, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %31
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @LSM_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @sortedBlobSet(i32 %62, %struct.TYPE_9__* %64, i8* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %7, align 8
  br label %72

72:                                               ; preds = %57, %53, %31
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @LSM_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %72
  br label %78

78:                                               ; preds = %77, %21
  %79 = load i8*, i8** %7, align 8
  %80 = load i8**, i8*** %5, align 8
  store i8* %79, i8** %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %6, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32* @mcursorLocationOk(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @multiCursorGetVal(%struct.TYPE_8__*, i32, i8**, i32*) #1

declare dso_local i32 @sortedBlobSet(i32, %struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
