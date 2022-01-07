; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/loader/extr_main.c_process_switches.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/loader/extr_main.c_process_switches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"trans\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@ulGlobalVerbose = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"install\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"uninstall\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ser\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"LOADER: error: unknown switch %s\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"LOADER: error: conflicting switch %s\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"LOADER: error: additional filename %s\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"LOADER: error: missing filename\0A\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"LOADER: no action specified specifed on commandline\0A\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"LOADER: an internal error has occurred at commandline parsing\0A\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"LOADER: trying to translate file %s...\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"LOADER: file %s has been translated\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"LOADER: error while translating file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_switches(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %7, align 8
  store i32 134, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %5, align 4
  br label %11

11:                                               ; preds = %173, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %176

15:                                               ; preds = %11
  %16 = load i8**, i8*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 45
  br i1 %24, label %25, label %164

25:                                               ; preds = %15
  store i32 134, i32* %10, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %25
  store i32 135, i32* %10, align 4
  br label %141

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %36
  store i32 128, i32* %10, align 4
  br label %140

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %45
  store i32 130, i32* %10, align 4
  br label %139

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54
  store i32 133, i32* %10, align 4
  br label %138

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67, %63
  %72 = load i64, i64* @ulGlobalVerbose, align 8
  %73 = add nsw i64 %72, 1
  %74 = load i64, i64* @ulGlobalVerbose, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i64, i64* @ulGlobalVerbose, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* @ulGlobalVerbose, align 8
  br label %79

79:                                               ; preds = %76, %71
  br label %137

80:                                               ; preds = %67
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %6, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %80
  store i32 136, i32* %10, align 4
  br label %136

89:                                               ; preds = %84
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %6, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %89
  store i32 129, i32* %10, align 4
  br label %135

98:                                               ; preds = %93
  %99 = load i8*, i8** %6, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %6, align 8
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %98
  store i32 132, i32* %10, align 4
  br label %134

107:                                              ; preds = %102
  %108 = load i8*, i8** %6, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %6, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %107
  store i32 137, i32* %10, align 4
  br label %133

116:                                              ; preds = %111
  %117 = load i8*, i8** %6, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i8*, i8** %6, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %116
  store i32 131, i32* %10, align 4
  br label %132

125:                                              ; preds = %120
  %126 = load i8**, i8*** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* %130)
  store i32 1, i32* %9, align 4
  br label %132

132:                                              ; preds = %125, %124
  br label %133

133:                                              ; preds = %132, %115
  br label %134

134:                                              ; preds = %133, %106
  br label %135

135:                                              ; preds = %134, %97
  br label %136

136:                                              ; preds = %135, %88
  br label %137

137:                                              ; preds = %136, %79
  br label %138

138:                                              ; preds = %137, %62
  br label %139

139:                                              ; preds = %138, %53
  br label %140

140:                                              ; preds = %139, %44
  br label %141

141:                                              ; preds = %140, %35
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 134
  br i1 %143, label %144, label %163

144:                                              ; preds = %141
  %145 = load i32, i32* %8, align 4
  %146 = icmp eq i32 %145, 134
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %8, align 4
  br label %162

149:                                              ; preds = %144
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %161

154:                                              ; preds = %149
  %155 = load i8**, i8*** %4, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i8* %159)
  store i32 1, i32* %9, align 4
  br label %161

161:                                              ; preds = %154, %153
  br label %162

162:                                              ; preds = %161, %147
  br label %163

163:                                              ; preds = %162, %141
  br label %172

164:                                              ; preds = %15
  %165 = load i8*, i8** %7, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i8*, i8** %6, align 8
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i8* %168)
  store i32 1, i32* %9, align 4
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i8*, i8** %6, align 8
  store i8* %171, i8** %7, align 8
  br label %172

172:                                              ; preds = %170, %163
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  br label %11

176:                                              ; preds = %11
  %177 = load i32, i32* %8, align 4
  switch i32 %177, label %191 [
    i32 130, label %178
    i32 135, label %178
    i32 128, label %178
    i32 133, label %184
    i32 132, label %185
    i32 137, label %187
    i32 134, label %189
  ]

178:                                              ; preds = %176, %176, %176
  %179 = load i8*, i8** %7, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %183

183:                                              ; preds = %181, %178
  br label %193

184:                                              ; preds = %176
  br label %193

185:                                              ; preds = %176
  %186 = call i32 (...) @showstatus()
  br label %193

187:                                              ; preds = %176
  %188 = call i32 (...) @dobreak()
  br label %193

189:                                              ; preds = %176
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.24, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %193

191:                                              ; preds = %176
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %193

193:                                              ; preds = %191, %189, %187, %185, %184, %183
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %216, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %8, align 4
  switch i32 %197, label %215 [
    i32 130, label %198
    i32 135, label %211
    i32 128, label %211
    i32 133, label %211
  ]

198:                                              ; preds = %196
  %199 = load i8*, i8** %7, align 8
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* %199)
  %201 = load i8*, i8** %7, align 8
  %202 = call i32 @process_file(i8* %201)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load i8*, i8** %7, align 8
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i8* %205)
  br label %210

207:                                              ; preds = %198
  %208 = load i8*, i8** %7, align 8
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i8* %208)
  br label %210

210:                                              ; preds = %207, %204
  br label %215

211:                                              ; preds = %196, %196, %196
  %212 = load i32, i32* %8, align 4
  %213 = load i8*, i8** %7, align 8
  %214 = call i32 @change_symbols(i32 %212, i8* %213)
  br label %215

215:                                              ; preds = %196, %211, %210
  br label %216

216:                                              ; preds = %215, %193
  %217 = load i32, i32* %9, align 4
  ret i32 %217
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @showstatus(...) #1

declare dso_local i32 @dobreak(...) #1

declare dso_local i32 @process_file(i8*) #1

declare dso_local i32 @change_symbols(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
