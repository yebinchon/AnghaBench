; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuTableType.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuTableType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@RBU_PK_NOTABLE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"SELECT (sql LIKE 'create virtual%%'), rootpage  FROM sqlite_master WHERE name=%Q\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@RBU_PK_VTAB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"PRAGMA index_list=%Q\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"SELECT rootpage FROM sqlite_master WHERE name = %Q\00", align 1
@RBU_PK_EXTERNAL = common dso_local global i32 0, align 4
@RBU_PK_WITHOUT_ROWID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"PRAGMA table_info=%Q\00", align 1
@RBU_PK_IPK = common dso_local global i32 0, align 4
@RBU_PK_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32*, i32*, i32*)* @rbuTableType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbuTableType(%struct.TYPE_4__* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [4 x i32*], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = bitcast [4 x i32*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 32, i1 false)
  %16 = load i32, i32* @RBU_PK_NOTABLE, align 4
  %17 = load i32*, i32** %8, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %10, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SQLITE_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = call i8* @prepareFreeAndCollectError(i32 %28, i32** %29, i32* %31, i32 %33)
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SQLITE_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %5
  %44 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  %45 = load i32*, i32** %44, align 16
  %46 = call i64 @sqlite3_step(i32* %45)
  %47 = load i64, i64* @SQLITE_ROW, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %5
  br label %180

50:                                               ; preds = %43
  %51 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  %52 = load i32*, i32** %51, align 16
  %53 = call i32 @sqlite3_column_int(i32* %52, i32 0)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @RBU_PK_VTAB, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  br label %180

58:                                               ; preds = %50
  %59 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  %60 = load i32*, i32** %59, align 16
  %61 = call i32 @sqlite3_column_int(i32* %60, i32 1)
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  %71 = call i8* @prepareFreeAndCollectError(i32 %65, i32** %66, i32* %68, i32 %70)
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %58
  br label %180

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %141, %80
  %82 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i64 @sqlite3_step(i32* %83)
  %85 = load i64, i64* @SQLITE_ROW, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %142

87:                                               ; preds = %81
  %88 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i8* @sqlite3_column_text(i32* %89, i32 3)
  store i8* %90, i8** %12, align 8
  %91 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 1
  %92 = load i32*, i32** %91, align 8
  %93 = call i8* @sqlite3_column_text(i32* %92, i32 1)
  store i8* %93, i8** %13, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %141

96:                                               ; preds = %87
  %97 = load i8*, i8** %13, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %141

99:                                               ; preds = %96
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 112
  br i1 %104, label %105, label %141

105:                                              ; preds = %99
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i8*, i8** %13, align 8
  %113 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %112)
  %114 = call i8* @prepareFreeAndCollectError(i32 %108, i32** %109, i32* %111, i32 %113)
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SQLITE_OK, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %105
  %124 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 2
  %125 = load i32*, i32** %124, align 16
  %126 = call i64 @sqlite3_step(i32* %125)
  %127 = load i64, i64* @SQLITE_ROW, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 2
  %131 = load i32*, i32** %130, align 16
  %132 = call i32 @sqlite3_column_int(i32* %131, i32 0)
  %133 = load i32*, i32** %10, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* @RBU_PK_EXTERNAL, align 4
  %135 = load i32*, i32** %8, align 8
  store i32 %134, i32* %135, align 4
  br label %139

136:                                              ; preds = %123
  %137 = load i32, i32* @RBU_PK_WITHOUT_ROWID, align 4
  %138 = load i32*, i32** %8, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %129
  br label %140

140:                                              ; preds = %139, %105
  br label %180

141:                                              ; preds = %99, %96, %87
  br label %81

142:                                              ; preds = %81
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 3
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i8*, i8** %7, align 8
  %150 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %149)
  %151 = call i8* @prepareFreeAndCollectError(i32 %145, i32** %146, i32* %148, i32 %150)
  %152 = ptrtoint i8* %151 to i64
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @SQLITE_OK, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %179

160:                                              ; preds = %142
  br label %161

161:                                              ; preds = %175, %160
  %162 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 3
  %163 = load i32*, i32** %162, align 8
  %164 = call i64 @sqlite3_step(i32* %163)
  %165 = load i64, i64* @SQLITE_ROW, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %161
  %168 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 3
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @sqlite3_column_int(i32* %169, i32 5)
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* @RBU_PK_IPK, align 4
  %174 = load i32*, i32** %8, align 8
  store i32 %173, i32* %174, align 4
  br label %180

175:                                              ; preds = %167
  br label %161

176:                                              ; preds = %161
  %177 = load i32, i32* @RBU_PK_NONE, align 4
  %178 = load i32*, i32** %8, align 8
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %176, %142
  br label %180

180:                                              ; preds = %179, %172, %140, %79, %55, %49
  store i32 0, i32* %14, align 4
  br label %181

181:                                              ; preds = %192, %180
  %182 = load i32, i32* %14, align 4
  %183 = zext i32 %182 to i64
  %184 = icmp ult i64 %183, 4
  br i1 %184, label %185, label %195

185:                                              ; preds = %181
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %187 = load i32, i32* %14, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @rbuFinalize(%struct.TYPE_4__* %186, i32* %190)
  br label %192

192:                                              ; preds = %185
  %193 = load i32, i32* %14, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %14, align 4
  br label %181

195:                                              ; preds = %181
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @prepareFreeAndCollectError(i32, i32**, i32*, i32) #2

declare dso_local i32 @sqlite3_mprintf(i8*, i8*) #2

declare dso_local i64 @sqlite3_step(i32*) #2

declare dso_local i32 @sqlite3_column_int(i32*, i32) #2

declare dso_local i8* @sqlite3_column_text(i32*, i32) #2

declare dso_local i32 @rbuFinalize(%struct.TYPE_4__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
