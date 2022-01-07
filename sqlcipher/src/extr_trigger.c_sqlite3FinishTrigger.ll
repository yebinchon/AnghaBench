; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3FinishTrigger.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3FinishTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { %struct.TYPE_41__*, %struct.TYPE_39__*, i32 }
%struct.TYPE_41__ = type { i8*, %struct.TYPE_41__*, i32, %struct.TYPE_35__*, %struct.TYPE_35__*, i32, %struct.TYPE_40__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__*, %struct.TYPE_36__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__*, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_40__ = type { %struct.TYPE_40__*, %struct.TYPE_41__* }
%struct.TYPE_42__ = type { i32, i64 }
%struct.TYPE_43__ = type { %struct.TYPE_41__* }

@.str = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"INSERT INTO %Q.%s VALUES('trigger',%Q,%Q,0,'CREATE TRIGGER %q')\00", align 1
@MASTER_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"type='trigger' AND name='%q'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3FinishTrigger(%struct.TYPE_44__* %0, %struct.TYPE_40__* %1, %struct.TYPE_42__* %2) #0 {
  %4 = alloca %struct.TYPE_44__*, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca %struct.TYPE_41__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_39__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_42__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_41__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_43__*, align 8
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %4, align 8
  store %struct.TYPE_40__* %1, %struct.TYPE_40__** %5, align 8
  store %struct.TYPE_42__* %2, %struct.TYPE_42__** %6, align 8
  %18 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  store %struct.TYPE_41__* %20, %struct.TYPE_41__** %7, align 8
  %21 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_39__*, %struct.TYPE_39__** %22, align 8
  store %struct.TYPE_39__* %23, %struct.TYPE_39__** %9, align 8
  %24 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %24, i32 0, i32 0
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %25, align 8
  %26 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @NEVER(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %33 = icmp ne %struct.TYPE_41__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %3
  br label %214

35:                                               ; preds = %31
  %36 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  %39 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_39__*, %struct.TYPE_39__** %40, align 8
  %42 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %43, align 8
  %45 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_39__* %41, %struct.TYPE_35__* %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %47 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %47, i32 0, i32 6
  store %struct.TYPE_40__* %46, %struct.TYPE_40__** %48, align 8
  br label %49

49:                                               ; preds = %52, %35
  %50 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %51 = icmp ne %struct.TYPE_40__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %54 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %54, i32 0, i32 1
  store %struct.TYPE_41__* %53, %struct.TYPE_41__** %55, align 8
  %56 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_40__*, %struct.TYPE_40__** %57, align 8
  store %struct.TYPE_40__* %58, %struct.TYPE_40__** %5, align 8
  br label %49

59:                                               ; preds = %49
  %60 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @sqlite3TokenInit(%struct.TYPE_42__* %12, i8* %62)
  %64 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @sqlite3FixInit(i32* %10, %struct.TYPE_44__* %64, i32 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_42__* %12)
  %67 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %67, i32 0, i32 6
  %69 = load %struct.TYPE_40__*, %struct.TYPE_40__** %68, align 8
  %70 = call i64 @sqlite3FixTriggerStep(i32* %10, %struct.TYPE_40__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %59
  %73 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @sqlite3FixExpr(i32* %10, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %59
  br label %214

79:                                               ; preds = %72
  %80 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %92 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %92, i32 0, i32 0
  store %struct.TYPE_41__* %91, %struct.TYPE_41__** %93, align 8
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %7, align 8
  br label %152

94:                                               ; preds = %79
  %95 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %151, label %100

100:                                              ; preds = %94
  %101 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %102 = call i32* @sqlite3GetVdbe(%struct.TYPE_44__* %101)
  store i32* %102, i32** %13, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %214

106:                                              ; preds = %100
  %107 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @sqlite3BeginWriteOperation(%struct.TYPE_44__* %107, i32 0, i32 %108)
  %110 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %111 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @sqlite3DbStrNDup(%struct.TYPE_39__* %110, i8* %114, i32 %117)
  store i8* %118, i8** %14, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = icmp eq i8* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i32 @testcase(i32 %121)
  %123 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %124 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_38__*, %struct.TYPE_38__** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @MASTER_NAME, align 4
  %133 = load i8*, i8** %8, align 8
  %134 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i8*, i8** %14, align 8
  %138 = call i32 @sqlite3NestedParse(%struct.TYPE_44__* %123, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %132, i8* %133, i32 %136, i8* %137)
  %139 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = call i32 @sqlite3DbFree(%struct.TYPE_39__* %139, i8* %140)
  %142 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @sqlite3ChangeCookie(%struct.TYPE_44__* %142, i32 %143)
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 @sqlite3MPrintf(%struct.TYPE_39__* %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %148)
  %150 = call i32 @sqlite3VdbeAddParseSchemaOp(i32* %145, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %106, %94
  br label %152

152:                                              ; preds = %151, %82
  %153 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %213

158:                                              ; preds = %152
  %159 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  store %struct.TYPE_41__* %159, %struct.TYPE_41__** %15, align 8
  %160 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_38__*, %struct.TYPE_38__** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_37__*, %struct.TYPE_37__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %167, i32 0, i32 0
  store i32* %168, i32** %16, align 8
  %169 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_39__* %169, i32 %170, i32 0)
  %172 = call i32 @assert(i32 %171)
  %173 = load i32*, i32** %16, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %176 = call %struct.TYPE_41__* @sqlite3HashInsert(i32* %173, i8* %174, %struct.TYPE_41__* %175)
  store %struct.TYPE_41__* %176, %struct.TYPE_41__** %7, align 8
  %177 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %178 = icmp ne %struct.TYPE_41__* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %158
  %180 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %181 = call i32 @sqlite3OomFault(%struct.TYPE_39__* %180)
  br label %212

182:                                              ; preds = %158
  %183 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_35__*, %struct.TYPE_35__** %184, align 8
  %186 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_35__*, %struct.TYPE_35__** %187, align 8
  %189 = icmp eq %struct.TYPE_35__* %185, %188
  br i1 %189, label %190, label %211

190:                                              ; preds = %182
  %191 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %191, i32 0, i32 3
  %193 = load %struct.TYPE_35__*, %struct.TYPE_35__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call %struct.TYPE_43__* @sqlite3HashFind(i32* %194, i32 %197)
  store %struct.TYPE_43__* %198, %struct.TYPE_43__** %17, align 8
  %199 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %200 = icmp ne %struct.TYPE_43__* %199, null
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_41__*, %struct.TYPE_41__** %204, align 8
  %206 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %206, i32 0, i32 1
  store %struct.TYPE_41__* %205, %struct.TYPE_41__** %207, align 8
  %208 = load %struct.TYPE_41__*, %struct.TYPE_41__** %15, align 8
  %209 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %209, i32 0, i32 0
  store %struct.TYPE_41__* %208, %struct.TYPE_41__** %210, align 8
  br label %211

211:                                              ; preds = %190, %182
  br label %212

212:                                              ; preds = %211, %179
  br label %213

213:                                              ; preds = %212, %152
  br label %214

214:                                              ; preds = %213, %105, %78, %34
  %215 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %216 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %217 = call i32 @sqlite3DeleteTrigger(%struct.TYPE_39__* %215, %struct.TYPE_41__* %216)
  %218 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %214
  %221 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_41__*, %struct.TYPE_41__** %222, align 8
  %224 = icmp ne %struct.TYPE_41__* %223, null
  %225 = xor i1 %224, true
  br label %226

226:                                              ; preds = %220, %214
  %227 = phi i1 [ true, %214 ], [ %225, %220 ]
  %228 = zext i1 %227 to i32
  %229 = call i32 @assert(i32 %228)
  %230 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %231 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %232 = call i32 @sqlite3DeleteTriggerStep(%struct.TYPE_39__* %230, %struct.TYPE_40__* %231)
  ret void
}

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_39__*, %struct.TYPE_35__*) #1

declare dso_local i32 @sqlite3TokenInit(%struct.TYPE_42__*, i8*) #1

declare dso_local i32 @sqlite3FixInit(i32*, %struct.TYPE_44__*, i32, i8*, %struct.TYPE_42__*) #1

declare dso_local i64 @sqlite3FixTriggerStep(i32*, %struct.TYPE_40__*) #1

declare dso_local i64 @sqlite3FixExpr(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_44__*) #1

declare dso_local i32 @sqlite3BeginWriteOperation(%struct.TYPE_44__*, i32, i32) #1

declare dso_local i8* @sqlite3DbStrNDup(%struct.TYPE_39__*, i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3NestedParse(%struct.TYPE_44__*, i8*, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_39__*, i8*) #1

declare dso_local i32 @sqlite3ChangeCookie(%struct.TYPE_44__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddParseSchemaOp(i32*, i32, i32) #1

declare dso_local i32 @sqlite3MPrintf(%struct.TYPE_39__*, i8*, i8*) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_39__*, i32, i32) #1

declare dso_local %struct.TYPE_41__* @sqlite3HashInsert(i32*, i8*, %struct.TYPE_41__*) #1

declare dso_local i32 @sqlite3OomFault(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_43__* @sqlite3HashFind(i32*, i32) #1

declare dso_local i32 @sqlite3DeleteTrigger(%struct.TYPE_39__*, %struct.TYPE_41__*) #1

declare dso_local i32 @sqlite3DeleteTriggerStep(%struct.TYPE_39__*, %struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
