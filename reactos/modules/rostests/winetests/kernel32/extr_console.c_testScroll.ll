; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testScroll.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_console.c_testScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8 }

@TRUE = common dso_local global i32 0, align 4
@TEST_ATTRIB = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Scrolling SB\0A\00", align 1
@DEFAULT_ATTRIB = common dso_local global i8* null, align 8
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Expected ERROR_NOT_ENOUGH_MEMORY, got %u\0A\00", align 1
@H = common dso_local global i32 0, align 4
@W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @testScroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testScroll(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_20__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__, align 4
  %6 = alloca %struct.TYPE_19__, align 4
  %7 = alloca %struct.TYPE_20__, align 4
  %8 = alloca %struct.TYPE_20__, align 4
  %9 = alloca %struct.TYPE_20__, align 4
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca i64, align 8
  %12 = bitcast %struct.TYPE_20__* %3 to i64*
  store i64 %1, i64* %12, align 4
  store i32 %0, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TRUE, align 4
  %15 = bitcast %struct.TYPE_20__* %3 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call i32 @resetContent(i32 %13, i64 %16, i32 %14)
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  store i32 10, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  store i32 6, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 14, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  store i32 10, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  store i8 35, i8* %25, align 8
  %26 = load i8*, i8** @TEST_ATTRIB, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = bitcast %struct.TYPE_20__* %7 to i64*
  %40 = load i64, i64* %39, align 4
  %41 = call i64 @ScrollConsoleScreenBufferA(i32 %38, %struct.TYPE_19__* %5, %struct.TYPE_19__* null, i64 %40, %struct.TYPE_21__* %10)
  %42 = trunc i64 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %210, %2
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %214

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %205, %51
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %209

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %61, %63
  br i1 %64, label %65, label %140

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %69, %71
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %72, %74
  %76 = icmp sle i32 %67, %75
  br i1 %76, label %77, label %140

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sle i32 %79, %81
  br i1 %82, label %83, label %140

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %87, %89
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %90, %92
  %94 = icmp sle i32 %85, %93
  br i1 %94, label %95, label %140

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sle i32 %97, %99
  br i1 %100, label %101, label %140

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sle i32 %103, %105
  br i1 %106, label %107, label %140

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp sle i32 %109, %111
  br i1 %112, label %113, label %140

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp sle i32 %115, %117
  br i1 %118, label %119, label %140

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %121, %123
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %127, %129
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %4, align 4
  %133 = bitcast %struct.TYPE_20__* %9 to i64*
  %134 = load i64, i64* %133, align 4
  %135 = call signext i8 @CONTENT(i64 %134)
  %136 = load i8*, i8** @DEFAULT_ATTRIB, align 8
  %137 = bitcast %struct.TYPE_20__* %8 to i64*
  %138 = load i64, i64* %137, align 4
  %139 = call i32 @okCHAR(i32 %132, i64 %138, i8 signext %135, i8* %136)
  br label %204

140:                                              ; preds = %113, %107, %101, %95, %83, %77, %65, %59
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp sle i32 %142, %144
  br i1 %145, label %146, label %194

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp sle i32 %148, %150
  br i1 %151, label %152, label %194

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp sle i32 %154, %156
  br i1 %157, label %158, label %194

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp sle i32 %160, %162
  br i1 %163, label %164, label %194

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp sle i32 %166, %168
  br i1 %169, label %170, label %194

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp sle i32 %172, %174
  br i1 %175, label %176, label %194

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp sle i32 %178, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = icmp sle i32 %184, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  %189 = load i32, i32* %4, align 4
  %190 = load i8*, i8** @TEST_ATTRIB, align 8
  %191 = bitcast %struct.TYPE_20__* %8 to i64*
  %192 = load i64, i64* %191, align 4
  %193 = call i32 @okCHAR(i32 %189, i64 %192, i8 signext 35, i8* %190)
  br label %203

194:                                              ; preds = %182, %176, %170, %164, %158, %152, %146, %140
  %195 = load i32, i32* %4, align 4
  %196 = bitcast %struct.TYPE_20__* %8 to i64*
  %197 = load i64, i64* %196, align 4
  %198 = call signext i8 @CONTENT(i64 %197)
  %199 = load i8*, i8** @DEFAULT_ATTRIB, align 8
  %200 = bitcast %struct.TYPE_20__* %8 to i64*
  %201 = load i64, i64* %200, align 4
  %202 = call i32 @okCHAR(i32 %195, i64 %201, i8 signext %198, i8* %199)
  br label %203

203:                                              ; preds = %194, %188
  br label %204

204:                                              ; preds = %203, %119
  br label %205

205:                                              ; preds = %204
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  br label %53

209:                                              ; preds = %53
  br label %210

210:                                              ; preds = %209
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  br label %45

214:                                              ; preds = %45
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @TRUE, align 4
  %217 = bitcast %struct.TYPE_20__* %3 to i64*
  %218 = load i64, i64* %217, align 4
  %219 = call i32 @resetContent(i32 %215, i64 %218, i32 %216)
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32 0, i32* %220, align 4
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  store i32 10, i32* %221, align 4
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  store i32 0, i32* %222, align 4
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  store i32 6, i32* %223, align 4
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 5, i32* %224, align 4
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  store i32 3, i32* %225, align 4
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 0
  store i8 35, i8* %227, align 8
  %228 = load i8*, i8** @TEST_ATTRIB, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i8* %228, i8** %229, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 0, i32* %230, align 4
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %232, 1
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  store i32 %233, i32* %234, align 4
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  store i32 0, i32* %235, align 4
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sub nsw i32 %237, 1
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  store i32 %238, i32* %239, align 4
  %240 = load i32, i32* %4, align 4
  %241 = bitcast %struct.TYPE_20__* %7 to i64*
  %242 = load i64, i64* %241, align 4
  %243 = call i64 @ScrollConsoleScreenBufferA(i32 %240, %struct.TYPE_19__* %5, %struct.TYPE_19__* null, i64 %242, %struct.TYPE_21__* %10)
  %244 = trunc i64 %243 to i32
  %245 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  store i32 0, i32* %246, align 4
  br label %247

247:                                              ; preds = %338, %214
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp slt i32 %249, %251
  br i1 %252, label %253, label %342

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i32 0, i32* %254, align 4
  br label %255

255:                                              ; preds = %333, %253
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %257, %259
  br i1 %260, label %261, label %337

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = icmp sle i32 %263, %265
  br i1 %266, label %267, label %308

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 11
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %308

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp sle i32 %276, %278
  br i1 %279, label %280, label %308

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %284, 7
  %286 = icmp slt i32 %282, %285
  br i1 %286, label %287, label %308

287:                                              ; preds = %280
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 %289, %291
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %292, i32* %293, align 4
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 %295, %297
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 %298, i32* %299, align 4
  %300 = load i32, i32* %4, align 4
  %301 = bitcast %struct.TYPE_20__* %9 to i64*
  %302 = load i64, i64* %301, align 4
  %303 = call signext i8 @CONTENT(i64 %302)
  %304 = load i8*, i8** @DEFAULT_ATTRIB, align 8
  %305 = bitcast %struct.TYPE_20__* %8 to i64*
  %306 = load i64, i64* %305, align 4
  %307 = call i32 @okCHAR(i32 %300, i64 %306, i8 signext %303, i8* %304)
  br label %332

308:                                              ; preds = %280, %274, %267, %261
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = icmp slt i32 %310, 11
  br i1 %311, label %312, label %322

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = icmp slt i32 %314, 7
  br i1 %315, label %316, label %322

316:                                              ; preds = %312
  %317 = load i32, i32* %4, align 4
  %318 = load i8*, i8** @TEST_ATTRIB, align 8
  %319 = bitcast %struct.TYPE_20__* %8 to i64*
  %320 = load i64, i64* %319, align 4
  %321 = call i32 @okCHAR(i32 %317, i64 %320, i8 signext 35, i8* %318)
  br label %331

322:                                              ; preds = %312, %308
  %323 = load i32, i32* %4, align 4
  %324 = bitcast %struct.TYPE_20__* %8 to i64*
  %325 = load i64, i64* %324, align 4
  %326 = call signext i8 @CONTENT(i64 %325)
  %327 = load i8*, i8** @DEFAULT_ATTRIB, align 8
  %328 = bitcast %struct.TYPE_20__* %8 to i64*
  %329 = load i64, i64* %328, align 4
  %330 = call i32 @okCHAR(i32 %323, i64 %329, i8 signext %326, i8* %327)
  br label %331

331:                                              ; preds = %322, %316
  br label %332

332:                                              ; preds = %331, %287
  br label %333

333:                                              ; preds = %332
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 4
  br label %255

337:                                              ; preds = %255
  br label %338

338:                                              ; preds = %337
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %339, align 4
  br label %247

342:                                              ; preds = %247
  %343 = load i32, i32* %4, align 4
  %344 = load i32, i32* @TRUE, align 4
  %345 = bitcast %struct.TYPE_20__* %3 to i64*
  %346 = load i64, i64* %345, align 4
  %347 = call i32 @resetContent(i32 %343, i64 %346, i32 %344)
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32 0, i32* %348, align 4
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  store i32 10, i32* %349, align 4
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  store i32 0, i32* %350, align 4
  %351 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  store i32 6, i32* %351, align 4
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 14, i32* %352, align 4
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  store i32 10, i32* %353, align 4
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 0
  store i8 35, i8* %355, align 8
  %356 = load i8*, i8** @TEST_ATTRIB, align 8
  %357 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i8* %356, i8** %357, align 8
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 5, i32* %358, align 4
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = sub nsw i32 %360, 1
  %362 = call i8* @min(i32 16, i32 %361)
  %363 = ptrtoint i8* %362 to i32
  %364 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  store i32 %363, i32* %364, align 4
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  store i32 3, i32* %365, align 4
  %366 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = sub nsw i32 %367, 1
  %369 = call i8* @min(i32 10, i32 %368)
  %370 = ptrtoint i8* %369 to i32
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  store i32 %370, i32* %371, align 4
  %372 = call i32 @SetLastError(i32 -559038737)
  %373 = load i32, i32* %4, align 4
  %374 = bitcast %struct.TYPE_20__* %7 to i64*
  %375 = load i64, i64* %374, align 4
  %376 = call i64 @ScrollConsoleScreenBufferA(i32 %373, %struct.TYPE_19__* %5, %struct.TYPE_19__* %6, i64 %375, %struct.TYPE_21__* %10)
  store i64 %376, i64* %11, align 8
  %377 = load i64, i64* %11, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %551

379:                                              ; preds = %342
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  store i32 0, i32* %380, align 4
  br label %381

381:                                              ; preds = %546, %379
  %382 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = icmp slt i32 %383, %385
  br i1 %386, label %387, label %550

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i32 0, i32* %388, align 4
  br label %389

389:                                              ; preds = %541, %387
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = icmp slt i32 %391, %393
  br i1 %394, label %395, label %545

395:                                              ; preds = %389
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = icmp sle i32 %397, %399
  br i1 %400, label %401, label %476

401:                                              ; preds = %395
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = add nsw i32 %405, %407
  %409 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = sub nsw i32 %408, %410
  %412 = icmp sle i32 %403, %411
  br i1 %412, label %413, label %476

413:                                              ; preds = %401
  %414 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = icmp sle i32 %415, %417
  br i1 %418, label %419, label %476

419:                                              ; preds = %413
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  %425 = load i32, i32* %424, align 4
  %426 = add nsw i32 %423, %425
  %427 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %428 = load i32, i32* %427, align 4
  %429 = sub nsw i32 %426, %428
  %430 = icmp sle i32 %421, %429
  br i1 %430, label %431, label %476

431:                                              ; preds = %419
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = icmp sle i32 %433, %435
  br i1 %436, label %437, label %476

437:                                              ; preds = %431
  %438 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = icmp sle i32 %439, %441
  br i1 %442, label %443, label %476

443:                                              ; preds = %437
  %444 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = icmp sle i32 %445, %447
  br i1 %448, label %449, label %476

449:                                              ; preds = %443
  %450 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %453 = load i32, i32* %452, align 4
  %454 = icmp sle i32 %451, %453
  br i1 %454, label %455, label %476

455:                                              ; preds = %449
  %456 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = sub nsw i32 %457, %459
  %461 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %460, i32* %461, align 4
  %462 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = sub nsw i32 %463, %465
  %467 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 %466, i32* %467, align 4
  %468 = load i32, i32* %4, align 4
  %469 = bitcast %struct.TYPE_20__* %9 to i64*
  %470 = load i64, i64* %469, align 4
  %471 = call signext i8 @CONTENT(i64 %470)
  %472 = load i8*, i8** @DEFAULT_ATTRIB, align 8
  %473 = bitcast %struct.TYPE_20__* %8 to i64*
  %474 = load i64, i64* %473, align 4
  %475 = call i32 @okCHAR(i32 %468, i64 %474, i8 signext %471, i8* %472)
  br label %540

476:                                              ; preds = %449, %443, %437, %431, %419, %413, %401, %395
  %477 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %478 = load i32, i32* %477, align 4
  %479 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = icmp sle i32 %478, %480
  br i1 %481, label %482, label %530

482:                                              ; preds = %476
  %483 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = icmp sle i32 %484, %486
  br i1 %487, label %488, label %530

488:                                              ; preds = %482
  %489 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %490 = load i32, i32* %489, align 4
  %491 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = icmp sle i32 %490, %492
  br i1 %493, label %494, label %530

494:                                              ; preds = %488
  %495 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  %498 = load i32, i32* %497, align 4
  %499 = icmp sle i32 %496, %498
  br i1 %499, label %500, label %530

500:                                              ; preds = %494
  %501 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %502 = load i32, i32* %501, align 4
  %503 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = icmp sle i32 %502, %504
  br i1 %505, label %506, label %530

506:                                              ; preds = %500
  %507 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = icmp sle i32 %508, %510
  br i1 %511, label %512, label %530

512:                                              ; preds = %506
  %513 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %514 = load i32, i32* %513, align 4
  %515 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %516 = load i32, i32* %515, align 4
  %517 = icmp sle i32 %514, %516
  br i1 %517, label %518, label %530

518:                                              ; preds = %512
  %519 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %522 = load i32, i32* %521, align 4
  %523 = icmp sle i32 %520, %522
  br i1 %523, label %524, label %530

524:                                              ; preds = %518
  %525 = load i32, i32* %4, align 4
  %526 = load i8*, i8** @TEST_ATTRIB, align 8
  %527 = bitcast %struct.TYPE_20__* %8 to i64*
  %528 = load i64, i64* %527, align 4
  %529 = call i32 @okCHAR(i32 %525, i64 %528, i8 signext 35, i8* %526)
  br label %539

530:                                              ; preds = %518, %512, %506, %500, %494, %488, %482, %476
  %531 = load i32, i32* %4, align 4
  %532 = bitcast %struct.TYPE_20__* %8 to i64*
  %533 = load i64, i64* %532, align 4
  %534 = call signext i8 @CONTENT(i64 %533)
  %535 = load i8*, i8** @DEFAULT_ATTRIB, align 8
  %536 = bitcast %struct.TYPE_20__* %8 to i64*
  %537 = load i64, i64* %536, align 4
  %538 = call i32 @okCHAR(i32 %531, i64 %537, i8 signext %534, i8* %535)
  br label %539

539:                                              ; preds = %530, %524
  br label %540

540:                                              ; preds = %539, %455
  br label %541

541:                                              ; preds = %540
  %542 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %543 = load i32, i32* %542, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %542, align 4
  br label %389

545:                                              ; preds = %389
  br label %546

546:                                              ; preds = %545
  %547 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %547, align 4
  br label %381

550:                                              ; preds = %381
  br label %558

551:                                              ; preds = %342
  %552 = call i64 (...) @GetLastError()
  %553 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  %554 = icmp eq i64 %552, %553
  %555 = zext i1 %554 to i32
  %556 = call i64 (...) @GetLastError()
  %557 = call i32 (i32, i8*, ...) @ok(i32 %555, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %556)
  br label %558

558:                                              ; preds = %551, %550
  %559 = load i32, i32* %4, align 4
  %560 = load i32, i32* @TRUE, align 4
  %561 = bitcast %struct.TYPE_20__* %3 to i64*
  %562 = load i64, i64* %561, align 4
  %563 = call i32 @resetContent(i32 %559, i64 %562, i32 %560)
  %564 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  store i32 0, i32* %564, align 4
  %565 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  store i32 10, i32* %565, align 4
  %566 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  store i32 0, i32* %566, align 4
  %567 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  store i32 6, i32* %567, align 4
  %568 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 2, i32* %568, align 4
  %569 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  store i32 0, i32* %569, align 4
  %570 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %570, i32 0, i32 0
  store i8 35, i8* %571, align 8
  %572 = load i8*, i8** @TEST_ATTRIB, align 8
  %573 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i8* %572, i8** %573, align 8
  %574 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 5, i32* %574, align 4
  %575 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %576 = load i32, i32* %575, align 4
  %577 = sub nsw i32 %576, 1
  %578 = call i8* @min(i32 16, i32 %577)
  %579 = ptrtoint i8* %578 to i32
  %580 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  store i32 %579, i32* %580, align 4
  %581 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  store i32 3, i32* %581, align 4
  %582 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %583 = load i32, i32* %582, align 4
  %584 = sub nsw i32 %583, 1
  %585 = call i8* @min(i32 10, i32 %584)
  %586 = ptrtoint i8* %585 to i32
  %587 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  store i32 %586, i32* %587, align 4
  %588 = load i32, i32* %4, align 4
  %589 = bitcast %struct.TYPE_20__* %7 to i64*
  %590 = load i64, i64* %589, align 4
  %591 = call i64 @ScrollConsoleScreenBufferA(i32 %588, %struct.TYPE_19__* %5, %struct.TYPE_19__* %6, i64 %590, %struct.TYPE_21__* %10)
  %592 = trunc i64 %591 to i32
  %593 = call i32 (i32, i8*, ...) @ok(i32 %592, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %594 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  store i32 0, i32* %594, align 4
  br label %595

595:                                              ; preds = %760, %558
  %596 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %597 = load i32, i32* %596, align 4
  %598 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %599 = load i32, i32* %598, align 4
  %600 = icmp slt i32 %597, %599
  br i1 %600, label %601, label %764

601:                                              ; preds = %595
  %602 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i32 0, i32* %602, align 4
  br label %603

603:                                              ; preds = %755, %601
  %604 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %605 = load i32, i32* %604, align 4
  %606 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %607 = load i32, i32* %606, align 4
  %608 = icmp slt i32 %605, %607
  br i1 %608, label %609, label %759

609:                                              ; preds = %603
  %610 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %613 = load i32, i32* %612, align 4
  %614 = icmp sle i32 %611, %613
  br i1 %614, label %615, label %690

615:                                              ; preds = %609
  %616 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %617 = load i32, i32* %616, align 4
  %618 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %619 = load i32, i32* %618, align 4
  %620 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %621 = load i32, i32* %620, align 4
  %622 = add nsw i32 %619, %621
  %623 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %624 = load i32, i32* %623, align 4
  %625 = sub nsw i32 %622, %624
  %626 = icmp sle i32 %617, %625
  br i1 %626, label %627, label %690

627:                                              ; preds = %615
  %628 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %629 = load i32, i32* %628, align 4
  %630 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %631 = load i32, i32* %630, align 4
  %632 = icmp sle i32 %629, %631
  br i1 %632, label %633, label %690

633:                                              ; preds = %627
  %634 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %635 = load i32, i32* %634, align 4
  %636 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %637 = load i32, i32* %636, align 4
  %638 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  %639 = load i32, i32* %638, align 4
  %640 = add nsw i32 %637, %639
  %641 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %642 = load i32, i32* %641, align 4
  %643 = sub nsw i32 %640, %642
  %644 = icmp sle i32 %635, %643
  br i1 %644, label %645, label %690

645:                                              ; preds = %633
  %646 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %647 = load i32, i32* %646, align 4
  %648 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %649 = load i32, i32* %648, align 4
  %650 = icmp sle i32 %647, %649
  br i1 %650, label %651, label %690

651:                                              ; preds = %645
  %652 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %653 = load i32, i32* %652, align 4
  %654 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %655 = load i32, i32* %654, align 4
  %656 = icmp sle i32 %653, %655
  br i1 %656, label %657, label %690

657:                                              ; preds = %651
  %658 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %659 = load i32, i32* %658, align 4
  %660 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %661 = load i32, i32* %660, align 4
  %662 = icmp sle i32 %659, %661
  br i1 %662, label %663, label %690

663:                                              ; preds = %657
  %664 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %665 = load i32, i32* %664, align 4
  %666 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %667 = load i32, i32* %666, align 4
  %668 = icmp sle i32 %665, %667
  br i1 %668, label %669, label %690

669:                                              ; preds = %663
  %670 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %671 = load i32, i32* %670, align 4
  %672 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %673 = load i32, i32* %672, align 4
  %674 = sub nsw i32 %671, %673
  %675 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store i32 %674, i32* %675, align 4
  %676 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %677 = load i32, i32* %676, align 4
  %678 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %679 = load i32, i32* %678, align 4
  %680 = sub nsw i32 %677, %679
  %681 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i32 %680, i32* %681, align 4
  %682 = load i32, i32* %4, align 4
  %683 = bitcast %struct.TYPE_20__* %9 to i64*
  %684 = load i64, i64* %683, align 4
  %685 = call signext i8 @CONTENT(i64 %684)
  %686 = load i8*, i8** @DEFAULT_ATTRIB, align 8
  %687 = bitcast %struct.TYPE_20__* %8 to i64*
  %688 = load i64, i64* %687, align 4
  %689 = call i32 @okCHAR(i32 %682, i64 %688, i8 signext %685, i8* %686)
  br label %754

690:                                              ; preds = %663, %657, %651, %645, %633, %627, %615, %609
  %691 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %692 = load i32, i32* %691, align 4
  %693 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %694 = load i32, i32* %693, align 4
  %695 = icmp sle i32 %692, %694
  br i1 %695, label %696, label %744

696:                                              ; preds = %690
  %697 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %698 = load i32, i32* %697, align 4
  %699 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %700 = load i32, i32* %699, align 4
  %701 = icmp sle i32 %698, %700
  br i1 %701, label %702, label %744

702:                                              ; preds = %696
  %703 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %704 = load i32, i32* %703, align 4
  %705 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %706 = load i32, i32* %705, align 4
  %707 = icmp sle i32 %704, %706
  br i1 %707, label %708, label %744

708:                                              ; preds = %702
  %709 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %710 = load i32, i32* %709, align 4
  %711 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  %712 = load i32, i32* %711, align 4
  %713 = icmp sle i32 %710, %712
  br i1 %713, label %714, label %744

714:                                              ; preds = %708
  %715 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %716 = load i32, i32* %715, align 4
  %717 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %718 = load i32, i32* %717, align 4
  %719 = icmp sle i32 %716, %718
  br i1 %719, label %720, label %744

720:                                              ; preds = %714
  %721 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %722 = load i32, i32* %721, align 4
  %723 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %724 = load i32, i32* %723, align 4
  %725 = icmp sle i32 %722, %724
  br i1 %725, label %726, label %744

726:                                              ; preds = %720
  %727 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %728 = load i32, i32* %727, align 4
  %729 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %730 = load i32, i32* %729, align 4
  %731 = icmp sle i32 %728, %730
  br i1 %731, label %732, label %744

732:                                              ; preds = %726
  %733 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %734 = load i32, i32* %733, align 4
  %735 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %736 = load i32, i32* %735, align 4
  %737 = icmp sle i32 %734, %736
  br i1 %737, label %738, label %744

738:                                              ; preds = %732
  %739 = load i32, i32* %4, align 4
  %740 = load i8*, i8** @TEST_ATTRIB, align 8
  %741 = bitcast %struct.TYPE_20__* %8 to i64*
  %742 = load i64, i64* %741, align 4
  %743 = call i32 @okCHAR(i32 %739, i64 %742, i8 signext 35, i8* %740)
  br label %753

744:                                              ; preds = %732, %726, %720, %714, %708, %702, %696, %690
  %745 = load i32, i32* %4, align 4
  %746 = bitcast %struct.TYPE_20__* %8 to i64*
  %747 = load i64, i64* %746, align 4
  %748 = call signext i8 @CONTENT(i64 %747)
  %749 = load i8*, i8** @DEFAULT_ATTRIB, align 8
  %750 = bitcast %struct.TYPE_20__* %8 to i64*
  %751 = load i64, i64* %750, align 4
  %752 = call i32 @okCHAR(i32 %745, i64 %751, i8 signext %748, i8* %749)
  br label %753

753:                                              ; preds = %744, %738
  br label %754

754:                                              ; preds = %753, %669
  br label %755

755:                                              ; preds = %754
  %756 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %757 = load i32, i32* %756, align 4
  %758 = add nsw i32 %757, 1
  store i32 %758, i32* %756, align 4
  br label %603

759:                                              ; preds = %603
  br label %760

760:                                              ; preds = %759
  %761 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %762 = load i32, i32* %761, align 4
  %763 = add nsw i32 %762, 1
  store i32 %763, i32* %761, align 4
  br label %595

764:                                              ; preds = %595
  ret void
}

declare dso_local i32 @resetContent(i32, i64, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @ScrollConsoleScreenBufferA(i32, %struct.TYPE_19__*, %struct.TYPE_19__*, i64, %struct.TYPE_21__*) #1

declare dso_local i32 @okCHAR(i32, i64, i8 signext, i8*) #1

declare dso_local signext i8 @CONTENT(i64) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
