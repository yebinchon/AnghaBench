; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseEntityValue.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseEntityValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32, i32 }

@XML_PARSER_BUFFER_SIZE = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@XML_ERR_ENTITY_NOT_STARTED = common dso_local global i32 0, align 4
@XML_PARSER_ENTITY_VALUE = common dso_local global i64 0, align 8
@GROW = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@NEXT = common dso_local global i32 0, align 4
@XML_ERR_ENTITY_NOT_FINISHED = common dso_local global i32 0, align 4
@XML_ERR_ENTITY_CHAR_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"EntityValue: '%c' forbidden except for entities references\0A\00", align 1
@XML_ERR_ENTITY_PE_INTERNAL = common dso_local global i32 0, align 4
@XML_SUBSTITUTE_PEREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlParseEntityValue(%struct.TYPE_8__* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* @XML_PARSER_BUFFER_SIZE, align 4
  store i32 %19, i32* %8, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %20 = load i8, i8* @RAW, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 34
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 34, i32* %11, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load i8, i8* @RAW, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 39
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 39, i32* %11, align 4
  br label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = load i32, i32* @XML_ERR_ENTITY_NOT_STARTED, align 4
  %32 = call i32 @xmlFatalErr(%struct.TYPE_8__* %30, i32 %31, i32* null)
  store i32* null, i32** %3, align 8
  br label %242

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i64 @xmlMallocAtomic(i32 %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = call i32 @xmlErrMemory(%struct.TYPE_8__* %44, i32* null)
  store i32* null, i32** %3, align 8
  br label %242

46:                                               ; preds = %34
  %47 = load i64, i64* @XML_PARSER_ENTITY_VALUE, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %14, align 8
  %53 = load i32, i32* @GROW, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @XML_PARSER_EOF, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %234

60:                                               ; preds = %46
  %61 = load i32, i32* @NEXT, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @CUR_CHAR(i32 %62)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %125, %60
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @IS_CHAR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %14, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72, %68
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @XML_PARSER_EOF, align 8
  %83 = icmp ne i64 %81, %82
  br label %84

84:                                               ; preds = %78, %72, %64
  %85 = phi i1 [ false, %72 ], [ false, %64 ], [ %83, %78 ]
  br i1 %85, label %86, label %126

86:                                               ; preds = %84
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 5
  %89 = load i32, i32* %8, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %92, 2
  store i32 %93, i32* %8, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i64 @xmlRealloc(i32* %94, i32 %98)
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %15, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = call i32 @xmlErrMemory(%struct.TYPE_8__* %104, i32* null)
  br label %234

106:                                              ; preds = %91
  %107 = load i32*, i32** %15, align 8
  store i32* %107, i32** %6, align 8
  br label %108

108:                                              ; preds = %106, %86
  %109 = load i32, i32* %10, align 4
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @COPY_BUF(i32 %109, i32* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @NEXTL(i32 %114)
  %116 = load i32, i32* @GROW, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @CUR_CHAR(i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %108
  %122 = load i32, i32* @GROW, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @CUR_CHAR(i32 %123)
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %121, %108
  br label %64

126:                                              ; preds = %84
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 0, i32* %130, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @XML_PARSER_EOF, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %234

137:                                              ; preds = %126
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = load i32, i32* @XML_ERR_ENTITY_NOT_FINISHED, align 4
  %144 = call i32 @xmlFatalErr(%struct.TYPE_8__* %142, i32 %143, i32* null)
  br label %234

145:                                              ; preds = %137
  %146 = load i32, i32* @NEXT, align 4
  %147 = load i32*, i32** %6, align 8
  store i32* %147, i32** %13, align 8
  br label %148

148:                                              ; preds = %212, %145
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %215

152:                                              ; preds = %148
  %153 = load i32*, i32** %13, align 8
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 37
  br i1 %155, label %165, label %156

156:                                              ; preds = %152
  %157 = load i32*, i32** %13, align 8
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 38
  br i1 %159, label %160, label %212

160:                                              ; preds = %156
  %161 = load i32*, i32** %13, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 35
  br i1 %164, label %165, label %212

165:                                              ; preds = %160, %152
  %166 = load i32*, i32** %13, align 8
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %168 = load i32*, i32** %13, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %13, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %171 = call i32* @xmlParseStringName(%struct.TYPE_8__* %170, i32** %13)
  store i32* %171, i32** %16, align 8
  %172 = load i32*, i32** %16, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  store i32 1, i32* %18, align 4
  %175 = load i32*, i32** %16, align 8
  %176 = call i32 @xmlFree(i32* %175)
  br label %177

177:                                              ; preds = %174, %165
  %178 = load i32, i32* %18, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = load i32*, i32** %13, align 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 59
  br i1 %183, label %184, label %189

184:                                              ; preds = %180, %177
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %186 = load i32, i32* @XML_ERR_ENTITY_CHAR_ERROR, align 4
  %187 = load i32, i32* %17, align 4
  %188 = call i32 @xmlFatalErrMsgInt(%struct.TYPE_8__* %185, i32 %186, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %187)
  br label %234

189:                                              ; preds = %180
  %190 = load i32, i32* %17, align 4
  %191 = icmp eq i32 %190, 37
  br i1 %191, label %192, label %206

192:                                              ; preds = %189
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %206

197:                                              ; preds = %192
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %204 = load i32, i32* @XML_ERR_ENTITY_PE_INTERNAL, align 4
  %205 = call i32 @xmlFatalErr(%struct.TYPE_8__* %203, i32 %204, i32* null)
  br label %234

206:                                              ; preds = %197, %192, %189
  %207 = load i32*, i32** %13, align 8
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %215

211:                                              ; preds = %206
  br label %212

212:                                              ; preds = %211, %160, %156
  %213 = load i32*, i32** %13, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %13, align 8
  br label %148

215:                                              ; preds = %210, %148
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* @XML_SUBSTITUTE_PEREF, align 4
  %223 = call i32* @xmlStringDecodeEntities(%struct.TYPE_8__* %220, i32* %221, i32 %222, i32 0, i32 0, i32 0)
  store i32* %223, i32** %12, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %225, align 8
  %228 = load i32**, i32*** %5, align 8
  %229 = icmp ne i32** %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %215
  %231 = load i32*, i32** %6, align 8
  %232 = load i32**, i32*** %5, align 8
  store i32* %231, i32** %232, align 8
  store i32* null, i32** %6, align 8
  br label %233

233:                                              ; preds = %230, %215
  br label %234

234:                                              ; preds = %233, %202, %184, %141, %136, %103, %59
  %235 = load i32*, i32** %6, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32*, i32** %6, align 8
  %239 = call i32 @xmlFree(i32* %238)
  br label %240

240:                                              ; preds = %237, %234
  %241 = load i32*, i32** %12, align 8
  store i32* %241, i32** %3, align 8
  br label %242

242:                                              ; preds = %240, %43, %29
  %243 = load i32*, i32** %3, align 8
  ret i32* %243
}

declare dso_local i32 @xmlFatalErr(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i64 @xmlMallocAtomic(i32) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @CUR_CHAR(i32) #1

declare dso_local i64 @IS_CHAR(i32) #1

declare dso_local i64 @xmlRealloc(i32*, i32) #1

declare dso_local i32 @COPY_BUF(i32, i32*, i32, i32) #1

declare dso_local i32 @NEXTL(i32) #1

declare dso_local i32* @xmlParseStringName(%struct.TYPE_8__*, i32**) #1

declare dso_local i32 @xmlFree(i32*) #1

declare dso_local i32 @xmlFatalErrMsgInt(%struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i32* @xmlStringDecodeEntities(%struct.TYPE_8__*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
