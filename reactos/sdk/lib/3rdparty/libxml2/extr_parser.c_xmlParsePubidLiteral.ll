; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParsePubidLiteral.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParsePubidLiteral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@XML_PARSER_BUFFER_SIZE = common dso_local global i32 0, align 4
@SHRINK = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@NEXT = common dso_local global i32 0, align 4
@XML_ERR_LITERAL_NOT_STARTED = common dso_local global i32 0, align 4
@XML_PARSER_PUBLIC_LITERAL = common dso_local global i32 0, align 4
@CUR = common dso_local global i8 0, align 1
@XML_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_NAME_TOO_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Public ID\00", align 1
@GROW = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i32 0, align 4
@XML_ERR_LITERAL_NOT_FINISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlParsePubidLiteral(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @XML_PARSER_BUFFER_SIZE, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @SHRINK, align 4
  %17 = load i8, i8* @RAW, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 34
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @NEXT, align 4
  store i8 34, i8* %8, align 1
  br label %33

22:                                               ; preds = %1
  %23 = load i8, i8* @RAW, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 39
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @NEXT, align 4
  store i8 39, i8* %8, align 1
  br label %32

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = load i32, i32* @XML_ERR_LITERAL_NOT_STARTED, align 4
  %31 = call i32 @xmlFatalErr(%struct.TYPE_5__* %29, i32 %30, i8* null)
  store i8* null, i8** %2, align 8
  br label %157

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 1
  %37 = trunc i64 %36 to i32
  %38 = call i64 @xmlMallocAtomic(i32 %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = call i32 @xmlErrMemory(%struct.TYPE_5__* %43, i32* null)
  store i8* null, i8** %2, align 8
  br label %157

45:                                               ; preds = %33
  %46 = load i32, i32* @XML_PARSER_PUBLIC_LITERAL, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i8, i8* @CUR, align 1
  store i8 %49, i8* %7, align 1
  br label %50

50:                                               ; preds = %135, %45
  %51 = load i8, i8* %7, align 1
  %52 = call i64 @IS_PUBIDCHAR_CH(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i8, i8* %7, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* %8, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %56, %58
  br label %60

60:                                               ; preds = %54, %50
  %61 = phi i1 [ false, %50 ], [ %59, %54 ]
  br i1 %61, label %62, label %136

62:                                               ; preds = %60
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @XML_MAX_NAME_LENGTH, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XML_PARSE_HUGE, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = load i32, i32* @XML_ERR_NAME_TOO_LONG, align 4
  %81 = call i32 @xmlFatalErr(%struct.TYPE_5__* %79, i32 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @xmlFree(i8* %82)
  store i8* null, i8** %2, align 8
  br label %157

84:                                               ; preds = %71, %67
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 %85, 2
  store i32 %86, i32* %6, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 1
  %91 = trunc i64 %90 to i32
  %92 = call i64 @xmlRealloc(i8* %87, i32 %91)
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %11, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %84
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = call i32 @xmlErrMemory(%struct.TYPE_5__* %97, i32* null)
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @xmlFree(i8* %99)
  store i8* null, i8** %2, align 8
  br label %157

101:                                              ; preds = %84
  %102 = load i8*, i8** %11, align 8
  store i8* %102, i8** %4, align 8
  br label %103

103:                                              ; preds = %101, %62
  %104 = load i8, i8* %7, align 1
  %105 = load i8*, i8** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  store i8 %104, i8* %109, align 1
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %112, 50
  br i1 %113, label %114, label %125

114:                                              ; preds = %103
  %115 = load i32, i32* @GROW, align 4
  store i32 0, i32* %9, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @XML_PARSER_EOF, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 @xmlFree(i8* %122)
  store i8* null, i8** %2, align 8
  br label %157

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %103
  %126 = load i32, i32* @NEXT, align 4
  %127 = load i8, i8* @CUR, align 1
  store i8 %127, i8* %7, align 1
  %128 = load i8, i8* %7, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* @GROW, align 4
  %133 = load i32, i32* @SHRINK, align 4
  %134 = load i8, i8* @CUR, align 1
  store i8 %134, i8* %7, align 1
  br label %135

135:                                              ; preds = %131, %125
  br label %50

136:                                              ; preds = %60
  %137 = load i8*, i8** %4, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8 0, i8* %140, align 1
  %141 = load i8, i8* %7, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* %8, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %142, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %136
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %148 = load i32, i32* @XML_ERR_LITERAL_NOT_FINISHED, align 4
  %149 = call i32 @xmlFatalErr(%struct.TYPE_5__* %147, i32 %148, i8* null)
  br label %152

150:                                              ; preds = %136
  %151 = load i32, i32* @NEXT, align 4
  br label %152

152:                                              ; preds = %150, %146
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load i8*, i8** %4, align 8
  store i8* %156, i8** %2, align 8
  br label %157

157:                                              ; preds = %152, %121, %96, %78, %42, %28
  %158 = load i8*, i8** %2, align 8
  ret i8* %158
}

declare dso_local i32 @xmlFatalErr(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i64 @xmlMallocAtomic(i32) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @IS_PUBIDCHAR_CH(i8 signext) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i64 @xmlRealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
