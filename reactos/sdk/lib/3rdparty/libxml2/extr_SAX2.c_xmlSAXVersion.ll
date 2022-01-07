; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_SAX2.c_xmlSAXVersion.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_SAX2.c_xmlSAXVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i32, i32, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32 }

@xmlSAX2StartElementNs = common dso_local global i32 0, align 4
@xmlSAX2EndElementNs = common dso_local global i32 0, align 4
@XML_SAX2_MAGIC = common dso_local global i32 0, align 4
@xmlSAX2InternalSubset = common dso_local global i32 0, align 4
@xmlSAX2ExternalSubset = common dso_local global i32 0, align 4
@xmlSAX2IsStandalone = common dso_local global i32 0, align 4
@xmlSAX2HasInternalSubset = common dso_local global i32 0, align 4
@xmlSAX2HasExternalSubset = common dso_local global i32 0, align 4
@xmlSAX2ResolveEntity = common dso_local global i32 0, align 4
@xmlSAX2GetEntity = common dso_local global i32 0, align 4
@xmlSAX2GetParameterEntity = common dso_local global i32 0, align 4
@xmlSAX2EntityDecl = common dso_local global i32 0, align 4
@xmlSAX2AttributeDecl = common dso_local global i32 0, align 4
@xmlSAX2ElementDecl = common dso_local global i32 0, align 4
@xmlSAX2NotationDecl = common dso_local global i32 0, align 4
@xmlSAX2UnparsedEntityDecl = common dso_local global i32 0, align 4
@xmlSAX2SetDocumentLocator = common dso_local global i32 0, align 4
@xmlSAX2StartDocument = common dso_local global i32 0, align 4
@xmlSAX2EndDocument = common dso_local global i32 0, align 4
@xmlSAX2Reference = common dso_local global i32 0, align 4
@xmlSAX2Characters = common dso_local global i8* null, align 8
@xmlSAX2CDataBlock = common dso_local global i32 0, align 4
@xmlSAX2ProcessingInstruction = common dso_local global i32 0, align 4
@xmlSAX2Comment = common dso_local global i32 0, align 4
@xmlParserWarning = common dso_local global i32 0, align 4
@xmlParserError = common dso_local global i8* null, align 8
@xmlSAX2EndElement = common dso_local global i32* null, align 8
@xmlSAX2StartElement = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlSAXVersion(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %105

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 27
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 26
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @xmlSAX2StartElementNs, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 30
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @xmlSAX2EndElementNs, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 29
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 28
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @XML_SAX2_MAGIC, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %29

28:                                               ; preds = %9
  store i32 -1, i32* %3, align 4
  br label %105

29:                                               ; preds = %12
  %30 = load i32, i32* @xmlSAX2InternalSubset, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 25
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @xmlSAX2ExternalSubset, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 24
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @xmlSAX2IsStandalone, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 23
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @xmlSAX2HasInternalSubset, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 22
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @xmlSAX2HasExternalSubset, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 21
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @xmlSAX2ResolveEntity, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 20
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @xmlSAX2GetEntity, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 19
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @xmlSAX2GetParameterEntity, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 18
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @xmlSAX2EntityDecl, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 17
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @xmlSAX2AttributeDecl, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 16
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @xmlSAX2ElementDecl, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 15
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @xmlSAX2NotationDecl, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 14
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @xmlSAX2UnparsedEntityDecl, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 13
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @xmlSAX2SetDocumentLocator, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 12
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @xmlSAX2StartDocument, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 11
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @xmlSAX2EndDocument, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 10
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @xmlSAX2Reference, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** @xmlSAX2Characters, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 8
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @xmlSAX2CDataBlock, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  %87 = load i8*, i8** @xmlSAX2Characters, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 6
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @xmlSAX2ProcessingInstruction, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @xmlSAX2Comment, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @xmlParserWarning, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load i8*, i8** @xmlParserError, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @xmlParserError, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %29, %28, %8
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
