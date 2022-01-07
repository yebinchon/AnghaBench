; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseNCNameComplex.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseNCNameComplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@GROW = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i64 0, align 8
@BASE_PTR = common dso_local global i64 0, align 8
@XML_PARSER_CHUNK_SIZE = common dso_local global i32 0, align 4
@XML_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_NAME_TOO_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"NCName\00", align 1
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@nbParseNCNameComplex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*)* @xmlParseNCNameComplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xmlParseNCNameComplex(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @GROW, align 4
  %10 = load i64, i64* @CUR_PTR, align 8
  %11 = load i64, i64* @BASE_PTR, align 8
  %12 = sub i64 %10, %11
  store i64 %12, i64* %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @CUR_CHAR(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %31, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 62
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @xmlIsNameStartChar(%struct.TYPE_8__* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 58
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %23, %20, %17, %1
  store i32* null, i32** %2, align 8
  br label %143

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %118, %32
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 32
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 62
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 47
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @xmlIsNameChar(%struct.TYPE_8__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 58
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i1 [ false, %42 ], [ %49, %47 ]
  br label %52

52:                                               ; preds = %50, %39, %36, %33
  %53 = phi i1 [ false, %39 ], [ false, %36 ], [ false, %33 ], [ %51, %50 ]
  br i1 %53, label %54, label %119

54:                                               ; preds = %52
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @XML_PARSER_CHUNK_SIZE, align 4
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @XML_MAX_NAME_LENGTH, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @XML_PARSE_HUGE, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = load i32, i32* @XML_ERR_NAME_TOO_LONG, align 4
  %73 = call i32 @xmlFatalErr(%struct.TYPE_8__* %71, i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %143

74:                                               ; preds = %63, %59
  store i32 0, i32* %7, align 4
  %75 = load i32, i32* @GROW, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @XML_PARSER_EOF, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32* null, i32** %2, align 8
  br label %143

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %54
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @NEXTL(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @CUR_CHAR(i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, %94
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* @GROW, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @XML_PARSER_EOF, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  store i32* null, i32** %2, align 8
  br label %143

108:                                              ; preds = %93
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %109
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @CUR_CHAR(i32 %116)
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %108, %83
  br label %33

119:                                              ; preds = %52
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @XML_MAX_NAME_LENGTH, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @XML_PARSE_HUGE, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %132 = load i32, i32* @XML_ERR_NAME_TOO_LONG, align 4
  %133 = call i32 @xmlFatalErr(%struct.TYPE_8__* %131, i32 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %143

134:                                              ; preds = %123, %119
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* @BASE_PTR, align 8
  %139 = load i64, i64* %8, align 8
  %140 = add i64 %138, %139
  %141 = load i32, i32* %4, align 4
  %142 = call i32* @xmlDictLookup(i32 %137, i64 %140, i32 %141)
  store i32* %142, i32** %2, align 8
  br label %143

143:                                              ; preds = %134, %130, %107, %81, %70, %31
  %144 = load i32*, i32** %2, align 8
  ret i32* %144
}

declare dso_local i32 @CUR_CHAR(i32) #1

declare dso_local i32 @xmlIsNameStartChar(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @xmlIsNameChar(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @NEXTL(i32) #1

declare dso_local i32* @xmlDictLookup(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
