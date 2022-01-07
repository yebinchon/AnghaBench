; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseName.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@GROW = common dso_local global i32 0, align 4
@XML_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_NAME_TOO_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@nbParseName = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlParseName(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @GROW, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 97
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 122
  br i1 %19, label %36, label %20

20:                                               ; preds = %16, %1
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 65
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 90
  br i1 %27, label %36, label %28

28:                                               ; preds = %24, %20
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 95
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 58
  br i1 %35, label %36, label %154

36:                                               ; preds = %32, %28, %24, %16
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %4, align 8
  br label %39

39:                                               ; preds = %81, %36
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 97
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %45, 122
  br i1 %46, label %79, label %47

47:                                               ; preds = %43, %39
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 65
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %53, 90
  br i1 %54, label %79, label %55

55:                                               ; preds = %51, %47
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 48
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %61, 57
  br i1 %62, label %79, label %63

63:                                               ; preds = %59, %55
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 95
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 45
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 58
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 46
  br label %79

79:                                               ; preds = %75, %71, %67, %63, %59, %51, %43
  %80 = phi i1 [ true, %71 ], [ true, %67 ], [ true, %63 ], [ true, %59 ], [ true, %51 ], [ true, %43 ], [ %78, %75 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %4, align 8
  br label %39

84:                                               ; preds = %79
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %153

88:                                               ; preds = %84
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %90, 128
  br i1 %91, label %92, label %153

92:                                               ; preds = %88
  %93 = load i32*, i32** %4, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = ptrtoint i32* %93 to i64
  %100 = ptrtoint i32* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 4
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @XML_MAX_NAME_LENGTH, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %92
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @XML_PARSE_HUGE, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = load i32, i32* @XML_ERR_NAME_TOO_LONG, align 4
  %117 = call i32 @xmlFatalErr(%struct.TYPE_8__* %115, i32 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %157

118:                                              ; preds = %107, %92
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32* @xmlDictLookup(i32 %121, i32* %126, i32 %127)
  store i32* %128, i32** %5, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i32* %129, i32** %133, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, %139
  store i32 %145, i32* %143, align 8
  %146 = load i32*, i32** %5, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %118
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %150 = call i32 @xmlErrMemory(%struct.TYPE_8__* %149, i32* null)
  br label %151

151:                                              ; preds = %148, %118
  %152 = load i32*, i32** %5, align 8
  store i32* %152, i32** %2, align 8
  br label %157

153:                                              ; preds = %88, %84
  br label %154

154:                                              ; preds = %153, %32
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = call i32* @xmlParseNameComplex(%struct.TYPE_8__* %155)
  store i32* %156, i32** %2, align 8
  br label %157

157:                                              ; preds = %154, %151, %114
  %158 = load i32*, i32** %2, align 8
  ret i32* %158
}

declare dso_local i32 @xmlFatalErr(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32* @xmlDictLookup(i32, i32*, i32) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @xmlParseNameComplex(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
