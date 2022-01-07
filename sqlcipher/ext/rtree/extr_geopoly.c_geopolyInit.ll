; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_VTAB_CONSTRAINT_SUPPORT = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@rtreeModule = common dso_local global i32 0, align 4
@RTREE_COORD_REAL32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CREATE TABLE x(_shape\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**, i32)* @geopolyInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geopolyInit(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8** %3, i8*** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @SQLITE_VTAB_CONSTRAINT_SUPPORT, align 4
  %26 = call i32 @sqlite3_vtab_config(i32* %24, i32 %25, i32 1)
  %27 = load i8**, i8*** %12, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %18, align 4
  %31 = load i8**, i8*** %12, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strlen(i8* %33)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %18, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 56, %36
  %38 = load i32, i32* %19, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = add i64 %40, 2
  %42 = trunc i64 %41 to i32
  %43 = call i64 @sqlite3_malloc64(i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %17, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %7
  %48 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %48, i32* %8, align 4
  br label %216

49:                                               ; preds = %7
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 56, %52
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = add i64 %56, 2
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(%struct.TYPE_8__* %50, i32 0, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 9
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32* @rtreeModule, i32** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 1
  %67 = bitcast %struct.TYPE_8__* %66 to i8*
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %18, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @RTREE_COORD_REAL32, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  store i32 2, i32* %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 4
  store i32 4, i32* %85, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %12, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @memcpy(i8* %88, i8* %91, i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** %12, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %19, align 4
  %101 = call i32 @memcpy(i8* %96, i8* %99, i32 %100)
  %102 = load i32*, i32** %9, align 8
  %103 = call i32* @sqlite3_str_new(i32* %102)
  store i32* %103, i32** %20, align 8
  %104 = load i32*, i32** %20, align 8
  %105 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 5
  store i32 1, i32* %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 6
  store i32 1, i32* %109, align 4
  store i32 3, i32* %22, align 4
  br label %110

110:                                              ; preds = %126, %49
  %111 = load i32, i32* %22, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load i32*, i32** %20, align 8
  %120 = load i8**, i8*** %12, align 8
  %121 = load i32, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %22, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %22, align 4
  br label %110

129:                                              ; preds = %110
  %130 = load i32*, i32** %20, align 8
  %131 = call i32 (i32*, i8*, ...) @sqlite3_str_appendf(i32* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %132 = load i32*, i32** %20, align 8
  %133 = call i8* @sqlite3_str_finish(i32* %132)
  store i8* %133, i8** %21, align 8
  %134 = load i8*, i8** %21, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %129
  %137 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %137, i32* %16, align 4
  br label %150

138:                                              ; preds = %129
  %139 = load i32, i32* @SQLITE_OK, align 4
  %140 = load i32*, i32** %9, align 8
  %141 = load i8*, i8** %21, align 8
  %142 = call i32 @sqlite3_declare_vtab(i32* %140, i8* %141)
  store i32 %142, i32* %16, align 4
  %143 = icmp ne i32 %139, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @sqlite3_errmsg(i32* %145)
  %147 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  %148 = load i8**, i8*** %14, align 8
  store i8* %147, i8** %148, align 8
  br label %149

149:                                              ; preds = %144, %138
  br label %150

150:                                              ; preds = %149, %136
  %151 = load i8*, i8** %21, align 8
  %152 = call i32 @sqlite3_free(i8* %151)
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %195

156:                                              ; preds = %150
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %159, 4
  %161 = add nsw i32 8, %160
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %166 = load i32, i32* %15, align 4
  %167 = load i8**, i8*** %14, align 8
  %168 = call i32 @getNodeSize(i32* %164, %struct.TYPE_8__* %165, i32 %166, i8** %167)
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %156
  br label %195

172:                                              ; preds = %156
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = load i8**, i8*** %12, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 1
  %177 = load i8*, i8** %176, align 8
  %178 = load i8**, i8*** %12, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 2
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @rtreeSqlInit(%struct.TYPE_8__* %173, i32* %174, i8* %177, i8* %180, i32 %181)
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %172
  %186 = load i32*, i32** %9, align 8
  %187 = call i32 @sqlite3_errmsg(i32* %186)
  %188 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %187)
  %189 = load i8**, i8*** %14, align 8
  store i8* %188, i8** %189, align 8
  br label %195

190:                                              ; preds = %172
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %192 = bitcast %struct.TYPE_8__* %191 to i32*
  %193 = load i32**, i32*** %13, align 8
  store i32* %192, i32** %193, align 8
  %194 = load i32, i32* @SQLITE_OK, align 4
  store i32 %194, i32* %8, align 4
  br label %216

195:                                              ; preds = %185, %171, %155
  %196 = load i32, i32* %16, align 4
  %197 = load i32, i32* @SQLITE_OK, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %200, i32* %16, align 4
  br label %201

201:                                              ; preds = %199, %195
  %202 = load i32**, i32*** %13, align 8
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 1
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %214 = call i32 @rtreeRelease(%struct.TYPE_8__* %213)
  %215 = load i32, i32* %16, align 4
  store i32 %215, i32* %8, align 4
  br label %216

216:                                              ; preds = %201, %190, %47
  %217 = load i32, i32* %8, align 4
  ret i32 %217
}

declare dso_local i32 @sqlite3_vtab_config(i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32* @sqlite3_str_new(i32*) #1

declare dso_local i32 @sqlite3_str_appendf(i32*, i8*, ...) #1

declare dso_local i8* @sqlite3_str_finish(i32*) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @getNodeSize(i32*, %struct.TYPE_8__*, i32, i8**) #1

declare dso_local i32 @rtreeSqlInit(%struct.TYPE_8__*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rtreeRelease(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
