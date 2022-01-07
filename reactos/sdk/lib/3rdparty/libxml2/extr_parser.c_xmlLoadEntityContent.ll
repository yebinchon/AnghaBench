; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlLoadEntityContent.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlLoadEntityContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64, i32*, i32 }
%struct.TYPE_21__ = type { i32* }

@XML_EXTERNAL_PARAMETER_ENTITY = common dso_local global i64 0, align 8
@XML_EXTERNAL_GENERAL_PARSED_ENTITY = common dso_local global i64 0, align 8
@XML_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"xmlLoadEntityContent parameter error\00", align 1
@xmlParserDebugEntities = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Reading %s entity content input\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"xmlLoadEntityContent input error\00", align 1
@GROW = common dso_local global i32 0, align 4
@XML_PARSER_CHUNK_SIZE = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@XML_ERR_INVALID_CHAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"xmlLoadEntityContent: invalid char value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)* @xmlLoadEntityContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlLoadEntityContent(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = icmp eq %struct.TYPE_19__* %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = icmp eq %struct.TYPE_20__* %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XML_EXTERNAL_PARAMETER_ENTITY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @XML_EXTERNAL_GENERAL_PARSED_ENTITY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %22, %13, %2
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = load i32, i32* @XML_ERR_INTERNAL_ERROR, align 4
  %36 = call i32 @xmlFatalErr(%struct.TYPE_19__* %34, i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %190

37:                                               ; preds = %28
  %38 = load i64, i64* @xmlParserDebugEntities, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @xmlGenericErrorContext, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @xmlGenericError(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %37
  %47 = call %struct.TYPE_21__* (...) @xmlBufferCreate()
  store %struct.TYPE_21__* %47, %struct.TYPE_21__** %7, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %49 = icmp eq %struct.TYPE_21__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = load i32, i32* @XML_ERR_INTERNAL_ERROR, align 4
  %53 = call i32 @xmlFatalErr(%struct.TYPE_19__* %51, i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %190

54:                                               ; preds = %46
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = call %struct.TYPE_18__* @xmlNewEntityInputStream(%struct.TYPE_19__* %55, %struct.TYPE_20__* %56)
  store %struct.TYPE_18__* %57, %struct.TYPE_18__** %6, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = icmp eq %struct.TYPE_18__* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = load i32, i32* @XML_ERR_INTERNAL_ERROR, align 4
  %63 = call i32 @xmlFatalErr(%struct.TYPE_19__* %61, i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %65 = call i32 @xmlBufferFree(%struct.TYPE_21__* %64)
  store i32 -1, i32* %3, align 4
  br label %190

66:                                               ; preds = %54
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = call i64 @xmlPushInput(%struct.TYPE_19__* %67, %struct.TYPE_18__* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = call i32 @xmlBufferFree(%struct.TYPE_21__* %72)
  store i32 -1, i32* %3, align 4
  br label %190

74:                                               ; preds = %66
  %75 = load i32, i32* @GROW, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @CUR_CHAR(i32 %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %146, %74
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = icmp eq %struct.TYPE_18__* %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %89, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @IS_CHAR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br label %100

100:                                              ; preds = %96, %84, %78
  %101 = phi i1 [ false, %84 ], [ false, %78 ], [ %99, %96 ]
  br i1 %101, label %102, label %147

102:                                              ; preds = %100
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @xmlBufferAdd(%struct.TYPE_21__* %103, i64 %108, i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* @XML_PARSER_CHUNK_SIZE, align 4
  %114 = icmp sgt i32 %111, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  %116 = load i32, i32* @GROW, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @XML_PARSER_EOF, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %124 = call i32 @xmlBufferFree(%struct.TYPE_21__* %123)
  store i32 -1, i32* %3, align 4
  br label %190

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %102
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @NEXTL(i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @CUR_CHAR(i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %126
  store i32 0, i32* %10, align 4
  %134 = load i32, i32* @GROW, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @XML_PARSER_EOF, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %142 = call i32 @xmlBufferFree(%struct.TYPE_21__* %141)
  store i32 -1, i32* %3, align 4
  br label %190

143:                                              ; preds = %133
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @CUR_CHAR(i32 %144)
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %143, %126
  br label %78

147:                                              ; preds = %100
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %152 = icmp eq %struct.TYPE_18__* %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %147
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp sge i64 %158, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %167 = call i32 @xmlPopInput(%struct.TYPE_19__* %166)
  br label %180

168:                                              ; preds = %153, %147
  %169 = load i32, i32* %9, align 4
  %170 = call i64 @IS_CHAR(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %168
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %174 = load i32, i32* @XML_ERR_INVALID_CHAR, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @xmlFatalErrMsgInt(%struct.TYPE_19__* %173, i32 %174, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %178 = call i32 @xmlBufferFree(%struct.TYPE_21__* %177)
  store i32 -1, i32* %3, align 4
  br label %190

179:                                              ; preds = %168
  br label %180

180:                                              ; preds = %179, %165
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 1
  store i32* %183, i32** %185, align 8
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  store i32* null, i32** %187, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %189 = call i32 @xmlBufferFree(%struct.TYPE_21__* %188)
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %180, %172, %140, %122, %71, %60, %50, %33
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @xmlFatalErr(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @xmlGenericError(i32, i8*, i32) #1

declare dso_local %struct.TYPE_21__* @xmlBufferCreate(...) #1

declare dso_local %struct.TYPE_18__* @xmlNewEntityInputStream(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @xmlBufferFree(%struct.TYPE_21__*) #1

declare dso_local i64 @xmlPushInput(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @CUR_CHAR(i32) #1

declare dso_local i64 @IS_CHAR(i32) #1

declare dso_local i32 @xmlBufferAdd(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i32 @NEXTL(i32) #1

declare dso_local i32 @xmlPopInput(%struct.TYPE_19__*) #1

declare dso_local i32 @xmlFatalErrMsgInt(%struct.TYPE_19__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
