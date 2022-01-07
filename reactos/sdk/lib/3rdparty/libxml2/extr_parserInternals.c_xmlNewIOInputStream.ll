; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parserInternals.c_xmlNewIOInputStream.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parserInternals.c_xmlNewIOInputStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32 }

@xmlParserDebugEntities = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"new input from I/O\0A\00", align 1
@XML_CHAR_ENCODING_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @xmlNewIOInputStream(i32 %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %46

12:                                               ; preds = %3
  %13 = load i64, i64* @xmlParserDebugEntities, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @xmlGenericErrorContext, align 4
  %17 = call i32 @xmlGenericError(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.TYPE_7__* @xmlNewInputStream(i32 %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = icmp eq %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %46

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = call i32 @xmlBufResetInput(i32 %34, %struct.TYPE_7__* %35)
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @XML_CHAR_ENCODING_NONE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @xmlSwitchEncoding(i32 %41, i64 %42)
  br label %44

44:                                               ; preds = %40, %24
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %4, align 8
  br label %46

46:                                               ; preds = %44, %23, %11
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %47
}

declare dso_local i32 @xmlGenericError(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @xmlNewInputStream(i32) #1

declare dso_local i32 @xmlBufResetInput(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @xmlSwitchEncoding(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
