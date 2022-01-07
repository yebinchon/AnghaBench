; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3AddPrimaryKey.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3AddPrimaryKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i64, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i8* }

@TF_HasPrimaryKey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"table \22%s\22 has more than one primary key\00", align 1
@COLFLAG_PRIMKEY = common dso_local global i32 0, align 4
@TK_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@SQLITE_SO_DESC = common dso_local global i32 0, align 4
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@TF_Autoincrement = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"AUTOINCREMENT is only allowed on an INTEGER PRIMARY KEY\00", align 1
@SQLITE_IDXTYPE_PRIMARYKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3AddPrimaryKey(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %12, align 8
  store i32 -1, i32* %13, align 4
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %23 = icmp eq %struct.TYPE_21__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %221

25:                                               ; preds = %5
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TF_HasPrimaryKey, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.TYPE_22__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_22__* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %221

38:                                               ; preds = %25
  %39 = load i32, i32* @TF_HasPrimaryKey, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %45 = icmp eq %struct.TYPE_23__* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %38
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i64 %55
  store %struct.TYPE_25__* %56, %struct.TYPE_25__** %12, align 8
  %57 = load i32, i32* @COLFLAG_PRIMKEY, align 4
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  store i32 1, i32* %15, align 4
  br label %136

62:                                               ; preds = %38
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %132, %62
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %135

70:                                               ; preds = %66
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.TYPE_24__* @sqlite3ExprSkipCollate(i32 %78)
  store %struct.TYPE_24__* %79, %struct.TYPE_24__** %16, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %81 = icmp ne %struct.TYPE_24__* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %85 = call i32 @sqlite3StringToId(%struct.TYPE_24__* %84)
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TK_ID, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %131

91:                                               ; preds = %70
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %17, align 8
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %127, %91
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %130

102:                                              ; preds = %96
  %103 = load i8*, i8** %17, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @sqlite3StrICmp(i8* %103, i8* %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %102
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i64 %119
  store %struct.TYPE_25__* %120, %struct.TYPE_25__** %12, align 8
  %121 = load i32, i32* @COLFLAG_PRIMKEY, align 4
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %130

126:                                              ; preds = %102
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %96

130:                                              ; preds = %114, %96
  br label %131

131:                                              ; preds = %130, %70
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  br label %66

135:                                              ; preds = %66
  br label %136

136:                                              ; preds = %135, %46
  %137 = load i32, i32* %15, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %206

139:                                              ; preds = %136
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %141 = icmp ne %struct.TYPE_25__* %140, null
  br i1 %141, label %142, label %206

142:                                              ; preds = %139
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %144 = call i8* @sqlite3ColumnType(%struct.TYPE_25__* %143, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %145 = call i64 @sqlite3StrICmp(i8* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %206

147:                                              ; preds = %142
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @SQLITE_SO_DESC, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %206

151:                                              ; preds = %147
  %152 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %151
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %156 = icmp ne %struct.TYPE_23__* %155, null
  br i1 %156, label %157, label %170

157:                                              ; preds = %154
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call %struct.TYPE_24__* @sqlite3ExprSkipCollate(i32 %163)
  store %struct.TYPE_24__* %164, %struct.TYPE_24__** %18, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %169 = call i32 @sqlite3RenameTokenRemap(%struct.TYPE_22__* %165, i32* %167, %struct.TYPE_24__* %168)
  br label %170

170:                                              ; preds = %157, %154, %151
  %171 = load i32, i32* %13, align 4
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 3
  store i64 %175, i64* %177, align 8
  %178 = load i32, i32* %9, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %170
  %181 = load i32, i32* %9, align 4
  %182 = icmp eq i32 %181, 1
  br label %183

183:                                              ; preds = %180, %170
  %184 = phi i1 [ true, %170 ], [ %182, %180 ]
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @TF_Autoincrement, align 4
  %189 = mul nsw i32 %187, %188
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %195 = icmp ne %struct.TYPE_23__* %194, null
  br i1 %195, label %196, label %205

196:                                              ; preds = %183
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %196, %183
  br label %220

206:                                              ; preds = %147, %142, %139, %136
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %211 = call i32 (%struct.TYPE_22__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_22__* %210, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %219

212:                                              ; preds = %206
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* @SQLITE_IDXTYPE_PRIMARYKEY, align 4
  %218 = call i32 @sqlite3CreateIndex(%struct.TYPE_22__* %213, i32 0, i32 0, i32 0, %struct.TYPE_23__* %214, i32 %215, i32 0, i32 0, i32 %216, i32 0, i32 %217)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %7, align 8
  br label %219

219:                                              ; preds = %212, %209
  br label %220

220:                                              ; preds = %219, %205
  br label %221

221:                                              ; preds = %220, %32, %24
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %226 = call i32 @sqlite3ExprListDelete(i32 %224, %struct.TYPE_23__* %225)
  ret void
}

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_22__*, i8*, ...) #1

declare dso_local %struct.TYPE_24__* @sqlite3ExprSkipCollate(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3StringToId(%struct.TYPE_24__*) #1

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

declare dso_local i8* @sqlite3ColumnType(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @sqlite3RenameTokenRemap(%struct.TYPE_22__*, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3CreateIndex(%struct.TYPE_22__*, i32, i32, i32, %struct.TYPE_23__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3ExprListDelete(i32, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
