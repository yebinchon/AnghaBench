; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_window.c_sqlite3WindowCodeInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_window.c_sqlite3WindowCodeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_20__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i64, %struct.TYPE_14__* }
%struct.TYPE_20__ = type { i32, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32* }

@OP_Null = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@OP_OpenDup = common dso_local global i32 0, align 4
@SQLITE_FUNC_MINMAX = common dso_local global i32 0, align 4
@TK_UNBOUNDED = common dso_local global i64 0, align 8
@OP_OpenEphemeral = common dso_local global i32 0, align 4
@P4_KEYINFO = common dso_local global i32 0, align 4
@nth_valueName = common dso_local global i64 0, align 8
@first_valueName = common dso_local global i64 0, align 8
@leadName = common dso_local global i64 0, align 8
@lagName = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3WindowCodeInit(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = call i32* @sqlite3GetVdbe(%struct.TYPE_18__* %11)
  store i32* %12, i32** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 12
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = icmp ne %struct.TYPE_14__* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 12
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @OP_Null, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %41, %42
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @sqlite3VdbeAddOp3(i32* %34, i32 %35, i32 0, i32 %38, i32 %44)
  br label %46

46:                                               ; preds = %17, %2
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @OP_Integer, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sqlite3VdbeAddOp2(i32* %53, i32 %54, i32 1, i32 %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 11
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %46
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 4
  store i32 %78, i32* %81, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* @OP_Integer, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @sqlite3VdbeAddOp2(i32* %82, i32 %83, i32 1, i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @OP_Integer, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @sqlite3VdbeAddOp2(i32* %88, i32 %89, i32 0, i32 %92)
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* @OP_OpenDup, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @sqlite3VdbeAddOp2(i32* %94, i32 %95, i32 %98, i32 %101)
  br label %270

103:                                              ; preds = %46
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %104, %struct.TYPE_17__** %5, align 8
  br label %105

105:                                              ; preds = %266, %103
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = icmp ne %struct.TYPE_17__* %106, null
  br i1 %107, label %108, label %270

108:                                              ; preds = %105
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  store %struct.TYPE_20__* %111, %struct.TYPE_20__** %8, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SQLITE_FUNC_MINMAX, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %193

118:                                              ; preds = %108
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @TK_UNBOUNDED, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %193

124:                                              ; preds = %118
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 9
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %9, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call %struct.TYPE_19__* @sqlite3KeyInfoFromExprList(%struct.TYPE_18__* %131, i32* %132, i32 0, i32 0)
  store %struct.TYPE_19__* %133, %struct.TYPE_19__** %10, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 4
  store i32 %136, i32* %139, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 7
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 3
  store i32 %149, i32* %147, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %151 = icmp ne %struct.TYPE_19__* %150, null
  br i1 %151, label %152, label %175

152:                                              ; preds = %124
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 105
  br i1 %161, label %162, label %175

162:                                              ; preds = %152
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 1, i32* %174, align 4
  br label %175

175:                                              ; preds = %162, %152, %124
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* @OP_OpenEphemeral, align 4
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @sqlite3VdbeAddOp2(i32* %176, i32 %177, i32 %180, i32 2)
  %182 = load i32*, i32** %6, align 8
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %184 = load i32, i32* @P4_KEYINFO, align 4
  %185 = call i32 @sqlite3VdbeAppendP4(i32* %182, %struct.TYPE_19__* %183, i32 %184)
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* @OP_Integer, align 4
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  %192 = call i32 @sqlite3VdbeAddOp2(i32* %186, i32 %187, i32 0, i32 %191)
  br label %265

193:                                              ; preds = %118, %108
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = load i64, i64* @nth_valueName, align 8
  %198 = inttoptr i64 %197 to i8*
  %199 = icmp eq i8* %196, %198
  br i1 %199, label %207, label %200

200:                                              ; preds = %193
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = load i64, i64* @first_valueName, align 8
  %205 = inttoptr i64 %204 to i8*
  %206 = icmp eq i8* %203, %205
  br i1 %206, label %207, label %233

207:                                              ; preds = %200, %193
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 7
  store i32 %211, i32* %213, align 8
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 4
  store i32 %216, i32* %219, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 2
  store i32 %223, i32* %221, align 4
  %224 = load i32*, i32** %6, align 8
  %225 = load i32, i32* @OP_OpenDup, align 4
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @sqlite3VdbeAddOp2(i32* %224, i32 %225, i32 %228, i32 %231)
  br label %264

233:                                              ; preds = %200
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = load i64, i64* @leadName, align 8
  %238 = inttoptr i64 %237 to i8*
  %239 = icmp eq i8* %236, %238
  br i1 %239, label %247, label %240

240:                                              ; preds = %233
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = load i64, i64* @lagName, align 8
  %245 = inttoptr i64 %244 to i8*
  %246 = icmp eq i8* %243, %245
  br i1 %246, label %247, label %263

247:                                              ; preds = %240, %233
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 4
  store i32 %250, i32* %253, align 8
  %254 = load i32*, i32** %6, align 8
  %255 = load i32, i32* @OP_OpenDup, align 4
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @sqlite3VdbeAddOp2(i32* %254, i32 %255, i32 %258, i32 %261)
  br label %263

263:                                              ; preds = %247, %240
  br label %264

264:                                              ; preds = %263, %207
  br label %265

265:                                              ; preds = %264, %175
  br label %266

266:                                              ; preds = %265
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 10
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %268, align 8
  store %struct.TYPE_17__* %269, %struct.TYPE_17__** %5, align 8
  br label %105

270:                                              ; preds = %63, %105
  ret void
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_18__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_19__* @sqlite3KeyInfoFromExprList(%struct.TYPE_18__*, i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
