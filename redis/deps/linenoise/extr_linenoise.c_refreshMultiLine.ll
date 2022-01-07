; ModuleID = '/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_refreshMultiLine.c'
source_filename = "/home/carl/AnghaBench/redis/deps/linenoise/extr_linenoise.c_refreshMultiLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linenoiseState = type { i8*, i32, i32, i32, i32, i32, i8*, i32 }
%struct.abuf = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"go down %d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\1B[%dB\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"clear+up\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\0D\1B[0K\1B[1A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\0D\1B[0K\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"<newline>\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"rpos2 %d\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"go-up %d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\1B[%dA\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"set col %d\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\0D\1B[%dC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linenoiseState*)* @refreshMultiLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refreshMultiLine(%struct.linenoiseState* %0) #0 {
  %2 = alloca %struct.linenoiseState*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.abuf, align 4
  store %struct.linenoiseState* %0, %struct.linenoiseState** %2, align 8
  %13 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %14 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %19 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %17, %20
  %22 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %23 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %28 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %26, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %33 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %31, %34
  %36 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %37 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %41 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %39, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %45 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %48 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %52 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %1
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %58 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %1
  %60 = call i32 @abInit(%struct.abuf* %12)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %70, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %77 = call i32 @strlen(i8* %76)
  %78 = call i32 @abAppend(%struct.abuf* %12, i8* %75, i32 %77)
  br label %79

79:                                               ; preds = %65, %59
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %93, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %88 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %87, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %91 = call i32 @strlen(i8* %90)
  %92 = call i32 @abAppend(%struct.abuf* %12, i8* %89, i32 %91)
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %80

96:                                               ; preds = %80
  %97 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %99 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %98, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %102 = call i32 @strlen(i8* %101)
  %103 = call i32 @abAppend(%struct.abuf* %12, i8* %100, i32 %102)
  %104 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %105 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %108 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = call i32 @abAppend(%struct.abuf* %12, i8* %106, i32 %110)
  %112 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %113 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %112, i32 0, i32 6
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %116 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @abAppend(%struct.abuf* %12, i8* %114, i32 %117)
  %119 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @refreshShowHints(%struct.abuf* %12, %struct.linenoiseState* %119, i32 %120)
  %122 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %123 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %166

126:                                              ; preds = %96
  %127 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %128 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %131 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %129, %132
  br i1 %133, label %134, label %166

134:                                              ; preds = %126
  %135 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %136 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %137, %138
  %140 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %141 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = srem i32 %139, %142
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %134
  %146 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %147 = call i32 @abAppend(%struct.abuf* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %148 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %149 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %148, i32 64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %150 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %151 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %152 = call i32 @strlen(i8* %151)
  %153 = call i32 @abAppend(%struct.abuf* %12, i8* %150, i32 %152)
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %158 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %156, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %145
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %164 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %145
  br label %166

166:                                              ; preds = %165, %134, %126, %96
  %167 = load i32, i32* %4, align 4
  %168 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %169 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %167, %170
  %172 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %173 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %171, %174
  %176 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %177 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = sdiv i32 %175, %178
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* %7, align 4
  %184 = sub nsw i32 %182, %183
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %166
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* %7, align 4
  %189 = sub nsw i32 %187, %188
  %190 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %189)
  %191 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* %7, align 4
  %194 = sub nsw i32 %192, %193
  %195 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %191, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %194)
  %196 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %197 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %198 = call i32 @strlen(i8* %197)
  %199 = call i32 @abAppend(%struct.abuf* %12, i8* %196, i32 %198)
  br label %200

200:                                              ; preds = %186, %166
  %201 = load i32, i32* %4, align 4
  %202 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %203 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %201, %204
  %206 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %207 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = srem i32 %205, %208
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 1, %210
  %212 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* %8, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %200
  %216 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %217 = load i32, i32* %8, align 4
  %218 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %216, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %217)
  br label %222

219:                                              ; preds = %200
  %220 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %221 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %220, i32 64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %222

222:                                              ; preds = %219, %215
  %223 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %224 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %225 = call i32 @strlen(i8* %224)
  %226 = call i32 @abAppend(%struct.abuf* %12, i8* %223, i32 %225)
  %227 = call i32 (i8*, ...) @lndebug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %228 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %229 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.linenoiseState*, %struct.linenoiseState** %2, align 8
  %232 = getelementptr inbounds %struct.linenoiseState, %struct.linenoiseState* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 8
  %233 = load i32, i32* %10, align 4
  %234 = getelementptr inbounds %struct.abuf, %struct.abuf* %12, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.abuf, %struct.abuf* %12, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @write(i32 %233, i32 %235, i32 %237)
  %239 = icmp eq i32 %238, -1
  br i1 %239, label %240, label %241

240:                                              ; preds = %222
  br label %241

241:                                              ; preds = %240, %222
  %242 = call i32 @abFree(%struct.abuf* %12)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @abInit(%struct.abuf*) #1

declare dso_local i32 @lndebug(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @abAppend(%struct.abuf*, i8*, i32) #1

declare dso_local i32 @refreshShowHints(%struct.abuf*, %struct.linenoiseState*, i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @abFree(%struct.abuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
