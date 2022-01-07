; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseCommentComplex.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseCommentComplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, %struct.TYPE_11__*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 (i32, i64*)* }
%struct.TYPE_10__ = type { i32 }

@XML_PARSER_BUFFER_SIZE = common dso_local global i64 0, align 8
@GROW = common dso_local global i32 0, align 4
@XML_ERR_INVALID_CHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"xmlParseComment: invalid xmlChar value %d\0A\00", align 1
@XML_ERR_HYPHEN_IN_COMMENT = common dso_local global i32 0, align 4
@XML_MAX_TEXT_LENGTH = common dso_local global i64 0, align 8
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_COMMENT_NOT_FINISHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Comment too big found\00", align 1
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@SHRINK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Comment not terminated \0A<!--%.50s\0A\00", align 1
@XML_ERR_ENTITY_BOUNDARY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Comment doesn't start and stop in the same entity\0A\00", align 1
@NEXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Comment not terminated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i64*, i64, i64)* @xmlParseCommentComplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlParseCommentComplex(%struct.TYPE_12__* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %15, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i64*, i64** %6, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  store i64 0, i64* %7, align 8
  %27 = load i64, i64* @XML_PARSER_BUFFER_SIZE, align 8
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = mul i64 %28, 8
  %30 = call i64 @xmlMallocAtomic(i64 %29)
  %31 = inttoptr i64 %30 to i64*
  store i64* %31, i64** %6, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = icmp eq i64* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = call i32 @xmlErrMemory(%struct.TYPE_12__* %35, i32* null)
  br label %260

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %4
  %39 = load i32, i32* @GROW, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @CUR_CHAR(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %254

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @IS_CHAR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = load i32, i32* @XML_ERR_INVALID_CHAR, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @xmlFatalErrMsgInt(%struct.TYPE_12__* %50, i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i64*, i64** %6, align 8
  %55 = call i32 @xmlFree(i64* %54)
  br label %260

56:                                               ; preds = %45
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @NEXTL(i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @CUR_CHAR(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %254

64:                                               ; preds = %56
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @IS_CHAR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = load i32, i32* @XML_ERR_INVALID_CHAR, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @xmlFatalErrMsgInt(%struct.TYPE_12__* %69, i32 %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i64*, i64** %6, align 8
  %74 = call i32 @xmlFree(i64* %73)
  br label %260

75:                                               ; preds = %64
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @NEXTL(i32 %76)
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @CUR_CHAR(i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %254

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %187, %83
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @IS_CHAR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 62
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 45
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 45
  br label %97

97:                                               ; preds = %94, %91, %88
  %98 = phi i1 [ true, %91 ], [ true, %88 ], [ %96, %94 ]
  br label %99

99:                                               ; preds = %97, %84
  %100 = phi i1 [ false, %84 ], [ %98, %97 ]
  br i1 %100, label %101, label %188

101:                                              ; preds = %99
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %102, 45
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 45
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = load i32, i32* @XML_ERR_HYPHEN_IN_COMMENT, align 4
  %110 = call i32 @xmlFatalErr(%struct.TYPE_12__* %108, i32 %109, i32* null)
  br label %111

111:                                              ; preds = %107, %104, %101
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* @XML_MAX_TEXT_LENGTH, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @XML_PARSE_HUGE, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %124 = load i32, i32* @XML_ERR_COMMENT_NOT_FINISHED, align 4
  %125 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_12__* %123, i32 %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64* null)
  %126 = load i64*, i64** %6, align 8
  %127 = call i32 @xmlFree(i64* %126)
  br label %260

128:                                              ; preds = %115, %111
  %129 = load i64, i64* %7, align 8
  %130 = add i64 %129, 5
  %131 = load i64, i64* %8, align 8
  %132 = icmp uge i64 %130, %131
  br i1 %132, label %133, label %150

133:                                              ; preds = %128
  %134 = load i64, i64* %8, align 8
  %135 = mul i64 %134, 2
  store i64 %135, i64* %18, align 8
  %136 = load i64*, i64** %6, align 8
  %137 = load i64, i64* %18, align 8
  %138 = call i64 @xmlRealloc(i64* %136, i64 %137)
  %139 = inttoptr i64 %138 to i64*
  store i64* %139, i64** %17, align 8
  %140 = load i64*, i64** %17, align 8
  %141 = icmp eq i64* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %133
  %143 = load i64*, i64** %6, align 8
  %144 = call i32 @xmlFree(i64* %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %146 = call i32 @xmlErrMemory(%struct.TYPE_12__* %145, i32* null)
  br label %260

147:                                              ; preds = %133
  %148 = load i64*, i64** %17, align 8
  store i64* %148, i64** %6, align 8
  %149 = load i64, i64* %18, align 8
  store i64 %149, i64* %8, align 8
  br label %150

150:                                              ; preds = %147, %128
  %151 = load i32, i32* %10, align 4
  %152 = load i64*, i64** %6, align 8
  %153 = load i64, i64* %7, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @COPY_BUF(i32 %151, i64* %152, i64 %153, i32 %154)
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %12, align 4
  %160 = load i64, i64* %15, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %15, align 8
  %162 = load i64, i64* %15, align 8
  %163 = icmp ugt i64 %162, 50
  br i1 %163, label %164, label %175

164:                                              ; preds = %150
  %165 = load i32, i32* @GROW, align 4
  store i64 0, i64* %15, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @XML_PARSER_EOF, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load i64*, i64** %6, align 8
  %173 = call i32 @xmlFree(i64* %172)
  br label %260

174:                                              ; preds = %164
  br label %175

175:                                              ; preds = %174, %150
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @NEXTL(i32 %176)
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @CUR_CHAR(i32 %178)
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %13, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %175
  %183 = load i32, i32* @SHRINK, align 4
  %184 = load i32, i32* @GROW, align 4
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @CUR_CHAR(i32 %185)
  store i32 %186, i32* %13, align 4
  br label %187

187:                                              ; preds = %182, %175
  br label %84

188:                                              ; preds = %99
  %189 = load i64*, i64** %6, align 8
  %190 = load i64, i64* %7, align 8
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  store i64 0, i64* %191, align 8
  %192 = load i32, i32* %13, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %196 = load i32, i32* @XML_ERR_COMMENT_NOT_FINISHED, align 4
  %197 = load i64*, i64** %6, align 8
  %198 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_12__* %195, i32 %196, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64* %197)
  br label %251

199:                                              ; preds = %188
  %200 = load i32, i32* %13, align 4
  %201 = call i64 @IS_CHAR(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %199
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %205 = load i32, i32* @XML_ERR_INVALID_CHAR, align 4
  %206 = load i32, i32* %13, align 4
  %207 = call i32 @xmlFatalErrMsgInt(%struct.TYPE_12__* %204, i32 %205, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %206)
  br label %250

208:                                              ; preds = %199
  %209 = load i32, i32* %16, align 4
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 5
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %209, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %208
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %218 = load i32, i32* @XML_ERR_ENTITY_BOUNDARY, align 4
  %219 = call i32 @xmlFatalErrMsg(%struct.TYPE_12__* %217, i32 %218, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %220

220:                                              ; preds = %216, %208
  %221 = load i32, i32* @NEXT, align 4
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %223, align 8
  %225 = icmp ne %struct.TYPE_11__* %224, null
  br i1 %225, label %226, label %249

226:                                              ; preds = %220
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i32 (i32, i64*)*, i32 (i32, i64*)** %230, align 8
  %232 = icmp ne i32 (i32, i64*)* %231, null
  br i1 %232, label %233, label %249

233:                                              ; preds = %226
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %249, label %238

238:                                              ; preds = %233
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i32 (i32, i64*)*, i32 (i32, i64*)** %242, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i64*, i64** %6, align 8
  %248 = call i32 %243(i32 %246, i64* %247)
  br label %249

249:                                              ; preds = %238, %233, %226, %220
  br label %250

250:                                              ; preds = %249, %203
  br label %251

251:                                              ; preds = %250, %194
  %252 = load i64*, i64** %6, align 8
  %253 = call i32 @xmlFree(i64* %252)
  br label %260

254:                                              ; preds = %82, %63, %44
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %256 = load i32, i32* @XML_ERR_COMMENT_NOT_FINISHED, align 4
  %257 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_12__* %255, i32 %256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64* null)
  %258 = load i64*, i64** %6, align 8
  %259 = call i32 @xmlFree(i64* %258)
  br label %260

260:                                              ; preds = %254, %251, %171, %142, %122, %68, %49, %34
  ret void
}

declare dso_local i64 @xmlMallocAtomic(i64) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @CUR_CHAR(i32) #1

declare dso_local i64 @IS_CHAR(i32) #1

declare dso_local i32 @xmlFatalErrMsgInt(%struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @xmlFree(i64*) #1

declare dso_local i32 @NEXTL(i32) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @xmlFatalErrMsgStr(%struct.TYPE_12__*, i32, i8*, i64*) #1

declare dso_local i64 @xmlRealloc(i64*, i64) #1

declare dso_local i32 @COPY_BUF(i32, i64*, i64, i32) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_12__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
