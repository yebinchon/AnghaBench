; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_ReportOutput.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_ReportOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i32, i32, i32, %struct.rule*, %struct.symbol**, i64, %struct.state** }
%struct.rule = type { i32, %struct.TYPE_4__*, %struct.rule* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.symbol = type { i8*, i64, i32, i64, i64, i64 }
%struct.state = type { i32, %struct.action*, %struct.config*, %struct.config* }
%struct.action = type { %struct.action* }
%struct.config = type { i64, %struct.config*, %struct.config*, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"State %d:\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"    %5s \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"----------------------------------------------------\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Symbols:\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"The first-set of non-terminals is shown after the name.\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"  %3d: %s\00", align 1
@NONTERMINAL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" <lambda>\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c" (precedence=%d)\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Syntax-only Symbols:\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"The following symbols never carry semantic content.\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Rules:\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%4d: \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c" [%s precedence=%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReportOutput(%struct.lemon* %0) #0 {
  %2 = alloca %struct.lemon*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.state*, align 8
  %6 = alloca %struct.config*, align 8
  %7 = alloca %struct.action*, align 8
  %8 = alloca %struct.rule*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [20 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.symbol*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.symbol*, align 8
  store %struct.lemon* %0, %struct.lemon** %2, align 8
  %15 = load %struct.lemon*, %struct.lemon** %2, align 8
  %16 = call i32* @file_open(%struct.lemon* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %339

20:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %124, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.lemon*, %struct.lemon** %2, align 8
  %24 = getelementptr inbounds %struct.lemon, %struct.lemon* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %127

27:                                               ; preds = %21
  %28 = load %struct.lemon*, %struct.lemon** %2, align 8
  %29 = getelementptr inbounds %struct.lemon, %struct.lemon* %28, i32 0, i32 6
  %30 = load %struct.state**, %struct.state*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.state*, %struct.state** %30, i64 %32
  %34 = load %struct.state*, %struct.state** %33, align 8
  store %struct.state* %34, %struct.state** %5, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.state*, %struct.state** %5, align 8
  %37 = getelementptr inbounds %struct.state, %struct.state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.lemon*, %struct.lemon** %2, align 8
  %41 = getelementptr inbounds %struct.lemon, %struct.lemon* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %27
  %45 = load %struct.state*, %struct.state** %5, align 8
  %46 = getelementptr inbounds %struct.state, %struct.state* %45, i32 0, i32 3
  %47 = load %struct.config*, %struct.config** %46, align 8
  store %struct.config* %47, %struct.config** %6, align 8
  br label %52

48:                                               ; preds = %27
  %49 = load %struct.state*, %struct.state** %5, align 8
  %50 = getelementptr inbounds %struct.state, %struct.state* %49, i32 0, i32 2
  %51 = load %struct.config*, %struct.config** %50, align 8
  store %struct.config* %51, %struct.config** %6, align 8
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %98, %52
  %54 = load %struct.config*, %struct.config** %6, align 8
  %55 = icmp ne %struct.config* %54, null
  br i1 %55, label %56, label %99

56:                                               ; preds = %53
  %57 = load %struct.config*, %struct.config** %6, align 8
  %58 = getelementptr inbounds %struct.config, %struct.config* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.config*, %struct.config** %6, align 8
  %61 = getelementptr inbounds %struct.config, %struct.config* %60, i32 0, i32 6
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %56
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %68 = load %struct.config*, %struct.config** %6, align 8
  %69 = getelementptr inbounds %struct.config, %struct.config* %68, i32 0, i32 6
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @lemon_sprintf(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  br label %80

77:                                               ; preds = %56
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %66
  %81 = load i32*, i32** %9, align 8
  %82 = load %struct.config*, %struct.config** %6, align 8
  %83 = call i32 @ConfigPrint(i32* %81, %struct.config* %82)
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %86 = load %struct.lemon*, %struct.lemon** %2, align 8
  %87 = getelementptr inbounds %struct.lemon, %struct.lemon* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load %struct.config*, %struct.config** %6, align 8
  %92 = getelementptr inbounds %struct.config, %struct.config* %91, i32 0, i32 2
  %93 = load %struct.config*, %struct.config** %92, align 8
  store %struct.config* %93, %struct.config** %6, align 8
  br label %98

94:                                               ; preds = %80
  %95 = load %struct.config*, %struct.config** %6, align 8
  %96 = getelementptr inbounds %struct.config, %struct.config* %95, i32 0, i32 1
  %97 = load %struct.config*, %struct.config** %96, align 8
  store %struct.config* %97, %struct.config** %6, align 8
  br label %98

98:                                               ; preds = %94, %90
  br label %53

99:                                               ; preds = %53
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %102 = load %struct.state*, %struct.state** %5, align 8
  %103 = getelementptr inbounds %struct.state, %struct.state* %102, i32 0, i32 1
  %104 = load %struct.action*, %struct.action** %103, align 8
  store %struct.action* %104, %struct.action** %7, align 8
  br label %105

105:                                              ; preds = %117, %99
  %106 = load %struct.action*, %struct.action** %7, align 8
  %107 = icmp ne %struct.action* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load %struct.action*, %struct.action** %7, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i64 @PrintAction(%struct.action* %109, i32* %110, i32 30)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 (i32*, i8*, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.action*, %struct.action** %7, align 8
  %119 = getelementptr inbounds %struct.action, %struct.action* %118, i32 0, i32 0
  %120 = load %struct.action*, %struct.action** %119, align 8
  store %struct.action* %120, %struct.action** %7, align 8
  br label %105

121:                                              ; preds = %105
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %21

127:                                              ; preds = %21
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 (i32*, i8*, ...) @fprintf(i32* %128, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 (i32*, i8*, ...) @fprintf(i32* %132, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %219, %127
  %135 = load i32, i32* %3, align 4
  %136 = load %struct.lemon*, %struct.lemon** %2, align 8
  %137 = getelementptr inbounds %struct.lemon, %struct.lemon* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %222

140:                                              ; preds = %134
  %141 = load %struct.lemon*, %struct.lemon** %2, align 8
  %142 = getelementptr inbounds %struct.lemon, %struct.lemon* %141, i32 0, i32 4
  %143 = load %struct.symbol**, %struct.symbol*** %142, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.symbol*, %struct.symbol** %143, i64 %145
  %147 = load %struct.symbol*, %struct.symbol** %146, align 8
  store %struct.symbol* %147, %struct.symbol** %12, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = load i32, i32* %3, align 4
  %150 = load %struct.symbol*, %struct.symbol** %12, align 8
  %151 = getelementptr inbounds %struct.symbol, %struct.symbol* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i32*, i8*, ...) @fprintf(i32* %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %149, i8* %152)
  %154 = load %struct.symbol*, %struct.symbol** %12, align 8
  %155 = getelementptr inbounds %struct.symbol, %struct.symbol* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @NONTERMINAL, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %205

159:                                              ; preds = %140
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 (i32*, i8*, ...) @fprintf(i32* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %162 = load %struct.symbol*, %struct.symbol** %12, align 8
  %163 = getelementptr inbounds %struct.symbol, %struct.symbol* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load i32*, i32** %9, align 8
  %168 = call i32 (i32*, i8*, ...) @fprintf(i32* %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %159
  store i32 0, i32* %11, align 4
  br label %170

170:                                              ; preds = %201, %169
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.lemon*, %struct.lemon** %2, align 8
  %173 = getelementptr inbounds %struct.lemon, %struct.lemon* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %204

176:                                              ; preds = %170
  %177 = load %struct.symbol*, %struct.symbol** %12, align 8
  %178 = getelementptr inbounds %struct.symbol, %struct.symbol* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %176
  %182 = load %struct.symbol*, %struct.symbol** %12, align 8
  %183 = getelementptr inbounds %struct.symbol, %struct.symbol* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = call i64 @SetFind(i64 %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %181
  %189 = load i32*, i32** %9, align 8
  %190 = load %struct.lemon*, %struct.lemon** %2, align 8
  %191 = getelementptr inbounds %struct.lemon, %struct.lemon* %190, i32 0, i32 4
  %192 = load %struct.symbol**, %struct.symbol*** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.symbol*, %struct.symbol** %192, i64 %194
  %196 = load %struct.symbol*, %struct.symbol** %195, align 8
  %197 = getelementptr inbounds %struct.symbol, %struct.symbol* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (i32*, i8*, ...) @fprintf(i32* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %198)
  br label %200

200:                                              ; preds = %188, %181, %176
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  br label %170

204:                                              ; preds = %170
  br label %205

205:                                              ; preds = %204, %140
  %206 = load %struct.symbol*, %struct.symbol** %12, align 8
  %207 = getelementptr inbounds %struct.symbol, %struct.symbol* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = icmp sge i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %205
  %211 = load i32*, i32** %9, align 8
  %212 = load %struct.symbol*, %struct.symbol** %12, align 8
  %213 = getelementptr inbounds %struct.symbol, %struct.symbol* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i32*, i8*, ...) @fprintf(i32* %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %210, %205
  %217 = load i32*, i32** %9, align 8
  %218 = call i32 (i32*, i8*, ...) @fprintf(i32* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %3, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %3, align 4
  br label %134

222:                                              ; preds = %134
  %223 = load i32*, i32** %9, align 8
  %224 = call i32 (i32*, i8*, ...) @fprintf(i32* %223, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %225 = load i32*, i32** %9, align 8
  %226 = call i32 (i32*, i8*, ...) @fprintf(i32* %225, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %227 = load i32*, i32** %9, align 8
  %228 = call i32 (i32*, i8*, ...) @fprintf(i32* %227, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %229

229:                                              ; preds = %281, %222
  %230 = load i32, i32* %3, align 4
  %231 = load %struct.lemon*, %struct.lemon** %2, align 8
  %232 = getelementptr inbounds %struct.lemon, %struct.lemon* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %235, label %284

235:                                              ; preds = %229
  %236 = load %struct.lemon*, %struct.lemon** %2, align 8
  %237 = getelementptr inbounds %struct.lemon, %struct.lemon* %236, i32 0, i32 4
  %238 = load %struct.symbol**, %struct.symbol*** %237, align 8
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.symbol*, %struct.symbol** %238, i64 %240
  %242 = load %struct.symbol*, %struct.symbol** %241, align 8
  store %struct.symbol* %242, %struct.symbol** %14, align 8
  %243 = load %struct.symbol*, %struct.symbol** %14, align 8
  %244 = getelementptr inbounds %struct.symbol, %struct.symbol* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %235
  br label %281

248:                                              ; preds = %235
  %249 = load %struct.symbol*, %struct.symbol** %14, align 8
  %250 = getelementptr inbounds %struct.symbol, %struct.symbol* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = call i64 @strlen(i8* %251)
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %13, align 4
  %254 = load i32, i32* %4, align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %248
  %257 = load i32, i32* %4, align 4
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %257, %258
  %260 = icmp sgt i32 %259, 75
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load i32*, i32** %9, align 8
  %263 = call i32 (i32*, i8*, ...) @fprintf(i32* %262, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %264

264:                                              ; preds = %261, %256, %248
  %265 = load i32, i32* %4, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  %268 = load i32*, i32** %9, align 8
  %269 = call i32 (i32*, i8*, ...) @fprintf(i32* %268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %270 = load i32, i32* %4, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %4, align 4
  br label %272

272:                                              ; preds = %267, %264
  %273 = load i32*, i32** %9, align 8
  %274 = load %struct.symbol*, %struct.symbol** %14, align 8
  %275 = getelementptr inbounds %struct.symbol, %struct.symbol* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 (i32*, i8*, ...) @fprintf(i32* %273, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %276)
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* %4, align 4
  %280 = add nsw i32 %279, %278
  store i32 %280, i32* %4, align 4
  br label %281

281:                                              ; preds = %272, %247
  %282 = load i32, i32* %3, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %3, align 4
  br label %229

284:                                              ; preds = %229
  %285 = load i32, i32* %4, align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i32*, i32** %9, align 8
  %289 = call i32 (i32*, i8*, ...) @fprintf(i32* %288, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %290

290:                                              ; preds = %287, %284
  %291 = load i32*, i32** %9, align 8
  %292 = call i32 (i32*, i8*, ...) @fprintf(i32* %291, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %293 = load i32*, i32** %9, align 8
  %294 = call i32 (i32*, i8*, ...) @fprintf(i32* %293, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %295 = load %struct.lemon*, %struct.lemon** %2, align 8
  %296 = getelementptr inbounds %struct.lemon, %struct.lemon* %295, i32 0, i32 3
  %297 = load %struct.rule*, %struct.rule** %296, align 8
  store %struct.rule* %297, %struct.rule** %8, align 8
  br label %298

298:                                              ; preds = %332, %290
  %299 = load %struct.rule*, %struct.rule** %8, align 8
  %300 = icmp ne %struct.rule* %299, null
  br i1 %300, label %301, label %336

301:                                              ; preds = %298
  %302 = load i32*, i32** %9, align 8
  %303 = load %struct.rule*, %struct.rule** %8, align 8
  %304 = getelementptr inbounds %struct.rule, %struct.rule* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 (i32*, i8*, ...) @fprintf(i32* %302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %305)
  %307 = load i32*, i32** %9, align 8
  %308 = load %struct.rule*, %struct.rule** %8, align 8
  %309 = call i32 @rule_print(i32* %307, %struct.rule* %308)
  %310 = load i32*, i32** %9, align 8
  %311 = call i32 (i32*, i8*, ...) @fprintf(i32* %310, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %312 = load %struct.rule*, %struct.rule** %8, align 8
  %313 = getelementptr inbounds %struct.rule, %struct.rule* %312, i32 0, i32 1
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = icmp ne %struct.TYPE_4__* %314, null
  br i1 %315, label %316, label %329

316:                                              ; preds = %301
  %317 = load i32*, i32** %9, align 8
  %318 = load %struct.rule*, %struct.rule** %8, align 8
  %319 = getelementptr inbounds %struct.rule, %struct.rule* %318, i32 0, i32 1
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.rule*, %struct.rule** %8, align 8
  %324 = getelementptr inbounds %struct.rule, %struct.rule* %323, i32 0, i32 1
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = call i32 (i32*, i8*, ...) @fprintf(i32* %317, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* %322, i32 %327)
  br label %329

329:                                              ; preds = %316, %301
  %330 = load i32*, i32** %9, align 8
  %331 = call i32 (i32*, i8*, ...) @fprintf(i32* %330, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %332

332:                                              ; preds = %329
  %333 = load %struct.rule*, %struct.rule** %8, align 8
  %334 = getelementptr inbounds %struct.rule, %struct.rule* %333, i32 0, i32 2
  %335 = load %struct.rule*, %struct.rule** %334, align 8
  store %struct.rule* %335, %struct.rule** %8, align 8
  br label %298

336:                                              ; preds = %298
  %337 = load i32*, i32** %9, align 8
  %338 = call i32 @fclose(i32* %337)
  br label %339

339:                                              ; preds = %336, %19
  ret void
}

declare dso_local i32* @file_open(%struct.lemon*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @lemon_sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ConfigPrint(i32*, %struct.config*) #1

declare dso_local i64 @PrintAction(%struct.action*, i32*, i32) #1

declare dso_local i64 @SetFind(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @rule_print(i32*, %struct.rule*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
