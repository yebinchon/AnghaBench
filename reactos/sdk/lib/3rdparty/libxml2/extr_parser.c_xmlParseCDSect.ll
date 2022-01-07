; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseCDSect.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseCDSect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)* }

@XML_PARSER_BUFFER_SIZE = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i32 0, align 4
@XML_PARSER_CDATA_SECTION = common dso_local global i64 0, align 8
@XML_ERR_CDATA_NOT_FINISHED = common dso_local global i32 0, align 4
@XML_PARSER_CONTENT = common dso_local global i8* null, align 8
@XML_MAX_TEXT_LENGTH = common dso_local global i32 0, align 4
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CData section too big found\00", align 1
@GROW = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"CData section not finished\0A%.50s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseCDSect(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i64* null, i64** %3, align 8
  store i32 0, i32* %4, align 4
  %14 = load i32, i32* @XML_PARSER_BUFFER_SIZE, align 4
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @CUR_PTR, align 4
  %16 = call i64 @CMP9(i32 %15, i8 signext 60, i8 signext 33, i8 signext 91, i8 signext 67, i8 signext 68, i8 signext 65, i8 signext 84, i8 signext 65, i8 signext 91)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @SKIP(i32 9)
  br label %21

20:                                               ; preds = %1
  br label %233

21:                                               ; preds = %18
  %22 = load i64, i64* @XML_PARSER_CDATA_SECTION, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @CUR_CHAR(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @IS_CHAR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %21
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = load i32, i32* @XML_ERR_CDATA_NOT_FINISHED, align 4
  %33 = call i32 @xmlFatalErr(%struct.TYPE_8__* %31, i32 %32, i32* null)
  %34 = load i8*, i8** @XML_PARSER_CONTENT, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %233

38:                                               ; preds = %21
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @NEXTL(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @CUR_CHAR(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @IS_CHAR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = load i32, i32* @XML_ERR_CDATA_NOT_FINISHED, align 4
  %49 = call i32 @xmlFatalErr(%struct.TYPE_8__* %47, i32 %48, i32* null)
  %50 = load i8*, i8** @XML_PARSER_CONTENT, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %233

54:                                               ; preds = %38
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @NEXTL(i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @CUR_CHAR(i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @xmlMallocAtomic(i32 %62)
  %64 = inttoptr i64 %63 to i64*
  store i64* %64, i64** %3, align 8
  %65 = load i64*, i64** %3, align 8
  %66 = icmp eq i64* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %69 = call i32 @xmlErrMemory(%struct.TYPE_8__* %68, i32* null)
  br label %233

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %155, %70
  %72 = load i32, i32* %10, align 4
  %73 = call i64 @IS_CHAR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 93
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 93
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 62
  br label %84

84:                                               ; preds = %81, %78, %75
  %85 = phi i1 [ true, %78 ], [ true, %75 ], [ %83, %81 ]
  br label %86

86:                                               ; preds = %84, %71
  %87 = phi i1 [ false, %71 ], [ %85, %84 ]
  br i1 %87, label %88, label %160

88:                                               ; preds = %86
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 5
  %91 = load i32, i32* %5, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %130

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @XML_MAX_TEXT_LENGTH, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @XML_PARSE_HUGE, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %106 = load i32, i32* @XML_ERR_CDATA_NOT_FINISHED, align 4
  %107 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_8__* %105, i32 %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64* null)
  %108 = load i64*, i64** %3, align 8
  %109 = call i32 @xmlFree(i64* %108)
  br label %233

110:                                              ; preds = %97, %93
  %111 = load i64*, i64** %3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = mul nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 8
  %116 = trunc i64 %115 to i32
  %117 = call i64 @xmlRealloc(i64* %111, i32 %116)
  %118 = inttoptr i64 %117 to i64*
  store i64* %118, i64** %13, align 8
  %119 = load i64*, i64** %13, align 8
  %120 = icmp eq i64* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %110
  %122 = load i64*, i64** %3, align 8
  %123 = call i32 @xmlFree(i64* %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %125 = call i32 @xmlErrMemory(%struct.TYPE_8__* %124, i32* null)
  br label %233

126:                                              ; preds = %110
  %127 = load i64*, i64** %13, align 8
  store i64* %127, i64** %3, align 8
  %128 = load i32, i32* %5, align 4
  %129 = mul nsw i32 %128, 2
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %126, %88
  %131 = load i32, i32* %7, align 4
  %132 = load i64*, i64** %3, align 8
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @COPY_BUF(i32 %131, i64* %132, i32 %133, i32 %134)
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp sgt i32 %142, 50
  br i1 %143, label %144, label %155

144:                                              ; preds = %130
  %145 = load i32, i32* @GROW, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @XML_PARSER_EOF, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i64*, i64** %3, align 8
  %153 = call i32 @xmlFree(i64* %152)
  br label %233

154:                                              ; preds = %144
  store i32 0, i32* %12, align 4
  br label %155

155:                                              ; preds = %154, %130
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @NEXTL(i32 %156)
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @CUR_CHAR(i32 %158)
  store i32 %159, i32* %10, align 4
  br label %71

160:                                              ; preds = %86
  %161 = load i64*, i64** %3, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  store i64 0, i64* %164, align 8
  %165 = load i8*, i8** @XML_PARSER_CONTENT, align 8
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 62
  br i1 %170, label %171, label %178

171:                                              ; preds = %160
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %173 = load i32, i32* @XML_ERR_CDATA_NOT_FINISHED, align 4
  %174 = load i64*, i64** %3, align 8
  %175 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_8__* %172, i32 %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64* %174)
  %176 = load i64*, i64** %3, align 8
  %177 = call i32 @xmlFree(i64* %176)
  br label %233

178:                                              ; preds = %160
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @NEXTL(i32 %179)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = icmp ne %struct.TYPE_7__* %183, null
  br i1 %184, label %185, label %230

185:                                              ; preds = %178
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %230, label %190

190:                                              ; preds = %185
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %194, align 8
  %196 = icmp ne i32 (i32, i64*, i32)* %195, null
  br i1 %196, label %197, label %209

197:                                              ; preds = %190
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %201, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i64*, i64** %3, align 8
  %207 = load i32, i32* %4, align 4
  %208 = call i32 %202(i32 %205, i64* %206, i32 %207)
  br label %229

209:                                              ; preds = %190
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %213, align 8
  %215 = icmp ne i32 (i32, i64*, i32)* %214, null
  br i1 %215, label %216, label %228

216:                                              ; preds = %209
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %220, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load i64*, i64** %3, align 8
  %226 = load i32, i32* %4, align 4
  %227 = call i32 %221(i32 %224, i64* %225, i32 %226)
  br label %228

228:                                              ; preds = %216, %209
  br label %229

229:                                              ; preds = %228, %197
  br label %230

230:                                              ; preds = %229, %185, %178
  %231 = load i64*, i64** %3, align 8
  %232 = call i32 @xmlFree(i64* %231)
  br label %233

233:                                              ; preds = %230, %171, %151, %121, %104, %67, %46, %30, %20
  ret void
}

declare dso_local i64 @CMP9(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @CUR_CHAR(i32) #1

declare dso_local i64 @IS_CHAR(i32) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @NEXTL(i32) #1

declare dso_local i64 @xmlMallocAtomic(i32) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @xmlFatalErrMsgStr(%struct.TYPE_8__*, i32, i8*, i64*) #1

declare dso_local i32 @xmlFree(i64*) #1

declare dso_local i64 @xmlRealloc(i64*, i32) #1

declare dso_local i32 @COPY_BUF(i32, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
