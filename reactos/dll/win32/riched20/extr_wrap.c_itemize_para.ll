; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_itemize_para.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_itemize_para.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_34__, %struct.TYPE_27__* }
%struct.TYPE_34__ = type { %struct.TYPE_38__, %struct.TYPE_26__ }
%struct.TYPE_38__ = type { i32, i32, i32, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_31__*, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32, %struct.TYPE_33__ }
%struct.TYPE_37__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_35__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_27__* }

@LANG_USER_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@diParagraph = common dso_local global i64 0, align 8
@PFM_RTLPARA = common dso_local global i32 0, align 4
@PFE_RTLPARA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Base embedding level %d\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@richedit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got items:\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\09%d - %d RTL %d bidi level %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"before splitting runs into ranges\0A\00", align 1
@diRun = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"\09%d: %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@MERF_ENDPARA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"after splitting into ranges\0A\00", align 1
@MEPF_COMPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_29__*, %struct.TYPE_27__*)* @itemize_para to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @itemize_para(%struct.TYPE_29__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca [16 x %struct.TYPE_36__], align 16
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_37__, align 4
  %14 = alloca %struct.TYPE_35__, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_28__, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %4, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 1
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %5, align 8
  %20 = getelementptr inbounds [16 x %struct.TYPE_36__], [16 x %struct.TYPE_36__]* %8, i64 0, i64 0
  store %struct.TYPE_36__* %20, %struct.TYPE_36__** %9, align 8
  %21 = getelementptr inbounds [16 x %struct.TYPE_36__], [16 x %struct.TYPE_36__]* %8, i64 0, i64 0
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_36__* %21)
  store i32 %22, i32* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 0
  %24 = load i32, i32* @LANG_USER_DEFAULT, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 1
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 2
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 3
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 4
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 5
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 6
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 7
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 8
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 9
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 10
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 1
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 2
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 3
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 4
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 5
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 6
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 7
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 8
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 9
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 10
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 11
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @diParagraph, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PFM_RTLPARA, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %2
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PFE_RTLPARA, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 0
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %86, %78, %2
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %14, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %143
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %105 = call i64 @ScriptItemize(i32 %97, i32 %102, i32 %103, %struct.TYPE_37__* %13, %struct.TYPE_35__* %14, %struct.TYPE_36__* %104, i32* %11)
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* @E_OUTOFMEMORY, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %92
  br label %144

110:                                              ; preds = %92
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  %118 = icmp sgt i32 %111, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %144

120:                                              ; preds = %110
  %121 = load i32, i32* %10, align 4
  %122 = mul nsw i32 %121, 2
  store i32 %122, i32* %10, align 4
  %123 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %124 = getelementptr inbounds [16 x %struct.TYPE_36__], [16 x %struct.TYPE_36__]* %8, i64 0, i64 0
  %125 = icmp eq %struct.TYPE_36__* %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 16
  %130 = trunc i64 %129 to i32
  %131 = call %struct.TYPE_36__* @heap_alloc(i32 %130)
  store %struct.TYPE_36__* %131, %struct.TYPE_36__** %9, align 8
  br label %139

132:                                              ; preds = %120
  %133 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 16
  %137 = trunc i64 %136 to i32
  %138 = call %struct.TYPE_36__* @heap_realloc(%struct.TYPE_36__* %133, i32 %137)
  store %struct.TYPE_36__* %138, %struct.TYPE_36__** %9, align 8
  br label %139

139:                                              ; preds = %132, %126
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %141 = icmp ne %struct.TYPE_36__* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  br label %144

143:                                              ; preds = %139
  br label %92

144:                                              ; preds = %142, %119, %109
  %145 = load i64, i64* %15, align 8
  %146 = call i64 @FAILED(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %381

149:                                              ; preds = %144
  %150 = load i32, i32* @richedit, align 4
  %151 = call i64 @TRACE_ON(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %229

153:                                              ; preds = %149
  %154 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %155

155:                                              ; preds = %190, %153
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %193

159:                                              ; preds = %155
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %166, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %172, 1
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %165, i32 %173, i32 %180, i32 %188)
  br label %190

190:                                              ; preds = %159
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  br label %155

193:                                              ; preds = %155
  %194 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %196, align 8
  store %struct.TYPE_27__* %197, %struct.TYPE_27__** %7, align 8
  br label %198

198:                                              ; preds = %224, %193
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %203, align 8
  %205 = icmp ne %struct.TYPE_27__* %199, %204
  br i1 %205, label %206, label %228

206:                                              ; preds = %198
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @diRun, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %224

213:                                              ; preds = %206
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %220, i32 0, i32 0
  %222 = call i32 @debugstr_run(%struct.TYPE_38__* %221)
  %223 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %218, i32 %222)
  br label %224

224:                                              ; preds = %213, %212
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %226, align 8
  store %struct.TYPE_27__* %227, %struct.TYPE_27__** %7, align 8
  br label %198

