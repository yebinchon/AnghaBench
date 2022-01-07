; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_callback.c_sqlite3FindFunction.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_callback.c_sqlite3FindFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i64, %struct.TYPE_14__*, i64, i64 }
%struct.TYPE_13__ = type { i32, i32 }

@DBFLAG_PreferBuiltin = common dso_local global i32 0, align 4
@sqlite3UpperToLower = common dso_local global i64* null, align 8
@FUNC_PERFECT_MATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @sqlite3FindFunction(%struct.TYPE_13__* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i64*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, -2
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, -1
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* %11, align 8
  %29 = icmp eq i64 %28, 0
  br label %30

30:                                               ; preds = %27, %5
  %31 = phi i1 [ true, %5 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @sqlite3Strlen30(i8* %34)
  store i32 %35, i32* %16, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @sqlite3HashFind(i32* %37, i8* %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %12, align 8
  br label %41

41:                                               ; preds = %55, %30
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %43 = icmp ne %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @matchQuality(%struct.TYPE_14__* %45, i32 %46, i64 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %13, align 8
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %52, %44
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %12, align 8
  br label %41

59:                                               ; preds = %41
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %104, label %62

62:                                               ; preds = %59
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %64 = icmp eq %struct.TYPE_14__* %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DBFLAG_PreferBuiltin, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %65, %62
  store i32 0, i32* %14, align 4
  %73 = load i64*, i64** @sqlite3UpperToLower, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i64
  %78 = getelementptr inbounds i64, i64* %73, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @SQLITE_FUNC_HASH(i64 %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = call %struct.TYPE_14__* @sqlite3FunctionSearch(i32 %82, i8* %83)
  store %struct.TYPE_14__* %84, %struct.TYPE_14__** %12, align 8
  br label %85

85:                                               ; preds = %99, %72
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %87 = icmp ne %struct.TYPE_14__* %86, null
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i64, i64* %10, align 8
  %92 = call i32 @matchQuality(%struct.TYPE_14__* %89, i32 %90, i64 %91)
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %97, %struct.TYPE_14__** %13, align 8
  %98 = load i32, i32* %18, align 4
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %96, %88
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %12, align 8
  br label %85

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103, %65, %59
  %105 = load i64, i64* %11, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %181

107:                                              ; preds = %104
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @FUNC_PERFECT_MATCH, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %181

111:                                              ; preds = %107
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 40, %114
  %116 = add i64 %115, 1
  %117 = trunc i64 %116 to i32
  %118 = call %struct.TYPE_14__* @sqlite3DbMallocZero(%struct.TYPE_13__* %112, i32 %117)
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %13, align 8
  %119 = icmp ne %struct.TYPE_14__* %118, null
  br i1 %119, label %120, label %181

120:                                              ; preds = %111
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 1
  %123 = bitcast %struct.TYPE_14__* %122 to i8*
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 4
  store i64 %127, i64* %129, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 1
  %135 = bitcast %struct.TYPE_14__* %134 to i8*
  %136 = load i8*, i8** %8, align 8
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  %139 = call i32 @memcpy(i8* %135, i8* %136, i32 %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = bitcast i8* %142 to i64*
  store i64* %143, i64** %20, align 8
  br label %144

144:                                              ; preds = %155, %120
  %145 = load i64*, i64** %20, align 8
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load i64*, i64** @sqlite3UpperToLower, align 8
  %150 = load i64*, i64** %20, align 8
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i64*, i64** %20, align 8
  store i64 %153, i64* %154, align 8
  br label %155

155:                                              ; preds = %148
  %156 = load i64*, i64** %20, align 8
  %157 = getelementptr inbounds i64, i64* %156, i32 1
  store i64* %157, i64** %20, align 8
  br label %144

158:                                              ; preds = %144
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %165 = call i64 @sqlite3HashInsert(i32* %160, i8* %163, %struct.TYPE_14__* %164)
  %166 = inttoptr i64 %165 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %166, %struct.TYPE_14__** %19, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %169 = icmp eq %struct.TYPE_14__* %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %158
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %173 = call i32 @sqlite3DbFree(%struct.TYPE_13__* %171, %struct.TYPE_14__* %172)
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %175 = call i32 @sqlite3OomFault(%struct.TYPE_13__* %174)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %195

176:                                              ; preds = %158
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  store %struct.TYPE_14__* %177, %struct.TYPE_14__** %179, align 8
  br label %180

180:                                              ; preds = %176
  br label %181

181:                                              ; preds = %180, %111, %107, %104
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %183 = icmp ne %struct.TYPE_14__* %182, null
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i64, i64* %11, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189, %184
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %193, %struct.TYPE_14__** %6, align 8
  br label %195

194:                                              ; preds = %189, %181
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %195

195:                                              ; preds = %194, %192, %170
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  ret %struct.TYPE_14__* %196
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i64 @sqlite3HashFind(i32*, i8*) #1

declare dso_local i32 @matchQuality(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @SQLITE_FUNC_HASH(i64, i32) #1

declare dso_local %struct.TYPE_14__* @sqlite3FunctionSearch(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @sqlite3DbMallocZero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3HashInsert(i32*, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3OomFault(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
