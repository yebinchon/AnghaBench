; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlGetCharEncodingHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlGetCharEncodingHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@handlers = common dso_local global i32* null, align 8
@xmlUTF16LEHandler = common dso_local global i32* null, align 8
@xmlUTF16BEHandler = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"EBCDIC\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ebcdic\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"EBCDIC-US\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"IBM-037\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"ISO-10646-UCS-4\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"UCS-4\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"UCS4\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ISO-10646-UCS-2\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"UCS-2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"UCS2\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"ISO-8859-2\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"ISO-8859-3\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"ISO-8859-4\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"ISO-8859-5\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"ISO-8859-6\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"ISO-8859-7\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"ISO-8859-8\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"ISO-8859-9\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"ISO-2022-JP\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"SHIFT-JIS\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"SHIFT_JIS\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"Shift_JIS\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"EUC-JP\00", align 1
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlGetCharEncodingHandler(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32*, i32** @handlers, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @xmlInitCharEncodingHandlers()
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %198 [
    i32 139, label %11
    i32 137, label %12
    i32 128, label %13
    i32 129, label %14
    i32 130, label %16
    i32 140, label %18
    i32 134, label %43
    i32 133, label %62
    i32 132, label %81
    i32 131, label %82
    i32 135, label %83
    i32 149, label %102
    i32 148, label %109
    i32 147, label %116
    i32 146, label %123
    i32 145, label %130
    i32 144, label %137
    i32 143, label %144
    i32 142, label %151
    i32 141, label %158
    i32 150, label %165
    i32 136, label %172
    i32 138, label %191
  ]

11:                                               ; preds = %9
  store i32* null, i32** %2, align 8
  br label %200

12:                                               ; preds = %9
  store i32* null, i32** %2, align 8
  br label %200

13:                                               ; preds = %9
  store i32* null, i32** %2, align 8
  br label %200

14:                                               ; preds = %9
  %15 = load i32*, i32** @xmlUTF16LEHandler, align 8
  store i32* %15, i32** %2, align 8
  br label %200

16:                                               ; preds = %9
  %17 = load i32*, i32** @xmlUTF16BEHandler, align 8
  store i32* %17, i32** %2, align 8
  br label %200

18:                                               ; preds = %9
  %19 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  store i32* %23, i32** %2, align 8
  br label %200

24:                                               ; preds = %18
  %25 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  store i32* %29, i32** %2, align 8
  br label %200

30:                                               ; preds = %24
  %31 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  store i32* %35, i32** %2, align 8
  br label %200

36:                                               ; preds = %30
  %37 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  store i32* %41, i32** %2, align 8
  br label %200

42:                                               ; preds = %36
  br label %199

43:                                               ; preds = %9
  %44 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  store i32* %48, i32** %2, align 8
  br label %200

49:                                               ; preds = %43
  %50 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32* %50, i32** %4, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  store i32* %54, i32** %2, align 8
  br label %200

55:                                               ; preds = %49
  %56 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32* %56, i32** %4, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32*, i32** %4, align 8
  store i32* %60, i32** %2, align 8
  br label %200

61:                                               ; preds = %55
  br label %199

62:                                               ; preds = %9
  %63 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32* %63, i32** %4, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32*, i32** %4, align 8
  store i32* %67, i32** %2, align 8
  br label %200

68:                                               ; preds = %62
  %69 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32* %69, i32** %4, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32*, i32** %4, align 8
  store i32* %73, i32** %2, align 8
  br label %200

74:                                               ; preds = %68
  %75 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32* %75, i32** %4, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32*, i32** %4, align 8
  store i32* %79, i32** %2, align 8
  br label %200

80:                                               ; preds = %74
  br label %199

81:                                               ; preds = %9
  br label %199

82:                                               ; preds = %9
  br label %199

83:                                               ; preds = %9
  %84 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i32* %84, i32** %4, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32*, i32** %4, align 8
  store i32* %88, i32** %2, align 8
  br label %200

89:                                               ; preds = %83
  %90 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32* %90, i32** %4, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32*, i32** %4, align 8
  store i32* %94, i32** %2, align 8
  br label %200

95:                                               ; preds = %89
  %96 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i32* %96, i32** %4, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32*, i32** %4, align 8
  store i32* %100, i32** %2, align 8
  br label %200

101:                                              ; preds = %95
  br label %199

102:                                              ; preds = %9
  %103 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i32* %103, i32** %4, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32*, i32** %4, align 8
  store i32* %107, i32** %2, align 8
  br label %200

108:                                              ; preds = %102
  br label %199

109:                                              ; preds = %9
  %110 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i32* %110, i32** %4, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32*, i32** %4, align 8
  store i32* %114, i32** %2, align 8
  br label %200

115:                                              ; preds = %109
  br label %199

116:                                              ; preds = %9
  %117 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  store i32* %117, i32** %4, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32*, i32** %4, align 8
  store i32* %121, i32** %2, align 8
  br label %200

122:                                              ; preds = %116
  br label %199

123:                                              ; preds = %9
  %124 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  store i32* %124, i32** %4, align 8
  %125 = load i32*, i32** %4, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32*, i32** %4, align 8
  store i32* %128, i32** %2, align 8
  br label %200

129:                                              ; preds = %123
  br label %199

130:                                              ; preds = %9
  %131 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  store i32* %131, i32** %4, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32*, i32** %4, align 8
  store i32* %135, i32** %2, align 8
  br label %200

136:                                              ; preds = %130
  br label %199

137:                                              ; preds = %9
  %138 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  store i32* %138, i32** %4, align 8
  %139 = load i32*, i32** %4, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32*, i32** %4, align 8
  store i32* %142, i32** %2, align 8
  br label %200

143:                                              ; preds = %137
  br label %199

144:                                              ; preds = %9
  %145 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store i32* %145, i32** %4, align 8
  %146 = load i32*, i32** %4, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32*, i32** %4, align 8
  store i32* %149, i32** %2, align 8
  br label %200

150:                                              ; preds = %144
  br label %199

151:                                              ; preds = %9
  %152 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  store i32* %152, i32** %4, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32*, i32** %4, align 8
  store i32* %156, i32** %2, align 8
  br label %200

157:                                              ; preds = %151
  br label %199

158:                                              ; preds = %9
  %159 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  store i32* %159, i32** %4, align 8
  %160 = load i32*, i32** %4, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32*, i32** %4, align 8
  store i32* %163, i32** %2, align 8
  br label %200

164:                                              ; preds = %158
  br label %199

165:                                              ; preds = %9
  %166 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  store i32* %166, i32** %4, align 8
  %167 = load i32*, i32** %4, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32*, i32** %4, align 8
  store i32* %170, i32** %2, align 8
  br label %200

171:                                              ; preds = %165
  br label %199

172:                                              ; preds = %9
  %173 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  store i32* %173, i32** %4, align 8
  %174 = load i32*, i32** %4, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32*, i32** %4, align 8
  store i32* %177, i32** %2, align 8
  br label %200

178:                                              ; preds = %172
  %179 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  store i32* %179, i32** %4, align 8
  %180 = load i32*, i32** %4, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32*, i32** %4, align 8
  store i32* %183, i32** %2, align 8
  br label %200

184:                                              ; preds = %178
  %185 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  store i32* %185, i32** %4, align 8
  %186 = load i32*, i32** %4, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i32*, i32** %4, align 8
  store i32* %189, i32** %2, align 8
  br label %200

190:                                              ; preds = %184
  br label %199

191:                                              ; preds = %9
  %192 = call i32* @xmlFindCharEncodingHandler(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  store i32* %192, i32** %4, align 8
  %193 = load i32*, i32** %4, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32*, i32** %4, align 8
  store i32* %196, i32** %2, align 8
  br label %200

197:                                              ; preds = %191
  br label %199

198:                                              ; preds = %9
  br label %199

199:                                              ; preds = %198, %197, %190, %171, %164, %157, %150, %143, %136, %129, %122, %115, %108, %101, %82, %81, %80, %61, %42
  store i32* null, i32** %2, align 8
  br label %200

200:                                              ; preds = %199, %195, %188, %182, %176, %169, %162, %155, %148, %141, %134, %127, %120, %113, %106, %99, %93, %87, %78, %72, %66, %59, %53, %47, %40, %34, %28, %22, %16, %14, %13, %12, %11
  %201 = load i32*, i32** %2, align 8
  ret i32* %201
}

declare dso_local i32 @xmlInitCharEncodingHandlers(...) #1

declare dso_local i32* @xmlFindCharEncodingHandler(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
