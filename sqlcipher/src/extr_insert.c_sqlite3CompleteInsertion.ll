; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_insert.c_sqlite3CompleteInsertion.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_insert.c_sqlite3CompleteInsertion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i64, i64, %struct.TYPE_16__* }

@OPFLAG_ISUPDATE = common dso_local global i32 0, align 4
@OPFLAG_SAVEPOSITION = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@OPFLAG_USESEEKRESULT = common dso_local global i32 0, align 4
@OPFLAG_NCHANGE = common dso_local global i32 0, align 4
@OP_IdxInsert = common dso_local global i32 0, align 4
@OP_MakeRecord = common dso_local global i32 0, align 4
@OPFLAG_LASTROWID = common dso_local global i32 0, align 4
@OPFLAG_APPEND = common dso_local global i32 0, align 4
@OP_Insert = common dso_local global i32 0, align 4
@P4_TABLE = common dso_local global i32 0, align 4
@OPFLAG_ISNOOP = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3CompleteInsertion(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %9
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @OPFLAG_ISUPDATE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @OPFLAG_ISUPDATE, align 4
  %35 = load i32, i32* @OPFLAG_SAVEPOSITION, align 4
  %36 = or i32 %34, %35
  %37 = icmp eq i32 %33, %36
  br label %38

38:                                               ; preds = %32, %28, %9
  %39 = phi i1 [ true, %28 ], [ true, %9 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %43 = call i32* @sqlite3GetVdbe(%struct.TYPE_15__* %42)
  store i32* %43, i32** %19, align 8
  %44 = load i32*, i32** %19, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  store i32 0, i32* %24, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %20, align 8
  br label %57

57:                                               ; preds = %152, %38
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %59 = icmp ne %struct.TYPE_16__* %58, null
  br i1 %59, label %60, label %158

60:                                               ; preds = %57
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %24, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %152

68:                                               ; preds = %60
  store i32 1, i32* %25, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load i32*, i32** %19, align 8
  %75 = load i32, i32* @OP_IsNull, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %24, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %19, align 8
  %82 = call i32 @sqlite3VdbeCurrentAddr(i32* %81)
  %83 = add nsw i32 %82, 2
  %84 = call i32 @sqlite3VdbeAddOp2(i32* %74, i32 %75, i32 %80, i32 %83)
  %85 = load i32*, i32** %19, align 8
  %86 = call i32 @VdbeCoverage(i32* %85)
  br label %87

87:                                               ; preds = %73, %68
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @OPFLAG_USESEEKRESULT, align 4
  br label %93

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  store i32 %94, i32* %21, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %96 = call i64 @IsPrimaryKeyIndex(%struct.TYPE_16__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %93
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %100 = call i32 @HasRowid(%struct.TYPE_14__* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %98
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i32, i32* @OPFLAG_NCHANGE, align 4
  %110 = load i32, i32* %21, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @OPFLAG_SAVEPOSITION, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* %21, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %21, align 4
  br label %117

117:                                              ; preds = %102, %98, %93
  %118 = load i32*, i32** %19, align 8
  %119 = load i32, i32* @OP_IdxInsert, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %24, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %24, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* %24, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %117
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  br label %146

142:                                              ; preds = %117
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  br label %146

146:                                              ; preds = %142, %138
  %147 = phi i32 [ %141, %138 ], [ %145, %142 ]
  %148 = call i32 @sqlite3VdbeAddOp4Int(i32* %118, i32 %119, i32 %122, i32 %127, i32 %133, i32 %147)
  %149 = load i32*, i32** %19, align 8
  %150 = load i32, i32* %21, align 4
  %151 = call i32 @sqlite3VdbeChangeP5(i32* %149, i32 %150)
  br label %152

152:                                              ; preds = %146, %67
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  store %struct.TYPE_16__* %155, %struct.TYPE_16__** %20, align 8
  %156 = load i32, i32* %24, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %24, align 4
  br label %57

158:                                              ; preds = %57
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %160 = call i32 @HasRowid(%struct.TYPE_14__* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  br label %237

163:                                              ; preds = %158
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %22, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %167 = call i32 @sqlite3GetTempReg(%struct.TYPE_15__* %166)
  store i32 %167, i32* %23, align 4
  %168 = load i32*, i32** %19, align 8
  %169 = load i32, i32* @OP_MakeRecord, align 4
  %170 = load i32, i32* %22, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %23, align 4
  %175 = call i32 @sqlite3VdbeAddOp3(i32* %168, i32 %169, i32 %170, i32 %173, i32 %174)
  %176 = load i32*, i32** %19, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %178 = call i32 @sqlite3SetMakeRecordP5(i32* %176, %struct.TYPE_14__* %177)
  %179 = load i32, i32* %25, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %163
  %182 = load i32*, i32** %19, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %184 = call i32 @sqlite3TableAffinity(i32* %182, %struct.TYPE_14__* %183, i32 0)
  br label %185

185:                                              ; preds = %181, %163
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  store i32 0, i32* %21, align 4
  br label %203

191:                                              ; preds = %185
  %192 = load i32, i32* @OPFLAG_NCHANGE, align 4
  store i32 %192, i32* %21, align 4
  %193 = load i32, i32* %16, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, i32* %16, align 4
  br label %199

197:                                              ; preds = %191
  %198 = load i32, i32* @OPFLAG_LASTROWID, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ %196, %195 ], [ %198, %197 ]
  %201 = load i32, i32* %21, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %21, align 4
  br label %203

203:                                              ; preds = %199, %190
  %204 = load i32, i32* %17, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load i32, i32* @OPFLAG_APPEND, align 4
  %208 = load i32, i32* %21, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %21, align 4
  br label %210

210:                                              ; preds = %206, %203
  %211 = load i32, i32* %18, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i32, i32* @OPFLAG_USESEEKRESULT, align 4
  %215 = load i32, i32* %21, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %21, align 4
  br label %217

217:                                              ; preds = %213, %210
  %218 = load i32*, i32** %19, align 8
  %219 = load i32, i32* @OP_Insert, align 4
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %23, align 4
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @sqlite3VdbeAddOp3(i32* %218, i32 %219, i32 %220, i32 %221, i32 %222)
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %217
  %229 = load i32*, i32** %19, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %231 = load i32, i32* @P4_TABLE, align 4
  %232 = call i32 @sqlite3VdbeAppendP4(i32* %229, %struct.TYPE_14__* %230, i32 %231)
  br label %233

233:                                              ; preds = %228, %217
  %234 = load i32*, i32** %19, align 8
  %235 = load i32, i32* %21, align 4
  %236 = call i32 @sqlite3VdbeChangeP5(i32* %234, i32 %235)
  br label %237

237:                                              ; preds = %233, %162
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local i64 @IsPrimaryKeyIndex(%struct.TYPE_16__*) #1

declare dso_local i32 @HasRowid(%struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32*, i32) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3SetMakeRecordP5(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3TableAffinity(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @sqlite3VdbeAppendP4(i32*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
