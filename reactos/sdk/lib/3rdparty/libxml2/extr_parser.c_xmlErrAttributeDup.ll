; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlErrAttributeDup.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlErrAttributeDup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i64, i32 }

@XML_PARSER_EOF = common dso_local global i64 0, align 8
@XML_ERR_ATTRIBUTE_REDEFINED = common dso_local global i32 0, align 4
@XML_FROM_PARSER = common dso_local global i32 0, align 4
@XML_ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Attribute %s redefined\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Attribute %s:%s redefined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @xmlErrAttributeDup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlErrAttributeDup(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XML_PARSER_EOF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %66

21:                                               ; preds = %14, %9, %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @XML_ERR_ATTRIBUTE_REDEFINED, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32*, i32** %5, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = load i32, i32* @XML_FROM_PARSER, align 4
  %34 = load i32, i32* @XML_ERR_ATTRIBUTE_REDEFINED, align 4
  %35 = load i32, i32* @XML_ERR_FATAL, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 (i32*, i32*, i32*, %struct.TYPE_4__*, i32*, i32, i32, i32, i32*, i32, i8*, i8*, i32*, i32, i32, i8*, i32*, ...) @__xmlRaiseError(i32* null, i32* null, i32* null, %struct.TYPE_4__* %32, i32* null, i32 %33, i32 %34, i32 %35, i32* null, i32 0, i8* %37, i8* null, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %38)
  br label %52

40:                                               ; preds = %28
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = load i32, i32* @XML_FROM_PARSER, align 4
  %43 = load i32, i32* @XML_ERR_ATTRIBUTE_REDEFINED, align 4
  %44 = load i32, i32* @XML_ERR_FATAL, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = load i32*, i32** %6, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 (i32*, i32*, i32*, %struct.TYPE_4__*, i32*, i32, i32, i32, i32*, i32, i8*, i8*, i32*, i32, i32, i8*, i32*, ...) @__xmlRaiseError(i32* null, i32* null, i32* null, %struct.TYPE_4__* %41, i32* null, i32 %42, i32 %43, i32 %44, i32* null, i32 0, i8* %46, i8* %48, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %49, i32* %50)
  br label %52

52:                                               ; preds = %40, %31
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %55
  br label %66

66:                                               ; preds = %20, %65, %52
  ret void
}

declare dso_local i32 @__xmlRaiseError(i32*, i32*, i32*, %struct.TYPE_4__*, i32*, i32, i32, i32, i32*, i32, i8*, i8*, i32*, i32, i32, i8*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
