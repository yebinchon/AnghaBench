; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseExtParsedEnt.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseExtParsedEnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, i32, %struct.TYPE_11__*, i64, i64, i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 (i32)*, i32 (i32)*, i32 (i32, i32*)* }
%struct.TYPE_10__ = type { i32, i32 }

@GROW = common dso_local global i32 0, align 4
@xmlDefaultSAXLocator = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@XML_CHAR_ENCODING_NONE = common dso_local global i64 0, align 8
@CUR = common dso_local global i64 0, align 8
@XML_ERR_DOCUMENT_EMPTY = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i32 0, align 4
@XML_ERR_UNSUPPORTED_ENCODING = common dso_local global i64 0, align 8
@SKIP_BLANKS = common dso_local global i32 0, align 4
@XML_DEFAULT_VERSION = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@XML_PARSER_CONTENT = common dso_local global i64 0, align 8
@XML_ERR_NOT_WELL_BALANCED = common dso_local global i32 0, align 4
@XML_ERR_EXTRA_CONTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlParseExtParsedEnt(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = icmp eq %struct.TYPE_12__* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 10
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = icmp eq %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i32 -1, i32* %2, align 4
  br label %206

14:                                               ; preds = %8
  %15 = call i32 (...) @xmlDefaultSAXHandlerInit()
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = call i32 @xmlDetectSAX2(%struct.TYPE_12__* %16)
  %18 = load i32, i32* @GROW, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %14
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load i32 (i32, i32*)*, i32 (i32, i32*)** %27, align 8
  %29 = icmp ne i32 (i32, i32*)* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i32 (i32, i32*)*, i32 (i32, i32*)** %34, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %35(i32 %38, i32* @xmlDefaultSAXLocator)
  br label %40

40:                                               ; preds = %30, %23, %14
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 10
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 10
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %45, %50
  %52 = icmp sge i32 %51, 4
  br i1 %52, label %53, label %72

53:                                               ; preds = %40
  %54 = load i8, i8* @RAW, align 1
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 %54, i8* %55, align 1
  %56 = call signext i8 @NXT(i32 1)
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  store i8 %56, i8* %57, align 1
  %58 = call signext i8 @NXT(i32 2)
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %58, i8* %59, align 1
  %60 = call signext i8 @NXT(i32 3)
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  store i8 %60, i8* %61, align 1
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %63 = call i64 @xmlDetectCharEncoding(i8* %62, i32 4)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @XML_CHAR_ENCODING_NONE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @xmlSwitchEncoding(%struct.TYPE_12__* %68, i64 %69)
  br label %71

71:                                               ; preds = %67, %53
  br label %72

72:                                               ; preds = %71, %40
  %73 = load i64, i64* @CUR, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = load i32, i32* @XML_ERR_DOCUMENT_EMPTY, align 4
  %78 = call i32 @xmlFatalErr(%struct.TYPE_12__* %76, i32 %77, i32* null)
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i32, i32* @GROW, align 4
  %81 = load i32, i32* @CUR_PTR, align 4
  %82 = call i64 @CMP5(i32 %81, i8 signext 60, i8 signext 63, i8 signext 120, i8 signext 109, i8 signext 108)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = call signext i8 @NXT(i32 5)
  %86 = call i64 @IS_BLANK_CH(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = call i32 @xmlParseXMLDecl(%struct.TYPE_12__* %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @XML_ERR_UNSUPPORTED_ENCODING, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  store i32 -1, i32* %2, align 4
  br label %206

97:                                               ; preds = %88
  %98 = load i32, i32* @SKIP_BLANKS, align 4
  br label %104

99:                                               ; preds = %84, %79
  %100 = load i32, i32* @XML_DEFAULT_VERSION, align 4
  %101 = call i32 @xmlCharStrdup(i32 %100)
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %99, %97
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = icmp ne %struct.TYPE_11__* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %104
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32 (i32)*, i32 (i32)** %113, align 8
  %115 = icmp ne i32 (i32)* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %109
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %116
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i32 (i32)*, i32 (i32)** %125, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 %126(i32 %129)
  br label %131

131:                                              ; preds = %121, %116, %109, %104
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @XML_PARSER_EOF, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i32 -1, i32* %2, align 4
  br label %206

138:                                              ; preds = %131
  %139 = load i64, i64* @XML_PARSER_CONTENT, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 7
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 6
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 5
  store i64 0, i64* %147, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %149 = call i32 @xmlParseContent(%struct.TYPE_12__* %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @XML_PARSER_EOF, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %138
  store i32 -1, i32* %2, align 4
  br label %206

156:                                              ; preds = %138
  %157 = load i8, i8* @RAW, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 60
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = call signext i8 @NXT(i32 1)
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 47
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %166 = load i32, i32* @XML_ERR_NOT_WELL_BALANCED, align 4
  %167 = call i32 @xmlFatalErr(%struct.TYPE_12__* %165, i32 %166, i32* null)
  br label %177

168:                                              ; preds = %160, %156
  %169 = load i8, i8* @RAW, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %174 = load i32, i32* @XML_ERR_EXTRA_CONTENT, align 4
  %175 = call i32 @xmlFatalErr(%struct.TYPE_12__* %173, i32 %174, i32* null)
  br label %176

176:                                              ; preds = %172, %168
  br label %177

177:                                              ; preds = %176, %164
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = icmp ne %struct.TYPE_11__* %180, null
  br i1 %181, label %182, label %199

182:                                              ; preds = %177
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i32 (i32)*, i32 (i32)** %186, align 8
  %188 = icmp ne i32 (i32)* %187, null
  br i1 %188, label %189, label %199

189:                                              ; preds = %182
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i32 (i32)*, i32 (i32)** %193, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = call i32 %194(i32 %197)
  br label %199

199:                                              ; preds = %189, %182, %177
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %199
  store i32 -1, i32* %2, align 4
  br label %206

205:                                              ; preds = %199
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %205, %204, %155, %137, %96, %13
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i32 @xmlDefaultSAXHandlerInit(...) #1

declare dso_local i32 @xmlDetectSAX2(%struct.TYPE_12__*) #1

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i64 @xmlDetectCharEncoding(i8*, i32) #1

declare dso_local i32 @xmlSwitchEncoding(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i64 @CMP5(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @IS_BLANK_CH(i8 signext) #1

declare dso_local i32 @xmlParseXMLDecl(%struct.TYPE_12__*) #1

declare dso_local i32 @xmlCharStrdup(i32) #1

declare dso_local i32 @xmlParseContent(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
