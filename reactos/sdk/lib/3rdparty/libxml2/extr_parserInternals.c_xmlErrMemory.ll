; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parserInternals.c_xmlErrMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parserInternals.c_xmlErrMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@XML_PARSER_EOF = common dso_local global i64 0, align 8
@XML_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@XML_FROM_PARSER = common dso_local global i32 0, align 4
@XML_ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Memory allocation failed : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XML_PARSER_EOF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %48

19:                                               ; preds = %12, %7, %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* @XML_ERR_NO_MEMORY, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* @XML_PARSER_EOF, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = load i32, i32* @XML_FROM_PARSER, align 4
  %37 = load i32, i32* @XML_ERR_NO_MEMORY, align 4
  %38 = load i32, i32* @XML_ERR_FATAL, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 (i32*, i32*, i32*, %struct.TYPE_4__*, i32*, i32, i32, i32, i32*, i32, i8*, i32*, i32*, i32, i32, i8*, ...) @__xmlRaiseError(i32* null, i32* null, i32* null, %struct.TYPE_4__* %35, i32* null, i32 %36, i32 %37, i32 %38, i32* null, i32 0, i8* %39, i32* null, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %48

42:                                               ; preds = %31
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = load i32, i32* @XML_FROM_PARSER, align 4
  %45 = load i32, i32* @XML_ERR_NO_MEMORY, align 4
  %46 = load i32, i32* @XML_ERR_FATAL, align 4
  %47 = call i32 (i32*, i32*, i32*, %struct.TYPE_4__*, i32*, i32, i32, i32, i32*, i32, i8*, i32*, i32*, i32, i32, i8*, ...) @__xmlRaiseError(i32* null, i32* null, i32* null, %struct.TYPE_4__* %43, i32* null, i32 %44, i32 %45, i32 %46, i32* null, i32 0, i8* null, i32* null, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %18, %42, %34
  ret void
}

declare dso_local i32 @__xmlRaiseError(i32*, i32*, i32*, %struct.TYPE_4__*, i32*, i32, i32, i32, i32*, i32, i8*, i32*, i32*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
