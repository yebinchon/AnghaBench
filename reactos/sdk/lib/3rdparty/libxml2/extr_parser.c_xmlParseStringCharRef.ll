; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseStringCharRef.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseStringCharRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XML_ERR_INVALID_HEX_CHARREF = common dso_local global i32 0, align 4
@XML_ERR_INVALID_DEC_CHARREF = common dso_local global i32 0, align 4
@XML_ERR_INVALID_CHARREF = common dso_local global i32 0, align 4
@XML_ERR_INVALID_CHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"xmlParseStringCharRef: invalid xmlChar value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @xmlParseStringCharRef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlParseStringCharRef(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = icmp eq i8** %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %195

17:                                               ; preds = %12
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %7, align 1
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 38
  br i1 %24, label %25, label %117

25:                                               ; preds = %17
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %31, label %117

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 120
  br i1 %36, label %37, label %117

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 3
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %7, align 1
  br label %42

42:                                               ; preds = %104, %37
  %43 = load i8, i8* %7, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 59
  br i1 %45, label %46, label %109

46:                                               ; preds = %42
  %47 = load i8, i8* %7, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sge i32 %48, 48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i8, i8* %7, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 57
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = mul i32 %55, 16
  %57 = load i8, i8* %7, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 48
  %60 = add i32 %56, %59
  store i32 %60, i32* %8, align 4
  br label %99

61:                                               ; preds = %50, %46
  %62 = load i8, i8* %7, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sge i32 %63, 97
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i8, i8* %7, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sle i32 %67, 102
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = mul i32 %70, 16
  %72 = load i8, i8* %7, align 1
  %73 = sext i8 %72 to i32
  %74 = sub nsw i32 %73, 97
  %75 = add i32 %71, %74
  %76 = add i32 %75, 10
  store i32 %76, i32* %8, align 4
  br label %98

77:                                               ; preds = %65, %61
  %78 = load i8, i8* %7, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp sge i32 %79, 65
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i8, i8* %7, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sle i32 %83, 70
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = mul i32 %86, 16
  %88 = load i8, i8* %7, align 1
  %89 = sext i8 %88 to i32
  %90 = sub nsw i32 %89, 65
  %91 = add i32 %87, %90
  %92 = add i32 %91, 10
  store i32 %92, i32* %8, align 4
  br label %97

93:                                               ; preds = %81, %77
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @XML_ERR_INVALID_HEX_CHARREF, align 4
  %96 = call i32 @xmlFatalErr(i32 %94, i32 %95, i32* null)
  store i32 0, i32* %8, align 4
  br label %109

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %69
  br label %99

99:                                               ; preds = %98, %54
  %100 = load i32, i32* %8, align 4
  %101 = icmp ugt i32 %100, 1114111
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %6, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  store i8 %108, i8* %7, align 1
  br label %42

109:                                              ; preds = %93, %42
  %110 = load i8, i8* %7, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 59
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %6, align 8
  br label %116

116:                                              ; preds = %113, %109
  br label %178

117:                                              ; preds = %31, %25, %17
  %118 = load i8, i8* %7, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 38
  br i1 %120, label %121, label %173

121:                                              ; preds = %117
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 35
  br i1 %126, label %127, label %173

127:                                              ; preds = %121
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  store i8* %129, i8** %6, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i8, i8* %130, align 1
  store i8 %131, i8* %7, align 1
  br label %132

132:                                              ; preds = %160, %127
  %133 = load i8, i8* %7, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 59
  br i1 %135, label %136, label %165

136:                                              ; preds = %132
  %137 = load i8, i8* %7, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sge i32 %138, 48
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load i8, i8* %7, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp sle i32 %142, 57
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load i32, i32* %8, align 4
  %146 = mul i32 %145, 10
  %147 = load i8, i8* %7, align 1
  %148 = sext i8 %147 to i32
  %149 = sub nsw i32 %148, 48
  %150 = add i32 %146, %149
  store i32 %150, i32* %8, align 4
  br label %155

151:                                              ; preds = %140, %136
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @XML_ERR_INVALID_DEC_CHARREF, align 4
  %154 = call i32 @xmlFatalErr(i32 %152, i32 %153, i32* null)
  store i32 0, i32* %8, align 4
  br label %165

155:                                              ; preds = %144
  %156 = load i32, i32* %8, align 4
  %157 = icmp ugt i32 %156, 1114111
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %158, %155
  %161 = load i8*, i8** %6, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %6, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = load i8, i8* %163, align 1
  store i8 %164, i8* %7, align 1
  br label %132

165:                                              ; preds = %151, %132
  %166 = load i8, i8* %7, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 59
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i8*, i8** %6, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %6, align 8
  br label %172

172:                                              ; preds = %169, %165
  br label %177

173:                                              ; preds = %121, %117
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @XML_ERR_INVALID_CHARREF, align 4
  %176 = call i32 @xmlFatalErr(i32 %174, i32 %175, i32* null)
  store i32 0, i32* %3, align 4
  br label %195

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %177, %116
  %179 = load i8*, i8** %6, align 8
  %180 = load i8**, i8*** %5, align 8
  store i8* %179, i8** %180, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i64 @IS_CHAR(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load i32, i32* %9, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %3, align 4
  br label %195

189:                                              ; preds = %184, %178
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @XML_ERR_INVALID_CHAR, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @xmlFatalErrMsgInt(i32 %190, i32 %191, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %189
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %194, %187, %173, %16
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @xmlFatalErr(i32, i32, i32*) #1

declare dso_local i64 @IS_CHAR(i32) #1

declare dso_local i32 @xmlFatalErrMsgInt(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
