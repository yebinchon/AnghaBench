; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i32, i64*, i64, i32, i64*, i64 }

@RBU_INSERT = common dso_local global i32 0, align 4
@RBU_DELETE = common dso_local global i32 0, align 4
@RBU_REPLACE = common dso_local global i32 0, align 4
@RBU_IDX_DELETE = common dso_local global i32 0, align 4
@RBU_IDX_INSERT = common dso_local global i32 0, align 4
@RBU_UPDATE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@RBU_PK_VTAB = common dso_local global i64 0, align 8
@RBU_PK_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"rbu_rowid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @rbuStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbuStep(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %3, align 8
  store i8* null, i8** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = call i32 @rbuStepType(%struct.TYPE_9__* %12, i8** %4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %256

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @RBU_INSERT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @RBU_DELETE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @RBU_REPLACE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @RBU_IDX_DELETE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @RBU_IDX_INSERT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @RBU_UPDATE, align 4
  %39 = icmp eq i32 %37, %38
  br label %40

40:                                               ; preds = %36, %32, %28, %24, %20, %16
  %41 = phi i1 [ true, %32 ], [ true, %28 ], [ true, %24 ], [ true, %20 ], [ true, %16 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @RBU_UPDATE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br label %52

52:                                               ; preds = %47, %40
  %53 = phi i1 [ true, %40 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @RBU_IDX_DELETE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @RBU_IDX_INSERT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %60
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = call i32 @rbuBadControlError(%struct.TYPE_9__* %69)
  br label %255

71:                                               ; preds = %64, %52
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @RBU_REPLACE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %71
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = load i32, i32* @RBU_DELETE, align 4
  %93 = call i32 @rbuStepOneOp(%struct.TYPE_9__* %91, i32 %92)
  br label %94

94:                                               ; preds = %80, %75
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SQLITE_OK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %102 = load i32, i32* @RBU_INSERT, align 4
  %103 = call i32 @rbuStepOneOp(%struct.TYPE_9__* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %94
  br label %254

105:                                              ; preds = %71
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @RBU_UPDATE, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @rbuStepOneOp(%struct.TYPE_9__* %110, i32 %111)
  br label %253

113:                                              ; preds = %105
  store i32* null, i32** %7, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @RBU_UPDATE, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = sub nsw i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = load i8*, i8** %4, align 8
  %132 = call i32 @rbuGetUpdateStmt(%struct.TYPE_9__* %129, %struct.TYPE_10__* %130, i8* %131, i32** %7)
  %133 = load i32*, i32** %7, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %252

135:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %188, %135
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @SQLITE_OK, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br label %148

148:                                              ; preds = %142, %136
  %149 = phi i1 [ false, %136 ], [ %147, %142 ]
  br i1 %149, label %150, label %191

150:                                              ; preds = %148
  %151 = load i8*, i8** %4, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i8, i8* %151, i64 %158
  %160 = load i8, i8* %159, align 1
  store i8 %160, i8* %9, align 1
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32* @sqlite3_column_value(i32 %163, i32 %164)
  store i32* %165, i32** %6, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 5
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %150
  %175 = load i8, i8* %9, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 46
  br i1 %177, label %178, label %187

178:                                              ; preds = %174, %150
  %179 = load i32*, i32** %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  %182 = load i32*, i32** %6, align 8
  %183 = call i8* @sqlite3_bind_value(i32* %179, i32 %181, i32* %182)
  %184 = ptrtoint i8* %183 to i64
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  br label %187

187:                                              ; preds = %178, %174
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %136

191:                                              ; preds = %148
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @SQLITE_OK, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %236

197:                                              ; preds = %191
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @RBU_PK_VTAB, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %209, label %203

203:                                              ; preds = %197
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @RBU_PK_NONE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %236

209:                                              ; preds = %203, %197
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, 1
  %217 = call i32 @assertColumnName(i32 %212, i32 %216, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %223, 1
  %225 = call i32* @sqlite3_column_value(i32 %220, i32 %224)
  store i32* %225, i32** %6, align 8
  %226 = load i32*, i32** %7, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = add nsw i32 %229, 1
  %231 = load i32*, i32** %6, align 8
  %232 = call i8* @sqlite3_bind_value(i32* %226, i32 %230, i32* %231)
  %233 = ptrtoint i8* %232 to i64
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %209, %203, %191
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @SQLITE_OK, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %251

242:                                              ; preds = %236
  %243 = load i32*, i32** %7, align 8
  %244 = call i32 @sqlite3_step(i32* %243)
  %245 = load i32*, i32** %7, align 8
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  %248 = call i64 @resetAndCollectError(i32* %245, i32* %247)
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %242, %236
  br label %252

252:                                              ; preds = %251, %113
  br label %253

253:                                              ; preds = %252, %109
  br label %254

254:                                              ; preds = %253, %104
  br label %255

255:                                              ; preds = %254, %68
  br label %256

256:                                              ; preds = %255, %1
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = trunc i64 %259 to i32
  ret i32 %260
}

declare dso_local i32 @rbuStepType(%struct.TYPE_9__*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rbuBadControlError(%struct.TYPE_9__*) #1

declare dso_local i32 @rbuStepOneOp(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @rbuGetUpdateStmt(%struct.TYPE_9__*, %struct.TYPE_10__*, i8*, i32**) #1

declare dso_local i32* @sqlite3_column_value(i32, i32) #1

declare dso_local i8* @sqlite3_bind_value(i32*, i32, i32*) #1

declare dso_local i32 @assertColumnName(i32, i32, i8*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i64 @resetAndCollectError(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
