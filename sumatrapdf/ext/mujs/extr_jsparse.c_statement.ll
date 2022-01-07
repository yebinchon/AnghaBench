; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_statement.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i64 }
%struct.TYPE_41__ = type { i32, i8 }

@TK_VAR = common dso_local global i8 0, align 1
@VAR = common dso_local global i32 0, align 4
@EMPTY = common dso_local global i32 0, align 4
@TK_IF = common dso_local global i8 0, align 1
@TK_ELSE = common dso_local global i8 0, align 1
@IF = common dso_local global i32 0, align 4
@TK_DO = common dso_local global i8 0, align 1
@TK_WHILE = common dso_local global i8 0, align 1
@DO = common dso_local global i32 0, align 4
@WHILE = common dso_local global i32 0, align 4
@TK_FOR = common dso_local global i8 0, align 1
@TK_CONTINUE = common dso_local global i8 0, align 1
@CONTINUE = common dso_local global i32 0, align 4
@TK_BREAK = common dso_local global i8 0, align 1
@BREAK = common dso_local global i32 0, align 4
@TK_RETURN = common dso_local global i8 0, align 1
@RETURN = common dso_local global i32 0, align 4
@TK_WITH = common dso_local global i8 0, align 1
@WITH = common dso_local global i32 0, align 4
@TK_SWITCH = common dso_local global i8 0, align 1
@SWITCH = common dso_local global i32 0, align 4
@TK_THROW = common dso_local global i8 0, align 1
@THROW = common dso_local global i32 0, align 4
@TK_TRY = common dso_local global i8 0, align 1
@TK_CATCH = common dso_local global i8 0, align 1
@TK_FINALLY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [60 x i8] c"unexpected token in try: %s (expected 'catch' or 'finally')\00", align 1
@TRY = common dso_local global i32 0, align 4
@TK_DEBUGGER = common dso_local global i8 0, align 1
@DEBUGGER = common dso_local global i32 0, align 4
@TK_FUNCTION = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"function statements are not standard\00", align 1
@TK_IDENTIFIER = common dso_local global i8 0, align 1
@EXP_IDENTIFIER = common dso_local global i64 0, align 8
@AST_IDENTIFIER = common dso_local global i64 0, align 8
@LABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_42__* (%struct.TYPE_41__*)* @statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_42__* @statement(%struct.TYPE_41__* %0) #0 {
  %2 = alloca %struct.TYPE_41__*, align 8
  %3 = alloca %struct.TYPE_42__*, align 8
  %4 = alloca %struct.TYPE_42__*, align 8
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca %struct.TYPE_42__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %2, align 8
  %9 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i32 (...) @INCREC()
  %13 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %13, i32 0, i32 1
  %15 = load i8, i8* %14, align 4
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 123
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %20 = call %struct.TYPE_42__* @block(%struct.TYPE_41__* %19)
  store %struct.TYPE_42__* %20, %struct.TYPE_42__** %7, align 8
  br label %357

