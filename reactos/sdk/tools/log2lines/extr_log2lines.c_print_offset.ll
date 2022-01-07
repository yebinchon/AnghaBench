; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_log2lines.c_print_offset.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_log2lines.c_print_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64 }

@LINESIZE = common dso_local global i32 0, align 4
@opt_twice = common dso_local global i64 0, align 8
@summ = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@opt_Twice = common dso_local global i64 0, align 8
@lastLine = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@sources = common dso_local global i32 0, align 4
@SVN_PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.0s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c":%u\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[%u]\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.0u\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" (%s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"[%s])\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%.0s)\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%s:%u (%s)\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%s:%u (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @print_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_offset(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* @LINESIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  store i8* %27, i8** %14, align 8
  %28 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %28, align 16
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.TYPE_7__* @find_offset(i8* %29, i64 %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %9, align 8
  %32 = load i64, i64* @opt_twice, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %3
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, 1
  %38 = call %struct.TYPE_7__* @find_offset(i8* %35, i64 %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %10, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = icmp eq %struct.TYPE_7__* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %46

43:                                               ; preds = %34
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @summ, i32 0, i32 1), align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @summ, i32 0, i32 1), align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i64, i64* @opt_Twice, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %54

54:                                               ; preds = %52, %49, %46
  br label %55

55:                                               ; preds = %54, %3
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = icmp ne %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %277

61:                                               ; preds = %58, %55
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lastLine, i32 0, i32 5), align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = call i32 @strcpy(i32 %62, i8* %67)
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lastLine, i32 0, i32 6), align 4
  %70 = load i8*, i8** %14, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = call i32 @strcpy(i32 %69, i8* %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lastLine, i32 0, i32 0), align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lastLine, i32 0, i32 5), align 8
  %80 = load i32, i32* @SVN_PREFIX, align 4
  %81 = call i32 @sources_entry_create(i32* @sources, i32 %79, i32 %80)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lastLine, i32 0, i32 1), align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  br i1 %83, label %84, label %238

84:                                               ; preds = %61
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lastLine, i32 0, i32 3), align 8
  %86 = load i8*, i8** %14, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = call i32 @strcpy(i32 %85, i8* %90)
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lastLine, i32 0, i32 4), align 4
  %93 = load i8*, i8** %14, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = call i32 @strcpy(i32 %92, i8* %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lastLine, i32 0, i32 2), align 8
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @lastLine, i32 0, i32 3), align 8
  %103 = load i32, i32* @SVN_PREFIX, align 4
  %104 = call i32 @sources_entry_create(i32* @sources, i32 %102, i32 %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %11, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  br i1 %119, label %128, label %120

120:                                              ; preds = %84
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %120, %84
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @summ, i32 0, i32 0), align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @summ, i32 0, i32 0), align 4
  br label %131

131:                                              ; preds = %128, %120
  %132 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %139

137:                                              ; preds = %131
  %138 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %135
  %140 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %143, %146
  br i1 %147, label %151, label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148, %139
  %152 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %155

153:                                              ; preds = %148
  %154 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %151
  %156 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %159, %162
  br i1 %163, label %167, label %164

164:                                              ; preds = %155
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164, %155
  %168 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %171

169:                                              ; preds = %164
  %170 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %167
  %172 = load i8*, i8** %7, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %206

174:                                              ; preds = %171
  %175 = load i8*, i8** %7, align 8
  %176 = load i32, i32* @LINESIZE, align 4
  %177 = load i8*, i8** %14, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  %182 = load i8*, i8** %14, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = load i8*, i8** %14, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  %200 = load i8*, i8** %14, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  %205 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %175, i32 %176, i8* %21, i8* %181, i8* %186, i32 %190, i32 %194, i8* %199, i8* %204)
  br label %237

206:                                              ; preds = %171
  %207 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %208 = load i8*, i8** %14, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i8, i8* %208, i64 %211
  %213 = load i8*, i8** %14, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = trunc i64 %220 to i32
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = load i8*, i8** %14, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds i8, i8* %226, i64 %229
  %231 = load i8*, i8** %14, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds i8, i8* %231, i64 %234
  %236 = call i32 (i8*, i8*, ...) @printf(i8* %21, i8* %212, i8* %217, i32 %221, i32 %225, i8* %230, i8* %235)
  br label %237

237:                                              ; preds = %206, %174
  br label %276

238:                                              ; preds = %61
  %239 = load i8*, i8** %7, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %259

241:                                              ; preds = %238
  %242 = load i8*, i8** %7, align 8
  %243 = load i32, i32* @LINESIZE, align 4
  %244 = load i8*, i8** %14, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = load i8*, i8** %14, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds i8, i8* %253, i64 %256
  %258 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %242, i32 %243, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %248, i32 %252, i8* %257)
  br label %275

259:                                              ; preds = %238
  %260 = load i8*, i8** %14, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds i8, i8* %260, i64 %263
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = trunc i64 %267 to i32
  %269 = load i8*, i8** %14, align 8
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i8, i8* %269, i64 %272
  %274 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %264, i32 %268, i8* %273)
  br label %275

275:                                              ; preds = %259, %241
  br label %276

276:                                              ; preds = %275, %237
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %278

277:                                              ; preds = %58
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %278

278:                                              ; preds = %277, %276
  %279 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %279)
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_7__* @find_offset(i8*, i64) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @sources_entry_create(i32*, i32, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
