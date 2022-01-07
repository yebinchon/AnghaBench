; ModuleID = '/home/carl/AnghaBench/tmux/extr_colour.c_colour_fromstring.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_colour.c_colour_fromstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%2hhx%2hhx%2hhx\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"colour\00", align 1
@COLOUR_FLAG_256 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"terminal\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"brightblack\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"90\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"brightred\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"91\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"brightgreen\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"92\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"brightyellow\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"93\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"brightblue\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"94\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"brightmagenta\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"95\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"brightcyan\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"96\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"brightwhite\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"97\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @colour_fromstring(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 35
  br i1 %13, label %14, label %49

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp eq i32 %16, 7
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %28, %18
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i64 @isxdigit(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  br label %21

31:                                               ; preds = %21
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %220

37:                                               ; preds = %31
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i32 @sscanf(i8* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8, i32* %9)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %220

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @colour_join_rgb(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %2, align 4
  br label %220

49:                                               ; preds = %14, %1
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @strncasecmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 7
  %56 = getelementptr inbounds i8, i8* %55, i64 -1
  %57 = call i32 @strtonum(i8* %56, i32 0, i32 255, i8** %4)
  store i32 %57, i32* %6, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 -1, i32* %2, align 4
  br label %220

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @COLOUR_FLAG_256, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %2, align 4
  br label %220

65:                                               ; preds = %49
  %66 = load i8*, i8** %3, align 8
  %67 = call i64 @strcasecmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 8, i32* %2, align 4
  br label %220

70:                                               ; preds = %65
  %71 = load i8*, i8** %3, align 8
  %72 = call i64 @strcasecmp(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 9, i32* %2, align 4
  br label %220

75:                                               ; preds = %70
  %76 = load i8*, i8** %3, align 8
  %77 = call i64 @strcasecmp(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %3, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %75
  store i32 0, i32* %2, align 4
  br label %220

84:                                               ; preds = %79
  %85 = load i8*, i8** %3, align 8
  %86 = call i64 @strcasecmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %3, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %84
  store i32 1, i32* %2, align 4
  br label %220

93:                                               ; preds = %88
  %94 = load i8*, i8** %3, align 8
  %95 = call i64 @strcasecmp(i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %3, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %93
  store i32 2, i32* %2, align 4
  br label %220

102:                                              ; preds = %97
  %103 = load i8*, i8** %3, align 8
  %104 = call i64 @strcasecmp(i8* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i8*, i8** %3, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %102
  store i32 3, i32* %2, align 4
  br label %220

111:                                              ; preds = %106
  %112 = load i8*, i8** %3, align 8
  %113 = call i64 @strcasecmp(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i8*, i8** %3, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %111
  store i32 4, i32* %2, align 4
  br label %220

120:                                              ; preds = %115
  %121 = load i8*, i8** %3, align 8
  %122 = call i64 @strcasecmp(i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i8*, i8** %3, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124, %120
  store i32 5, i32* %2, align 4
  br label %220

129:                                              ; preds = %124
  %130 = load i8*, i8** %3, align 8
  %131 = call i64 @strcasecmp(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i8*, i8** %3, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %129
  store i32 6, i32* %2, align 4
  br label %220

138:                                              ; preds = %133
  %139 = load i8*, i8** %3, align 8
  %140 = call i64 @strcasecmp(i8* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i8*, i8** %3, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142, %138
  store i32 7, i32* %2, align 4
  br label %220

147:                                              ; preds = %142
  %148 = load i8*, i8** %3, align 8
  %149 = call i64 @strcasecmp(i8* %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i8*, i8** %3, align 8
  %153 = call i64 @strcmp(i8* %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151, %147
  store i32 90, i32* %2, align 4
  br label %220

156:                                              ; preds = %151
  %157 = load i8*, i8** %3, align 8
  %158 = call i64 @strcasecmp(i8* %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i8*, i8** %3, align 8
  %162 = call i64 @strcmp(i8* %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160, %156
  store i32 91, i32* %2, align 4
  br label %220

165:                                              ; preds = %160
  %166 = load i8*, i8** %3, align 8
  %167 = call i64 @strcasecmp(i8* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i8*, i8** %3, align 8
  %171 = call i64 @strcmp(i8* %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169, %165
  store i32 92, i32* %2, align 4
  br label %220

174:                                              ; preds = %169
  %175 = load i8*, i8** %3, align 8
  %176 = call i64 @strcasecmp(i8* %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i8*, i8** %3, align 8
  %180 = call i64 @strcmp(i8* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178, %174
  store i32 93, i32* %2, align 4
  br label %220

183:                                              ; preds = %178
  %184 = load i8*, i8** %3, align 8
  %185 = call i64 @strcasecmp(i8* %184, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = load i8*, i8** %3, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %187, %183
  store i32 94, i32* %2, align 4
  br label %220

192:                                              ; preds = %187
  %193 = load i8*, i8** %3, align 8
  %194 = call i64 @strcasecmp(i8* %193, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0))
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %192
  %197 = load i8*, i8** %3, align 8
  %198 = call i64 @strcmp(i8* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196, %192
  store i32 95, i32* %2, align 4
  br label %220

201:                                              ; preds = %196
  %202 = load i8*, i8** %3, align 8
  %203 = call i64 @strcasecmp(i8* %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %201
  %206 = load i8*, i8** %3, align 8
  %207 = call i64 @strcmp(i8* %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205, %201
  store i32 96, i32* %2, align 4
  br label %220

210:                                              ; preds = %205
  %211 = load i8*, i8** %3, align 8
  %212 = call i64 @strcasecmp(i8* %211, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0))
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = load i8*, i8** %3, align 8
  %216 = call i64 @strcmp(i8* %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0))
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %214, %210
  store i32 97, i32* %2, align 4
  br label %220

219:                                              ; preds = %214
  store i32 -1, i32* %2, align 4
  br label %220

220:                                              ; preds = %219, %218, %209, %200, %191, %182, %173, %164, %155, %146, %137, %128, %119, %110, %101, %92, %83, %74, %69, %61, %60, %44, %43, %36
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isxdigit(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @colour_join_rgb(i32, i32, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
