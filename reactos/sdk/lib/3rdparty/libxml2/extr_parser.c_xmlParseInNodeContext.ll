; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseInNodeContext.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseInNodeContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*, %struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_30__* }
%struct.TYPE_28__ = type { %struct.TYPE_28__*, i32*, i32* }
%struct.TYPE_30__ = type { i32, i32*, i32* }

@XML_ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@HTML_PARSE_NOIMPLIED = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@XML_ERR_EXTRA_CONTENT = common dso_local global i32 0, align 4
@XML_ERR_NOT_WELL_BALANCED = common dso_local global i32 0, align 4
@XML_ERR_NO_MEMORY = common dso_local global i64 0, align 8
@XML_ERR_OK = common dso_local global i64 0, align 8
@XML_ERR_UNSUPPORTED_ENCODING = common dso_local global i64 0, align 8
@XML_PARSER_CONTENT = common dso_local global i32 0, align 4
@XML_PARSE_NODICT = common dso_local global i32 0, align 4
@XML_SKIP_IDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xmlParseInNodeContext(%struct.TYPE_29__* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_29__** %4) #0 {
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_29__**, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_29__** %4, %struct.TYPE_29__*** %10, align 8
  %11 = load i64, i64* @XML_ERR_INTERNAL_ERROR, align 8
  ret i64 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
