; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseNCName.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseNCName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32*, i32*, i32 }

@XML_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_NAME_TOO_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"NCName\00", align 1
@nbParseNCName = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*)* @xmlParseNCName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xmlParseNCName(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 97
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 122
  br i1 %24, label %37, label %25

25:                                               ; preds = %21, %1
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 65
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %31, 90
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %25
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 95
  br i1 %36, label %37, label %164

37:                                               ; preds = %33, %29, %21
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = icmp ult i32* %38, %39
  br i1 %40, label %41, label %164

41:                                               ; preds = %37
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %4, align 8
  br label %44

44:                                               ; preds = %86, %41
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 97
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %50, 122
  br i1 %51, label %80, label %52

52:                                               ; preds = %48, %44
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 65
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %58, 90
  br i1 %59, label %80, label %60

60:                                               ; preds = %56, %52
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 48
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %66, 57
  br i1 %67, label %80, label %68

68:                                               ; preds = %64, %60
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 95
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 45
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 46
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %72, %68, %64, %56, %48
  %81 = load i32*, i32** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = icmp ult i32* %81, %82
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ false, %76 ], [ %83, %80 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %4, align 8
  br label %44

89:                                               ; preds = %84
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = icmp uge i32* %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %165

94:                                               ; preds = %89
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %163

98:                                               ; preds = %94
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 128
  br i1 %101, label %102, label %163

102:                                              ; preds = %98
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = ptrtoint i32* %103 to i64
  %110 = ptrtoint i32* %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 4
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @XML_MAX_NAME_LENGTH, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %102
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @XML_PARSE_HUGE, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = load i32, i32* @XML_ERR_NAME_TOO_LONG, align 4
  %127 = call i32 @xmlFatalErr(%struct.TYPE_8__* %125, i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %168

128:                                              ; preds = %117, %102
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32* @xmlDictLookup(i32 %131, i32* %136, i32 %137)
  store i32* %138, i32** %6, align 8
  %139 = load i32*, i32** %4, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i32* %139, i32** %143, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, %149
  store i32 %155, i32* %153, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %128
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %160 = call i32 @xmlErrMemory(%struct.TYPE_8__* %159, i32* null)
  br label %161

161:                                              ; preds = %158, %128
  %162 = load i32*, i32** %6, align 8
  store i32* %162, i32** %2, align 8
  br label %168

163:                                              ; preds = %98, %94
  br label %164

164:                                              ; preds = %163, %37, %33
  br label %165

165:                                              ; preds = %164, %93
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %167 = call i32* @xmlParseNCNameComplex(%struct.TYPE_8__* %166)
  store i32* %167, i32** %2, align 8
  br label %168

168:                                              ; preds = %165, %161, %124
  %169 = load i32*, i32** %2, align 8
  ret i32* %169
}

declare dso_local i32 @xmlFatalErr(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32* @xmlDictLookup(i32, i32*, i32) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @xmlParseNCNameComplex(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