228:                                              ; preds = %198
  br label %229

229:                                              ; preds = %228, %149
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %231, align 8
  store %struct.TYPE_27__* %232, %struct.TYPE_27__** %7, align 8
  store i32 0, i32* %12, align 4
  br label %233

233:                                              ; preds = %331, %229
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %238, align 8
  %240 = icmp ne %struct.TYPE_27__* %234, %239
  br i1 %240, label %241, label %335

241:                                              ; preds = %233
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @diRun, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  br label %331

248:                                              ; preds = %241
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i32 0, i32 0
  store %struct.TYPE_38__* %251, %struct.TYPE_38__** %6, align 8
  %252 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %255, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %254, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %248
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %12, align 4
  br label %266

266:                                              ; preds = %263, %248
  %267 = load i32, i32* @TRUE, align 4
  %268 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %272, i32 0, i32 0
  store i32 %267, i32* %273, align 4
  %274 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %274, i32 0, i32 3
  %276 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %277 = load i32, i32* %12, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %279, i32 0, i32 1
  %281 = bitcast %struct.TYPE_33__* %275 to i8*
  %282 = bitcast %struct.TYPE_33__* %280 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %281, i8* align 4 %282, i64 12, i1 false)
  %283 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @MERF_ENDPARA, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %266
  br label %335

290:                                              ; preds = %266
  %291 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = add nsw i32 %293, %296
  %298 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %299 = load i32, i32* %12, align 4
  %300 = add nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %298, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = icmp sgt i32 %297, %304
  br i1 %305, label %306, label %330

306:                                              ; preds = %290
  %307 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %308 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %309 = ptrtoint %struct.TYPE_27__* %308 to i32
  store i32 %309, i32* %307, align 8
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 1
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_27__* %311, %struct.TYPE_27__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 2
  %313 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %314 = load i32, i32* %12, align 4
  %315 = add nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %313, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = sub nsw i32 %319, %322
  %324 = sext i32 %323 to i64
  %325 = inttoptr i64 %324 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %325, %struct.TYPE_27__** %312, align 8
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @ME_SplitRunSimple(i32 %328, %struct.TYPE_28__* %16)
  br label %330

330:                                              ; preds = %306, %290
  br label %331

331:                                              ; preds = %330, %247
  %332 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %332, i32 0, i32 2
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %333, align 8
  store %struct.TYPE_27__* %334, %struct.TYPE_27__** %7, align 8
  br label %233

335:                                              ; preds = %289, %233
  %336 = load i32, i32* @richedit, align 4
  %337 = call i64 @TRACE_ON(i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %375

339:                                              ; preds = %335
  %340 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %341, i32 0, i32 2
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %342, align 8
  store %struct.TYPE_27__* %343, %struct.TYPE_27__** %7, align 8
  br label %344

344:                                              ; preds = %370, %339
  %345 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 1
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** %349, align 8
  %351 = icmp ne %struct.TYPE_27__* %345, %350
  br i1 %351, label %352, label %374

352:                                              ; preds = %344
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @diRun, align 8
  %357 = icmp ne i64 %355, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %352
  br label %370

359:                                              ; preds = %352
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %366, i32 0, i32 0
  %368 = call i32 @debugstr_run(%struct.TYPE_38__* %367)
  %369 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %364, i32 %368)
  br label %370

370:                                              ; preds = %359, %358
  %371 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %371, i32 0, i32 2
  %373 = load %struct.TYPE_27__*, %struct.TYPE_27__** %372, align 8
  store %struct.TYPE_27__* %373, %struct.TYPE_27__** %7, align 8
  br label %344

374:                                              ; preds = %344
  br label %375

375:                                              ; preds = %374, %335
  %376 = load i32, i32* @MEPF_COMPLEX, align 4
  %377 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = or i32 %379, %376
  store i32 %380, i32* %378, align 8
  br label %381

381:                                              ; preds = %375, %148
  %382 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %383 = getelementptr inbounds [16 x %struct.TYPE_36__], [16 x %struct.TYPE_36__]* %8, i64 0, i64 0
  %384 = icmp ne %struct.TYPE_36__* %382, %383
  br i1 %384, label %385, label %388

385:                                              ; preds = %381
  %386 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %387 = call i32 @heap_free(%struct.TYPE_36__* %386)
  br label %388

388:                                              ; preds = %385, %381
  %389 = load i64, i64* %15, align 8
  ret i64 %389
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_36__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @ScriptItemize(i32, i32, i32, %struct.TYPE_37__*, %struct.TYPE_35__*, %struct.TYPE_36__*, i32*) #1

declare dso_local %struct.TYPE_36__* @heap_alloc(i32) #1

declare dso_local %struct.TYPE_36__* @heap_realloc(%struct.TYPE_36__*, i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @debugstr_run(%struct.TYPE_38__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ME_SplitRunSimple(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @heap_free(%struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
