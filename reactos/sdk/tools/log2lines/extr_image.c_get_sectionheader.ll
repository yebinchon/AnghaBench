; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_image.c_get_sectionheader.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_image.c_get_sectionheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@IMAGE_DOS_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Input file is not a PE image.\0A\00", align 1
@summ = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Couldn't find rossym section in executable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_sectionheader(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IMAGE_DOS_MAGIC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %1
  %23 = call i32 @l2l_dbg(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @summ, i32 0, i32 0), align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @summ, i32 0, i32 0), align 4
  store i32* null, i32** %2, align 8
  br label %59

26:                                               ; preds = %17
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = bitcast i8* %32 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %5, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 1
  %36 = bitcast %struct.TYPE_7__* %35 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %6, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = bitcast %struct.TYPE_6__* %40 to i8*
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** %7, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32* @find_rossym_section(%struct.TYPE_7__* %48, i32* %49)
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %26
  %54 = call i32 @l2l_dbg(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @summ, i32 0, i32 0), align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @summ, i32 0, i32 0), align 4
  store i32* null, i32** %2, align 8
  br label %59

57:                                               ; preds = %26
  %58 = load i32*, i32** %8, align 8
  store i32* %58, i32** %2, align 8
  br label %59

59:                                               ; preds = %57, %53, %22
  %60 = load i32*, i32** %2, align 8
  ret i32* %60
}

declare dso_local i32 @l2l_dbg(i32, i8*) #1

declare dso_local i32* @find_rossym_section(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