21:                                               ; preds = %1
  %22 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %23 = load i8, i8* @TK_VAR, align 1
  %24 = call i64 @jsP_accept(%struct.TYPE_41__* %22, i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %28 = call %struct.TYPE_42__* @vardeclist(%struct.TYPE_41__* %27, i32 0)
  store %struct.TYPE_42__* %28, %struct.TYPE_42__** %3, align 8
  %29 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %30 = call i32 @semicolon(%struct.TYPE_41__* %29)
  %31 = load i32, i32* @VAR, align 4
  %32 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %33 = call %struct.TYPE_42__* @STM1(i32 %31, %struct.TYPE_42__* %32)
  store %struct.TYPE_42__* %33, %struct.TYPE_42__** %7, align 8
  br label %356

34:                                               ; preds = %21
  %35 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %36 = call i64 @jsP_accept(%struct.TYPE_41__* %35, i8 signext 59)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EMPTY, align 4
  %40 = call %struct.TYPE_42__* @STM0(i32 %39)
  store %struct.TYPE_42__* %40, %struct.TYPE_42__** %7, align 8
  br label %355

41:                                               ; preds = %34
  %42 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %43 = load i8, i8* @TK_IF, align 1
  %44 = call i64 @jsP_accept(%struct.TYPE_41__* %42, i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %48 = call i32 @jsP_expect(%struct.TYPE_41__* %47, i8 signext 40)
  %49 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %50 = call %struct.TYPE_42__* @expression(%struct.TYPE_41__* %49, i32 0)
  store %struct.TYPE_42__* %50, %struct.TYPE_42__** %3, align 8
  %51 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %52 = call i32 @jsP_expect(%struct.TYPE_41__* %51, i8 signext 41)
  %53 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %54 = call %struct.TYPE_42__* @statement(%struct.TYPE_41__* %53)
  store %struct.TYPE_42__* %54, %struct.TYPE_42__** %4, align 8
  %55 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %56 = load i8, i8* @TK_ELSE, align 1
  %57 = call i64 @jsP_accept(%struct.TYPE_41__* %55, i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %61 = call %struct.TYPE_42__* @statement(%struct.TYPE_41__* %60)
  store %struct.TYPE_42__* %61, %struct.TYPE_42__** %5, align 8
  br label %63

62:                                               ; preds = %46
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %5, align 8
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* @IF, align 4
  %65 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %66 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %67 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %68 = call %struct.TYPE_42__* @STM3(i32 %64, %struct.TYPE_42__* %65, %struct.TYPE_42__* %66, %struct.TYPE_42__* %67)
  store %struct.TYPE_42__* %68, %struct.TYPE_42__** %7, align 8
  br label %354

69:                                               ; preds = %41
  %70 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %71 = load i8, i8* @TK_DO, align 1
  %72 = call i64 @jsP_accept(%struct.TYPE_41__* %70, i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %76 = call %struct.TYPE_42__* @statement(%struct.TYPE_41__* %75)
  store %struct.TYPE_42__* %76, %struct.TYPE_42__** %3, align 8
  %77 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %78 = load i8, i8* @TK_WHILE, align 1
  %79 = call i32 @jsP_expect(%struct.TYPE_41__* %77, i8 signext %78)
  %80 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %81 = call i32 @jsP_expect(%struct.TYPE_41__* %80, i8 signext 40)
  %82 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %83 = call %struct.TYPE_42__* @expression(%struct.TYPE_41__* %82, i32 0)
  store %struct.TYPE_42__* %83, %struct.TYPE_42__** %4, align 8
  %84 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %85 = call i32 @jsP_expect(%struct.TYPE_41__* %84, i8 signext 41)
  %86 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %87 = call i32 @semicolon(%struct.TYPE_41__* %86)
  %88 = load i32, i32* @DO, align 4
  %89 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %90 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %91 = call %struct.TYPE_42__* @STM2(i32 %88, %struct.TYPE_42__* %89, %struct.TYPE_42__* %90)
  store %struct.TYPE_42__* %91, %struct.TYPE_42__** %7, align 8
  br label %353

92:                                               ; preds = %69
  %93 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %94 = load i8, i8* @TK_WHILE, align 1
  %95 = call i64 @jsP_accept(%struct.TYPE_41__* %93, i8 signext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %99 = call i32 @jsP_expect(%struct.TYPE_41__* %98, i8 signext 40)
  %100 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %101 = call %struct.TYPE_42__* @expression(%struct.TYPE_41__* %100, i32 0)
  store %struct.TYPE_42__* %101, %struct.TYPE_42__** %3, align 8
  %102 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %103 = call i32 @jsP_expect(%struct.TYPE_41__* %102, i8 signext 41)
  %104 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %105 = call %struct.TYPE_42__* @statement(%struct.TYPE_41__* %104)
  store %struct.TYPE_42__* %105, %struct.TYPE_42__** %4, align 8
  %106 = load i32, i32* @WHILE, align 4
  %107 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %108 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %109 = call %struct.TYPE_42__* @STM2(i32 %106, %struct.TYPE_42__* %107, %struct.TYPE_42__* %108)
  store %struct.TYPE_42__* %109, %struct.TYPE_42__** %7, align 8
  br label %352

110:                                              ; preds = %92
  %111 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %112 = load i8, i8* @TK_FOR, align 1
  %113 = call i64 @jsP_accept(%struct.TYPE_41__* %111, i8 signext %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call %struct.TYPE_42__* @forstatement(%struct.TYPE_41__* %116, i32 %117)
  store %struct.TYPE_42__* %118, %struct.TYPE_42__** %7, align 8
  br label %351

119:                                              ; preds = %110
  %120 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %121 = load i8, i8* @TK_CONTINUE, align 1
  %122 = call i64 @jsP_accept(%struct.TYPE_41__* %120, i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %126 = call %struct.TYPE_42__* @identifieropt(%struct.TYPE_41__* %125)
  store %struct.TYPE_42__* %126, %struct.TYPE_42__** %3, align 8
  %127 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %128 = call i32 @semicolon(%struct.TYPE_41__* %127)
  %129 = load i32, i32* @CONTINUE, align 4
  %130 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %131 = call %struct.TYPE_42__* @STM1(i32 %129, %struct.TYPE_42__* %130)
  store %struct.TYPE_42__* %131, %struct.TYPE_42__** %7, align 8
  br label %350

132:                                              ; preds = %119
  %133 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %134 = load i8, i8* @TK_BREAK, align 1
  %135 = call i64 @jsP_accept(%struct.TYPE_41__* %133, i8 signext %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %139 = call %struct.TYPE_42__* @identifieropt(%struct.TYPE_41__* %138)
  store %struct.TYPE_42__* %139, %struct.TYPE_42__** %3, align 8
  %140 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %141 = call i32 @semicolon(%struct.TYPE_41__* %140)
  %142 = load i32, i32* @BREAK, align 4
  %143 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %144 = call %struct.TYPE_42__* @STM1(i32 %142, %struct.TYPE_42__* %143)
  store %struct.TYPE_42__* %144, %struct.TYPE_42__** %7, align 8
  br label %349

145:                                              ; preds = %132
  %146 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %147 = load i8, i8* @TK_RETURN, align 1
  %148 = call i64 @jsP_accept(%struct.TYPE_41__* %146, i8 signext %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %178

150:                                              ; preds = %145
  %151 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %151, i32 0, i32 1
  %153 = load i8, i8* %152, align 4
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 59
  br i1 %155, label %156, label %171

156:                                              ; preds = %150
  %157 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %157, i32 0, i32 1
  %159 = load i8, i8* %158, align 4
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 125
  br i1 %161, label %162, label %171

162:                                              ; preds = %156
  %163 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %163, i32 0, i32 1
  %165 = load i8, i8* %164, align 4
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %170 = call %struct.TYPE_42__* @expression(%struct.TYPE_41__* %169, i32 0)
  store %struct.TYPE_42__* %170, %struct.TYPE_42__** %3, align 8
  br label %172

171:                                              ; preds = %162, %156, %150
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %3, align 8
  br label %172

172:                                              ; preds = %171, %168
  %173 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %174 = call i32 @semicolon(%struct.TYPE_41__* %173)
  %175 = load i32, i32* @RETURN, align 4
  %176 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %177 = call %struct.TYPE_42__* @STM1(i32 %175, %struct.TYPE_42__* %176)
  store %struct.TYPE_42__* %177, %struct.TYPE_42__** %7, align 8
  br label %348

178:                                              ; preds = %145
  %179 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %180 = load i8, i8* @TK_WITH, align 1
  %181 = call i64 @jsP_accept(%struct.TYPE_41__* %179, i8 signext %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %178
  %184 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %185 = call i32 @jsP_expect(%struct.TYPE_41__* %184, i8 signext 40)
  %186 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %187 = call %struct.TYPE_42__* @expression(%struct.TYPE_41__* %186, i32 0)
  store %struct.TYPE_42__* %187, %struct.TYPE_42__** %3, align 8
  %188 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %189 = call i32 @jsP_expect(%struct.TYPE_41__* %188, i8 signext 41)
  %190 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %191 = call %struct.TYPE_42__* @statement(%struct.TYPE_41__* %190)
  store %struct.TYPE_42__* %191, %struct.TYPE_42__** %4, align 8
  %192 = load i32, i32* @WITH, align 4
  %193 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %194 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %195 = call %struct.TYPE_42__* @STM2(i32 %192, %struct.TYPE_42__* %193, %struct.TYPE_42__* %194)
  store %struct.TYPE_42__* %195, %struct.TYPE_42__** %7, align 8
  br label %347

196:                                              ; preds = %178
  %197 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %198 = load i8, i8* @TK_SWITCH, align 1
  %199 = call i64 @jsP_accept(%struct.TYPE_41__* %197, i8 signext %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %218

201:                                              ; preds = %196
  %202 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %203 = call i32 @jsP_expect(%struct.TYPE_41__* %202, i8 signext 40)
  %204 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %205 = call %struct.TYPE_42__* @expression(%struct.TYPE_41__* %204, i32 0)
  store %struct.TYPE_42__* %205, %struct.TYPE_42__** %3, align 8
  %206 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %207 = call i32 @jsP_expect(%struct.TYPE_41__* %206, i8 signext 41)
  %208 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %209 = call i32 @jsP_expect(%struct.TYPE_41__* %208, i8 signext 123)
  %210 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %211 = call %struct.TYPE_42__* @caselist(%struct.TYPE_41__* %210)
  store %struct.TYPE_42__* %211, %struct.TYPE_42__** %4, align 8
  %212 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %213 = call i32 @jsP_expect(%struct.TYPE_41__* %212, i8 signext 125)
  %214 = load i32, i32* @SWITCH, align 4
  %215 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %216 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %217 = call %struct.TYPE_42__* @STM2(i32 %214, %struct.TYPE_42__* %215, %struct.TYPE_42__* %216)
  store %struct.TYPE_42__* %217, %struct.TYPE_42__** %7, align 8
  br label %346

218:                                              ; preds = %196
  %219 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %220 = load i8, i8* @TK_THROW, align 1
  %221 = call i64 @jsP_accept(%struct.TYPE_41__* %219, i8 signext %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %218
  %224 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %225 = call %struct.TYPE_42__* @expression(%struct.TYPE_41__* %224, i32 0)
  store %struct.TYPE_42__* %225, %struct.TYPE_42__** %3, align 8
  %226 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %227 = call i32 @semicolon(%struct.TYPE_41__* %226)
  %228 = load i32, i32* @THROW, align 4
  %229 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %230 = call %struct.TYPE_42__* @STM1(i32 %228, %struct.TYPE_42__* %229)
  store %struct.TYPE_42__* %230, %struct.TYPE_42__** %7, align 8
  br label %345

231:                                              ; preds = %218
  %232 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %233 = load i8, i8* @TK_TRY, align 1
  %234 = call i64 @jsP_accept(%struct.TYPE_41__* %232, i8 signext %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %280

236:                                              ; preds = %231
  %237 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %238 = call %struct.TYPE_42__* @block(%struct.TYPE_41__* %237)
  store %struct.TYPE_42__* %238, %struct.TYPE_42__** %3, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %6, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %5, align 8
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %4, align 8
  %239 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %240 = load i8, i8* @TK_CATCH, align 1
  %241 = call i64 @jsP_accept(%struct.TYPE_41__* %239, i8 signext %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %236
  %244 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %245 = call i32 @jsP_expect(%struct.TYPE_41__* %244, i8 signext 40)
  %246 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %247 = call %struct.TYPE_42__* @identifier(%struct.TYPE_41__* %246)
  store %struct.TYPE_42__* %247, %struct.TYPE_42__** %4, align 8
  %248 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %249 = call i32 @jsP_expect(%struct.TYPE_41__* %248, i8 signext 41)
  %250 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %251 = call %struct.TYPE_42__* @block(%struct.TYPE_41__* %250)
  store %struct.TYPE_42__* %251, %struct.TYPE_42__** %5, align 8
  br label %252

252:                                              ; preds = %243, %236
  %253 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %254 = load i8, i8* @TK_FINALLY, align 1
  %255 = call i64 @jsP_accept(%struct.TYPE_41__* %253, i8 signext %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %259 = call %struct.TYPE_42__* @block(%struct.TYPE_41__* %258)
  store %struct.TYPE_42__* %259, %struct.TYPE_42__** %6, align 8
  br label %260

260:                                              ; preds = %257, %252
  %261 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %262 = icmp ne %struct.TYPE_42__* %261, null
  br i1 %262, label %273, label %263

263:                                              ; preds = %260
  %264 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %265 = icmp ne %struct.TYPE_42__* %264, null
  br i1 %265, label %273, label %266

266:                                              ; preds = %263
  %267 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %268 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %268, i32 0, i32 1
  %270 = load i8, i8* %269, align 4
  %271 = call i32 @jsY_tokenstring(i8 signext %270)
  %272 = call i32 @jsP_error(%struct.TYPE_41__* %267, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %266, %263, %260
  %274 = load i32, i32* @TRY, align 4
  %275 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %276 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %277 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %278 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %279 = call %struct.TYPE_42__* @STM4(i32 %274, %struct.TYPE_42__* %275, %struct.TYPE_42__* %276, %struct.TYPE_42__* %277, %struct.TYPE_42__* %278)
  store %struct.TYPE_42__* %279, %struct.TYPE_42__** %7, align 8
  br label %344

280:                                              ; preds = %231
  %281 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %282 = load i8, i8* @TK_DEBUGGER, align 1
  %283 = call i64 @jsP_accept(%struct.TYPE_41__* %281, i8 signext %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %287 = call i32 @semicolon(%struct.TYPE_41__* %286)
  %288 = load i32, i32* @DEBUGGER, align 4
  %289 = call %struct.TYPE_42__* @STM0(i32 %288)
  store %struct.TYPE_42__* %289, %struct.TYPE_42__** %7, align 8
  br label %343

290:                                              ; preds = %280
  %291 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %292 = load i8, i8* @TK_FUNCTION, align 1
  %293 = call i64 @jsP_accept(%struct.TYPE_41__* %291, i8 signext %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %290
  %296 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %297 = call i32 @jsP_warning(%struct.TYPE_41__* %296, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %298 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %299 = load i32, i32* %8, align 4
  %300 = call %struct.TYPE_42__* @funstm(%struct.TYPE_41__* %298, i32 %299)
  store %struct.TYPE_42__* %300, %struct.TYPE_42__** %7, align 8
  br label %342

301:                                              ; preds = %290
  %302 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %302, i32 0, i32 1
  %304 = load i8, i8* %303, align 4
  %305 = sext i8 %304 to i32
  %306 = load i8, i8* @TK_IDENTIFIER, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %305, %307
  br i1 %308, label %309, label %336

309:                                              ; preds = %301
  %310 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %311 = call %struct.TYPE_42__* @expression(%struct.TYPE_41__* %310, i32 0)
  store %struct.TYPE_42__* %311, %struct.TYPE_42__** %3, align 8
  %312 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @EXP_IDENTIFIER, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %331

317:                                              ; preds = %309
  %318 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %319 = call i64 @jsP_accept(%struct.TYPE_41__* %318, i8 signext 58)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %331

321:                                              ; preds = %317
  %322 = load i64, i64* @AST_IDENTIFIER, align 8
  %323 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %323, i32 0, i32 0
  store i64 %322, i64* %324, align 8
  %325 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %326 = call %struct.TYPE_42__* @statement(%struct.TYPE_41__* %325)
  store %struct.TYPE_42__* %326, %struct.TYPE_42__** %4, align 8
  %327 = load i32, i32* @LABEL, align 4
  %328 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %329 = load %struct.TYPE_42__*, %struct.TYPE_42__** %4, align 8
  %330 = call %struct.TYPE_42__* @STM2(i32 %327, %struct.TYPE_42__* %328, %struct.TYPE_42__* %329)
  store %struct.TYPE_42__* %330, %struct.TYPE_42__** %7, align 8
  br label %335

331:                                              ; preds = %317, %309
  %332 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %333 = call i32 @semicolon(%struct.TYPE_41__* %332)
  %334 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  store %struct.TYPE_42__* %334, %struct.TYPE_42__** %7, align 8
  br label %335

335:                                              ; preds = %331, %321
  br label %341

336:                                              ; preds = %301
  %337 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %338 = call %struct.TYPE_42__* @expression(%struct.TYPE_41__* %337, i32 0)
  store %struct.TYPE_42__* %338, %struct.TYPE_42__** %7, align 8
  %339 = load %struct.TYPE_41__*, %struct.TYPE_41__** %2, align 8
  %340 = call i32 @semicolon(%struct.TYPE_41__* %339)
  br label %341

341:                                              ; preds = %336, %335
  br label %342

342:                                              ; preds = %341, %295
  br label %343

343:                                              ; preds = %342, %285
  br label %344

344:                                              ; preds = %343, %273
  br label %345

345:                                              ; preds = %344, %223
  br label %346

346:                                              ; preds = %345, %201
  br label %347

347:                                              ; preds = %346, %183
  br label %348

348:                                              ; preds = %347, %172
  br label %349

349:                                              ; preds = %348, %137
  br label %350

350:                                              ; preds = %349, %124
  br label %351

351:                                              ; preds = %350, %115
  br label %352

352:                                              ; preds = %351, %97
  br label %353

353:                                              ; preds = %352, %74
  br label %354

354:                                              ; preds = %353, %63
  br label %355

355:                                              ; preds = %354, %38
  br label %356

356:                                              ; preds = %355, %26
  br label %357

357:                                              ; preds = %356, %18
  %358 = call i32 (...) @DECREC()
  %359 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  ret %struct.TYPE_42__* %359
}

declare dso_local i32 @INCREC(...) #1

declare dso_local %struct.TYPE_42__* @block(%struct.TYPE_41__*) #1

declare dso_local i64 @jsP_accept(%struct.TYPE_41__*, i8 signext) #1

declare dso_local %struct.TYPE_42__* @vardeclist(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @semicolon(%struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_42__* @STM1(i32, %struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @STM0(i32) #1

declare dso_local i32 @jsP_expect(%struct.TYPE_41__*, i8 signext) #1

declare dso_local %struct.TYPE_42__* @expression(%struct.TYPE_41__*, i32) #1

declare dso_local %struct.TYPE_42__* @STM3(i32, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @STM2(i32, %struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_42__* @forstatement(%struct.TYPE_41__*, i32) #1

declare dso_local %struct.TYPE_42__* @identifieropt(%struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_42__* @caselist(%struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_42__* @identifier(%struct.TYPE_41__*) #1

declare dso_local i32 @jsP_error(%struct.TYPE_41__*, i8*, i32) #1

declare dso_local i32 @jsY_tokenstring(i8 signext) #1

declare dso_local %struct.TYPE_42__* @STM4(i32, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*, %struct.TYPE_42__*) #1

declare dso_local i32 @jsP_warning(%struct.TYPE_41__*, i8*) #1

declare dso_local %struct.TYPE_42__* @funstm(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @DECREC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
