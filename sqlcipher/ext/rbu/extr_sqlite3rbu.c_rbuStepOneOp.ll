; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuStepOneOp.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuStepOneOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32, i64, i64*, i32, i32*, i32*, i64 }

@SQLITE_OK = common dso_local global i8* null, align 8
@RBU_DELETE = common dso_local global i32 0, align 4
@RBU_IDX_DELETE = common dso_local global i32 0, align 4
@RBU_INSERT = common dso_local global i32 0, align 4
@RBU_IDX_INSERT = common dso_local global i32 0, align 4
@RBU_PK_IPK = common dso_local global i64 0, align 8
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_MISMATCH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"datatype mismatch\00", align 1
@RBU_PK_VTAB = common dso_local global i64 0, align 8
@RBU_PK_NONE = common dso_local global i64 0, align 8
@RBU_PK_EXTERNAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"rbu_rowid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @rbuStepOneOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbuStepOneOp(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** @SQLITE_OK, align 8
  %15 = icmp eq i8* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @RBU_DELETE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br label %26

26:                                               ; preds = %21, %2
  %27 = phi i1 [ true, %2 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @RBU_DELETE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RBU_IDX_DELETE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @RBU_INSERT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @RBU_IDX_INSERT, align 4
  %44 = icmp eq i32 %42, %43
  br label %45

45:                                               ; preds = %41, %37, %33, %26
  %46 = phi i1 [ true, %37 ], [ true, %33 ], [ true, %26 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @RBU_DELETE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  br label %63

63:                                               ; preds = %52, %45
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @RBU_IDX_DELETE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @RBU_DELETE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67, %63
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %7, align 8
  br label %79

75:                                               ; preds = %67
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %7, align 8
  br label %79

79:                                               ; preds = %75, %71
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %158, %79
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %161

86:                                               ; preds = %80
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @RBU_INSERT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %125

90:                                               ; preds = %86
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %125

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RBU_PK_IPK, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %95
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %101
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i64 @sqlite3_column_type(i32 %113, i32 %114)
  %116 = load i64, i64* @SQLITE_NULL, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %110
  %119 = load i8*, i8** @SQLITE_MISMATCH, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  br label %235

125:                                              ; preds = %110, %101, %95, %90, %86
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @RBU_DELETE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %158

139:                                              ; preds = %129, %125
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32* @sqlite3_column_value(i32 %142, i32 %143)
  store i32* %144, i32** %6, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32*, i32** %6, align 8
  %149 = call i8* @sqlite3_bind_value(i32* %145, i32 %147, i32* %148)
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %139
  br label %235

157:                                              ; preds = %139
  br label %158

158:                                              ; preds = %157, %138
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %80

161:                                              ; preds = %80
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %220

166:                                              ; preds = %161
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @RBU_PK_VTAB, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %188, label %172

172:                                              ; preds = %166
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @RBU_PK_NONE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %188, label %178

178:                                              ; preds = %172
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @RBU_PK_EXTERNAL, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %219

184:                                              ; preds = %178
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %186 = call i64 @rbuIsVacuum(%struct.TYPE_5__* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %219

188:                                              ; preds = %184, %172, %166
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %197 = call i64 @rbuIsVacuum(%struct.TYPE_5__* %196)
  %198 = icmp ne i64 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %201 = call i32 @assertColumnName(i32 %191, i32 %195, i8* %200)
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  %209 = call i32* @sqlite3_column_value(i32 %204, i32 %208)
  store i32* %209, i32** %6, align 8
  %210 = load i32*, i32** %7, align 8
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 1
  %215 = load i32*, i32** %6, align 8
  %216 = call i8* @sqlite3_bind_value(i32* %210, i32 %214, i32* %215)
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 1
  store i8* %216, i8** %218, align 8
  br label %219

219:                                              ; preds = %188, %184, %178
  br label %220

220:                                              ; preds = %219, %161
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = load i8*, i8** @SQLITE_OK, align 8
  %225 = icmp eq i8* %223, %224
  br i1 %225, label %226, label %235

226:                                              ; preds = %220
  %227 = load i32*, i32** %7, align 8
  %228 = call i32 @sqlite3_step(i32* %227)
  %229 = load i32*, i32** %7, align 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = call i8* @resetAndCollectError(i32* %229, i32* %231)
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  store i8* %232, i8** %234, align 8
  br label %235

235:                                              ; preds = %118, %156, %226, %220
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_column_type(i32, i32) #1

declare dso_local i32 @sqlite3_mprintf(i8*) #1

declare dso_local i32* @sqlite3_column_value(i32, i32) #1

declare dso_local i8* @sqlite3_bind_value(i32*, i32, i32*) #1

declare dso_local i64 @rbuIsVacuum(%struct.TYPE_5__*) #1

declare dso_local i32 @assertColumnName(i32, i32, i8*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i8* @resetAndCollectError(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
