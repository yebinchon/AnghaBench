; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseCharRef.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseCharRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@RAW = common dso_local global i8 0, align 1
@GROW = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@CUR = common dso_local global i32 0, align 4
@XML_ERR_INVALID_HEX_CHARREF = common dso_local global i32 0, align 4
@NEXT = common dso_local global i32 0, align 4
@XML_ERR_INVALID_DEC_CHARREF = common dso_local global i32 0, align 4
@XML_ERR_INVALID_CHARREF = common dso_local global i32 0, align 4
@XML_ERR_INVALID_CHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"xmlParseCharRef: invalid xmlChar value %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlParseCharRef(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i8, i8* @RAW, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 38
  br i1 %9, label %10, label %125

10:                                               ; preds = %1
  %11 = call signext i8 @NXT(i32 1)
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 35
  br i1 %13, label %14, label %125

14:                                               ; preds = %10
  %15 = call signext i8 @NXT(i32 2)
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 120
  br i1 %17, label %18, label %125

18:                                               ; preds = %14
  %19 = call i32 @SKIP(i32 3)
  %20 = load i32, i32* @GROW, align 4
  br label %21

21:                                               ; preds = %99, %18
  %22 = load i8, i8* @RAW, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 59
  br i1 %24, label %25, label %103

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = icmp sgt i32 %26, 20
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  %30 = load i32, i32* @GROW, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @XML_PARSER_EOF, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %222

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i8, i8* @RAW, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sge i32 %40, 48
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i8, i8* @RAW, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sle i32 %44, 57
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = mul i32 %47, 16
  %49 = load i32, i32* @CUR, align 4
  %50 = sub i32 %49, 48
  %51 = add i32 %48, %50
  store i32 %51, i32* %4, align 4
  br label %94

52:                                               ; preds = %42, %38
  %53 = load i8, i8* @RAW, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sge i32 %54, 97
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i8, i8* @RAW, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %58, 102
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 20
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = mul i32 %64, 16
  %66 = load i32, i32* @CUR, align 4
  %67 = sub i32 %66, 97
  %68 = add i32 %65, %67
  %69 = add i32 %68, 10
  store i32 %69, i32* %4, align 4
  br label %93

70:                                               ; preds = %60, %56, %52
  %71 = load i8, i8* @RAW, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sge i32 %72, 65
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load i8, i8* @RAW, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sle i32 %76, 70
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 20
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = mul i32 %82, 16
  %84 = load i32, i32* @CUR, align 4
  %85 = sub i32 %84, 65
  %86 = add i32 %83, %85
  %87 = add i32 %86, 10
  store i32 %87, i32* %4, align 4
  br label %92

88:                                               ; preds = %78, %74, %70
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = load i32, i32* @XML_ERR_INVALID_HEX_CHARREF, align 4
  %91 = call i32 @xmlFatalErr(%struct.TYPE_7__* %89, i32 %90, i32* null)
  store i32 0, i32* %4, align 4
  br label %103

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %63
  br label %94

94:                                               ; preds = %93, %46
  %95 = load i32, i32* %4, align 4
  %96 = icmp ugt i32 %95, 1114111
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i32, i32* @NEXT, align 4
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %21

103:                                              ; preds = %88, %21
  %104 = load i8, i8* @RAW, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 59
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %107, %103
  br label %207

125:                                              ; preds = %14, %10, %1
  %126 = load i8, i8* @RAW, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 38
  br i1 %128, label %129, label %202

129:                                              ; preds = %125
  %130 = call signext i8 @NXT(i32 1)
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 35
  br i1 %132, label %133, label %202

133:                                              ; preds = %129
  %134 = call i32 @SKIP(i32 2)
  %135 = load i32, i32* @GROW, align 4
  br label %136

136:                                              ; preds = %176, %133
  %137 = load i8, i8* @RAW, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 59
  br i1 %139, label %140, label %180

140:                                              ; preds = %136
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  %143 = icmp sgt i32 %141, 20
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  store i32 0, i32* %5, align 4
  %145 = load i32, i32* @GROW, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @XML_PARSER_EOF, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %222

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %140
  %154 = load i8, i8* @RAW, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp sge i32 %155, 48
  br i1 %156, label %157, label %167

157:                                              ; preds = %153
  %158 = load i8, i8* @RAW, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp sle i32 %159, 57
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load i32, i32* %4, align 4
  %163 = mul i32 %162, 10
  %164 = load i32, i32* @CUR, align 4
  %165 = sub i32 %164, 48
  %166 = add i32 %163, %165
  store i32 %166, i32* %4, align 4
  br label %171

167:                                              ; preds = %157, %153
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = load i32, i32* @XML_ERR_INVALID_DEC_CHARREF, align 4
  %170 = call i32 @xmlFatalErr(%struct.TYPE_7__* %168, i32 %169, i32* null)
  store i32 0, i32* %4, align 4
  br label %180

171:                                              ; preds = %161
  %172 = load i32, i32* %4, align 4
  %173 = icmp ugt i32 %172, 1114111
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i32, i32* %4, align 4
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %174, %171
  %177 = load i32, i32* @NEXT, align 4
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  br label %136

180:                                              ; preds = %167, %136
  %181 = load i8, i8* @RAW, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 59
  br i1 %183, label %184, label %201

184:                                              ; preds = %180
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %184, %180
  br label %206

202:                                              ; preds = %129, %125
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %204 = load i32, i32* @XML_ERR_INVALID_CHARREF, align 4
  %205 = call i32 @xmlFatalErr(%struct.TYPE_7__* %203, i32 %204, i32* null)
  br label %206

206:                                              ; preds = %202, %201
  br label %207

207:                                              ; preds = %206, %124
  %208 = load i32, i32* %4, align 4
  %209 = call i64 @IS_CHAR(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = load i32, i32* %6, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = load i32, i32* %4, align 4
  store i32 %215, i32* %2, align 4
  br label %222

216:                                              ; preds = %211, %207
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %218 = load i32, i32* @XML_ERR_INVALID_CHAR, align 4
  %219 = load i32, i32* %4, align 4
  %220 = call i32 @xmlFatalErrMsgInt(%struct.TYPE_7__* %217, i32 %218, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %216
  store i32 0, i32* %2, align 4
  br label %222

222:                                              ; preds = %221, %214, %151, %36
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @xmlFatalErr(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i64 @IS_CHAR(i32) #1

declare dso_local i32 @xmlFatalErrMsgInt(%struct.TYPE_7__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
