; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseSystemLiteral.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseSystemLiteral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@XML_PARSER_BUFFER_SIZE = common dso_local global i32 0, align 4
@SHRINK = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@NEXT = common dso_local global i32 0, align 4
@XML_ERR_LITERAL_NOT_STARTED = common dso_local global i32 0, align 4
@XML_PARSER_SYSTEM_LITERAL = common dso_local global i32 0, align 4
@XML_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_NAME_TOO_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SystemLiteral\00", align 1
@GROW = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i32 0, align 4
@XML_ERR_LITERAL_NOT_FINISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlParseSystemLiteral(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* @XML_PARSER_BUFFER_SIZE, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @SHRINK, align 4
  %18 = load i8, i8* @RAW, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 34
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @NEXT, align 4
  store i32 34, i32* %9, align 4
  br label %34

23:                                               ; preds = %1
  %24 = load i8, i8* @RAW, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 39
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @NEXT, align 4
  store i32 39, i32* %9, align 4
  br label %33

29:                                               ; preds = %23
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = load i32, i32* @XML_ERR_LITERAL_NOT_STARTED, align 4
  %32 = call i32 @xmlFatalErr(%struct.TYPE_5__* %30, i32 %31, i8* null)
  store i32* null, i32** %2, align 8
  br label %171

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i64 @xmlMallocAtomic(i32 %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = call i32 @xmlErrMemory(%struct.TYPE_5__* %44, i32* null)
  store i32* null, i32** %2, align 8
  br label %171

46:                                               ; preds = %34
  %47 = load i32, i32* @XML_PARSER_SYSTEM_LITERAL, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @CUR_CHAR(i32 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %148, %46
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @IS_CHAR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br i1 %61, label %62, label %149

62:                                               ; preds = %60
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 5
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @XML_MAX_NAME_LENGTH, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XML_PARSE_HUGE, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = load i32, i32* @XML_ERR_NAME_TOO_LONG, align 4
  %81 = call i32 @xmlFatalErr(%struct.TYPE_5__* %79, i32 %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @xmlFree(i32* %82)
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  store i32* null, i32** %2, align 8
  br label %171

90:                                               ; preds = %71, %67
  %91 = load i32, i32* %6, align 4
  %92 = mul nsw i32 %91, 2
  store i32 %92, i32* %6, align 4
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = call i64 @xmlRealloc(i32* %93, i32 %97)
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %12, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %90
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @xmlFree(i32* %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %106 = call i32 @xmlErrMemory(%struct.TYPE_5__* %105, i32* null)
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  store i32* null, i32** %2, align 8
  br label %171

113:                                              ; preds = %90
  %114 = load i32*, i32** %12, align 8
  store i32* %114, i32** %4, align 8
  br label %115

115:                                              ; preds = %113, %62
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp sgt i32 %118, 50
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load i32, i32* @GROW, align 4
  store i32 0, i32* %11, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @XML_PARSER_EOF, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @xmlFree(i32* %128)
  store i32* null, i32** %2, align 8
  br label %171

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %115
  %132 = load i32, i32* %8, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @COPY_BUF(i32 %132, i32* %133, i32 %134, i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @NEXTL(i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @CUR_CHAR(i32 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %131
  %144 = load i32, i32* @GROW, align 4
  %145 = load i32, i32* @SHRINK, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @CUR_CHAR(i32 %146)
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %143, %131
  br label %52

149:                                              ; preds = %60
  %150 = load i32*, i32** %4, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 0, i32* %153, align 4
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i64 @IS_CHAR(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %149
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %165 = load i32, i32* @XML_ERR_LITERAL_NOT_FINISHED, align 4
  %166 = call i32 @xmlFatalErr(%struct.TYPE_5__* %164, i32 %165, i8* null)
  br label %169

167:                                              ; preds = %149
  %168 = load i32, i32* @NEXT, align 4
  br label %169

169:                                              ; preds = %167, %163
  %170 = load i32*, i32** %4, align 8
  store i32* %170, i32** %2, align 8
  br label %171

171:                                              ; preds = %169, %127, %102, %78, %43, %29
  %172 = load i32*, i32** %2, align 8
  ret i32* %172
}

declare dso_local i32 @xmlFatalErr(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i64 @xmlMallocAtomic(i32) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @CUR_CHAR(i32) #1

declare dso_local i64 @IS_CHAR(i32) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i64 @xmlRealloc(i32*, i32) #1

declare dso_local i32 @COPY_BUF(i32, i32*, i32, i32) #1

declare dso_local i32 @NEXTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
