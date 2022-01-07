; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCreateEntityParserCtxtInternal.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCreateEntityParserCtxtInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, i32*, i32*, %struct.TYPE_8__*)* @xmlCreateEntityParserCtxtInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @xmlCreateEntityParserCtxtInternal(i32* %0, i32* %1, i32* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i8* null, i8** %12, align 8
  %14 = call %struct.TYPE_8__* (...) @xmlNewParserCtxt()
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %10, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %130

18:                                               ; preds = %4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %21, %18
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* @xmlBuildURI(i32* %39, i32* %40)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %84

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = load i32*, i32** %7, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = call i32* @xmlLoadExternalEntity(i8* %46, i8* %48, %struct.TYPE_8__* %49)
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = call i32 @xmlFreeParserCtxt(%struct.TYPE_8__* %54)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %130

56:                                               ; preds = %44
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @inputPush(%struct.TYPE_8__* %57, i32* %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load i8*, i8** %12, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32*, i32** %6, align 8
  %69 = bitcast i32* %68 to i8*
  %70 = call i8* @xmlParserGetDirectory(i8* %69)
  store i8* %70, i8** %12, align 8
  br label %71

71:                                               ; preds = %67, %64, %56
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i8*, i8** %12, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i8*, i8** %12, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %76, %71
  br label %128

84:                                               ; preds = %38
  %85 = load i32*, i32** %13, align 8
  %86 = bitcast i32* %85 to i8*
  %87 = load i32*, i32** %7, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %90 = call i32* @xmlLoadExternalEntity(i8* %86, i8* %88, %struct.TYPE_8__* %89)
  store i32* %90, i32** %11, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @xmlFree(i32* %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %97 = call i32 @xmlFreeParserCtxt(%struct.TYPE_8__* %96)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %130

98:                                               ; preds = %84
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @inputPush(%struct.TYPE_8__* %99, i32* %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = load i8*, i8** %12, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32*, i32** %13, align 8
  %111 = bitcast i32* %110 to i8*
  %112 = call i8* @xmlParserGetDirectory(i8* %111)
  store i8* %112, i8** %12, align 8
  br label %113

113:                                              ; preds = %109, %106, %98
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i8*, i8** %12, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i8*, i8** %12, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %121, %118, %113
  %126 = load i32*, i32** %13, align 8
  %127 = call i32 @xmlFree(i32* %126)
  br label %128

128:                                              ; preds = %125, %83
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %129, %struct.TYPE_8__** %5, align 8
  br label %130

130:                                              ; preds = %128, %93, %53, %17
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %131
}

declare dso_local %struct.TYPE_8__* @xmlNewParserCtxt(...) #1

declare dso_local i32* @xmlBuildURI(i32*, i32*) #1

declare dso_local i32* @xmlLoadExternalEntity(i8*, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @xmlFreeParserCtxt(%struct.TYPE_8__*) #1

declare dso_local i32 @inputPush(%struct.TYPE_8__*, i32*) #1

declare dso_local i8* @xmlParserGetDirectory(i8*) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
