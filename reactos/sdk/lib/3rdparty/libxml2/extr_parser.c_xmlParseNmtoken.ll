; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseNmtoken.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseNmtoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@XML_MAX_NAMELEN = common dso_local global i32 0, align 4
@GROW = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@XML_PARSER_CHUNK_SIZE = common dso_local global i32 0, align 4
@XML_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@XML_PARSE_HUGE = common dso_local global i32 0, align 4
@XML_ERR_NAME_TOO_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"NmToken\00", align 1
@nbParseNmToken = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @xmlParseNmtoken(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %14 = load i32, i32* @XML_MAX_NAMELEN, align 4
  %15 = add nsw i32 %14, 5
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* @GROW, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XML_PARSER_EOF, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i64* null, i64** %2, align 8
  store i32 1, i32* %10, align 4
  br label %186

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @CUR_CHAR(i32 %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %163, %26
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @xmlIsNameChar(%struct.TYPE_6__* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %164

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @XML_PARSER_CHUNK_SIZE, align 4
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  %40 = load i32, i32* @GROW, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @COPY_BUF(i32 %42, i64* %18, i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @NEXTL(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @CUR_CHAR(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  %53 = load i32, i32* @GROW, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @XML_PARSER_EOF, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i64* null, i64** %2, align 8
  store i32 1, i32* %10, align 4
  br label %186

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @CUR_CHAR(i32 %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %41
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @XML_MAX_NAMELEN, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %163

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 %68, 2
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i64 @xmlMallocAtomic(i32 %73)
  %75 = inttoptr i64 %74 to i64*
  store i64* %75, i64** %11, align 8
  %76 = load i64*, i64** %11, align 8
  %77 = icmp eq i64* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = call i32 @xmlErrMemory(%struct.TYPE_6__* %79, i32* null)
  store i64* null, i64** %2, align 8
  store i32 1, i32* %10, align 4
  br label %186

81:                                               ; preds = %67
  %82 = load i64*, i64** %11, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @memcpy(i64* %82, i64* %18, i32 %83)
  br label %85

85:                                               ; preds = %147, %81
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i64 @xmlIsNameChar(%struct.TYPE_6__* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %157

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @XML_PARSER_CHUNK_SIZE, align 4
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  store i32 0, i32* %9, align 4
  %96 = load i32, i32* @GROW, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @XML_PARSER_EOF, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i64*, i64** %11, align 8
  %104 = call i32 @xmlFree(i64* %103)
  store i64* null, i64** %2, align 8
  store i32 1, i32* %10, align 4
  br label %186

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105, %90
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 10
  %109 = load i32, i32* %12, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %147

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @XML_MAX_NAME_LENGTH, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @XML_PARSE_HUGE, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = load i32, i32* @XML_ERR_NAME_TOO_LONG, align 4
  %125 = call i32 @xmlFatalErr(%struct.TYPE_6__* %123, i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %126 = load i64*, i64** %11, align 8
  %127 = call i32 @xmlFree(i64* %126)
  store i64* null, i64** %2, align 8
  store i32 1, i32* %10, align 4
  br label %186

128:                                              ; preds = %115, %111
  %129 = load i32, i32* %12, align 4
  %130 = mul nsw i32 %129, 2
  store i32 %130, i32* %12, align 4
  %131 = load i64*, i64** %11, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 8
  %135 = trunc i64 %134 to i32
  %136 = call i64 @xmlRealloc(i64* %131, i32 %135)
  %137 = inttoptr i64 %136 to i64*
  store i64* %137, i64** %13, align 8
  %138 = load i64*, i64** %13, align 8
  %139 = icmp eq i64* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %128
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = call i32 @xmlErrMemory(%struct.TYPE_6__* %141, i32* null)
  %143 = load i64*, i64** %11, align 8
  %144 = call i32 @xmlFree(i64* %143)
  store i64* null, i64** %2, align 8
  store i32 1, i32* %10, align 4
  br label %186

145:                                              ; preds = %128
  %146 = load i64*, i64** %13, align 8
  store i64* %146, i64** %11, align 8
  br label %147

147:                                              ; preds = %145, %106
  %148 = load i32, i32* %7, align 4
  %149 = load i64*, i64** %11, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @COPY_BUF(i32 %148, i64* %149, i32 %150, i32 %151)
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @NEXTL(i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @CUR_CHAR(i32 %155)
  store i32 %156, i32* %8, align 4
  br label %85

157:                                              ; preds = %85
  %158 = load i64*, i64** %11, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  store i64 0, i64* %161, align 8
  %162 = load i64*, i64** %11, align 8
  store i64* %162, i64** %2, align 8
  store i32 1, i32* %10, align 4
  br label %186

163:                                              ; preds = %63
  br label %29

164:                                              ; preds = %29
  %165 = load i32, i32* %6, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i64* null, i64** %2, align 8
  store i32 1, i32* %10, align 4
  br label %186

168:                                              ; preds = %164
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @XML_MAX_NAME_LENGTH, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %168
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @XML_PARSE_HUGE, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %181 = load i32, i32* @XML_ERR_NAME_TOO_LONG, align 4
  %182 = call i32 @xmlFatalErr(%struct.TYPE_6__* %180, i32 %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64* null, i64** %2, align 8
  store i32 1, i32* %10, align 4
  br label %186

183:                                              ; preds = %172, %168
  %184 = load i32, i32* %6, align 4
  %185 = call i64* @xmlStrndup(i64* %18, i32 %184)
  store i64* %185, i64** %2, align 8
  store i32 1, i32* %10, align 4
  br label %186

186:                                              ; preds = %183, %179, %167, %157, %140, %122, %102, %78, %59, %25
  %187 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load i64*, i64** %2, align 8
  ret i64* %188
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CUR_CHAR(i32) #2

declare dso_local i64 @xmlIsNameChar(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @COPY_BUF(i32, i64*, i32, i32) #2

declare dso_local i32 @NEXTL(i32) #2

declare dso_local i64 @xmlMallocAtomic(i32) #2

declare dso_local i32 @xmlErrMemory(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i32 @xmlFree(i64*) #2

declare dso_local i32 @xmlFatalErr(%struct.TYPE_6__*, i32, i8*) #2

declare dso_local i64 @xmlRealloc(i64*, i32) #2

declare dso_local i64* @xmlStrndup(i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
