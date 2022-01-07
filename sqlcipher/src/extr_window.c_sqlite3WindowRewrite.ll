; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_window.c_sqlite3WindowRewrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_window.c_sqlite3WindowRewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_51__ = type { i64, i64, %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i64 }
%struct.TYPE_50__ = type { i64, i32, %struct.TYPE_49__*, i64, i64, i32*, %struct.TYPE_52__*, i32*, %struct.TYPE_48__* }
%struct.TYPE_49__ = type { %struct.TYPE_46__* }
%struct.TYPE_46__ = type { %struct.TYPE_50__* }
%struct.TYPE_52__ = type { i64 }
%struct.TYPE_48__ = type { i64, i64, i64, i32, %struct.TYPE_45__*, i64, %struct.TYPE_48__*, i32, i32, i64 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@OP_Null = common dso_local global i32 0, align 4
@TK_INTEGER = common dso_local global i32 0, align 4
@sqlite3IntTokens = common dso_local global i32* null, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SF_Expanded = common dso_local global i32 0, align 4
@SF_Aggregate = common dso_local global i32 0, align 4
@OP_OpenEphemeral = common dso_local global i32 0, align 4
@OP_OpenDup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3WindowRewrite(%struct.TYPE_51__* %0, %struct.TYPE_50__* %1) #0 {
  %3 = alloca %struct.TYPE_51__*, align 8
  %4 = alloca %struct.TYPE_50__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_47__*, align 8
  %8 = alloca %struct.TYPE_50__*, align 8
  %9 = alloca %struct.TYPE_49__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_52__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_52__*, align 8
  %14 = alloca %struct.TYPE_52__*, align 8
  %15 = alloca %struct.TYPE_48__*, align 8
  %16 = alloca %struct.TYPE_48__*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_51__* %0, %struct.TYPE_51__** %3, align 8
  store %struct.TYPE_50__* %1, %struct.TYPE_50__** %4, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %19, i32 0, i32 8
  %21 = load %struct.TYPE_48__*, %struct.TYPE_48__** %20, align 8
  %22 = icmp ne %struct.TYPE_48__* %21, null
  br i1 %22, label %23, label %321

23:                                               ; preds = %2
  %24 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %321

28:                                               ; preds = %23
  %29 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %30 = call i32* @sqlite3GetVdbe(%struct.TYPE_51__* %29)
  store i32* %30, i32** %6, align 8
  %31 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_47__*, %struct.TYPE_47__** %32, align 8
  store %struct.TYPE_47__* %33, %struct.TYPE_47__** %7, align 8
  store %struct.TYPE_50__* null, %struct.TYPE_50__** %8, align 8
  %34 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_49__*, %struct.TYPE_49__** %35, align 8
  store %struct.TYPE_49__* %36, %struct.TYPE_49__** %9, align 8
  %37 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %10, align 8
  %40 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_52__*, %struct.TYPE_52__** %41, align 8
  store %struct.TYPE_52__* %42, %struct.TYPE_52__** %11, align 8
  %43 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %12, align 8
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %13, align 8
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %14, align 8
  %46 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %46, i32 0, i32 8
  %48 = load %struct.TYPE_48__*, %struct.TYPE_48__** %47, align 8
  store %struct.TYPE_48__* %48, %struct.TYPE_48__** %15, align 8
  %49 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %49, i32 0, i32 2
  store %struct.TYPE_49__* null, %struct.TYPE_49__** %50, align 8
  %51 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %51, i32 0, i32 7
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %53, i32 0, i32 6
  store %struct.TYPE_52__* null, %struct.TYPE_52__** %54, align 8
  %55 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %55, i32 0, i32 5
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %58 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.TYPE_52__* @sqlite3ExprListDup(%struct.TYPE_47__* %57, i32 %60, i32 0)
  store %struct.TYPE_52__* %61, %struct.TYPE_52__** %13, align 8
  %62 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %63 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %64 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.TYPE_52__* @exprListAppendList(%struct.TYPE_51__* %62, %struct.TYPE_52__* %63, i32 %66)
  store %struct.TYPE_52__* %67, %struct.TYPE_52__** %13, align 8
  %68 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %69 = icmp ne %struct.TYPE_52__* %68, null
  br i1 %69, label %70, label %91

70:                                               ; preds = %28
  %71 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %77 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @sqlite3ExprListCompare(%struct.TYPE_52__* %76, i64 %79, i32 -1)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %84 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @sqlite3ExprListDelete(%struct.TYPE_47__* %83, i64 %86)
  %88 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %82, %75
  br label %91

91:                                               ; preds = %90, %70, %28
  %92 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 3
  store i64 %101, i64* %99, align 8
  %102 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %103 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %104 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %105 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @selectWindowRewriteEList(%struct.TYPE_51__* %102, %struct.TYPE_48__* %103, %struct.TYPE_49__* %104, i64 %107, %struct.TYPE_52__** %14)
  %109 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %110 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %111 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %112 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @selectWindowRewriteEList(%struct.TYPE_51__* %109, %struct.TYPE_48__* %110, %struct.TYPE_49__* %111, i64 %114, %struct.TYPE_52__** %14)
  %116 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %117 = icmp ne %struct.TYPE_52__* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %91
  %119 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  br label %123

122:                                              ; preds = %91
  br label %123

123:                                              ; preds = %122, %118
  %124 = phi i64 [ %121, %118 ], [ 0, %122 ]
  %125 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %125, i32 0, i32 9
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %128 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %129 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = call %struct.TYPE_52__* @exprListAppendList(%struct.TYPE_51__* %127, %struct.TYPE_52__* %128, i32 %131)
  store %struct.TYPE_52__* %132, %struct.TYPE_52__** %14, align 8
  %133 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %134 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %135 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = call %struct.TYPE_52__* @exprListAppendList(%struct.TYPE_51__* %133, %struct.TYPE_52__* %134, i32 %137)
  store %struct.TYPE_52__* %138, %struct.TYPE_52__** %14, align 8
  %139 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  store %struct.TYPE_48__* %139, %struct.TYPE_48__** %16, align 8
  br label %140

140:                                              ; preds = %197, %123
  %141 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %142 = icmp ne %struct.TYPE_48__* %141, null
  br i1 %142, label %143, label %201

143:                                              ; preds = %140
  %144 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %145 = icmp ne %struct.TYPE_52__* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  br label %151

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %146
  %152 = phi i64 [ %149, %146 ], [ 0, %150 ]
  %153 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %153, i32 0, i32 5
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %156 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %157 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_45__*, %struct.TYPE_45__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call %struct.TYPE_52__* @exprListAppendList(%struct.TYPE_51__* %155, %struct.TYPE_52__* %156, i32 %162)
  store %struct.TYPE_52__* %163, %struct.TYPE_52__** %14, align 8
  %164 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %151
  %169 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %170 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i32* @sqlite3ExprDup(%struct.TYPE_47__* %169, i32 %172, i32 0)
  store i32* %173, i32** %17, align 8
  %174 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %175 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %176 = load i32*, i32** %17, align 8
  %177 = call %struct.TYPE_52__* @sqlite3ExprListAppend(%struct.TYPE_51__* %174, %struct.TYPE_52__* %175, i32* %176)
  store %struct.TYPE_52__* %177, %struct.TYPE_52__** %14, align 8
  br label %178

178:                                              ; preds = %168, %151
  %179 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %180, align 8
  %183 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %183, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  %185 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %186, align 8
  %189 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* @OP_Null, align 4
  %193 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @sqlite3VdbeAddOp2(i32* %191, i32 %192, i64 0, i64 %195)
  br label %197

197:                                              ; preds = %178
  %198 = load %struct.TYPE_48__*, %struct.TYPE_48__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %198, i32 0, i32 6
  %200 = load %struct.TYPE_48__*, %struct.TYPE_48__** %199, align 8
  store %struct.TYPE_48__* %200, %struct.TYPE_48__** %16, align 8
  br label %140

201:                                              ; preds = %140
  %202 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %203 = icmp eq %struct.TYPE_52__* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %206 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %207 = load i32, i32* @TK_INTEGER, align 4
  %208 = load i32*, i32** @sqlite3IntTokens, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = call i32* @sqlite3ExprAlloc(%struct.TYPE_47__* %206, i32 %207, i32* %209, i32 0)
  %211 = call %struct.TYPE_52__* @sqlite3ExprListAppend(%struct.TYPE_51__* %205, %struct.TYPE_52__* null, i32* %210)
  store %struct.TYPE_52__* %211, %struct.TYPE_52__** %14, align 8
  br label %212

212:                                              ; preds = %204, %201
  %213 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %214 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %215 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %216 = load i32*, i32** %10, align 8
  %217 = load %struct.TYPE_52__*, %struct.TYPE_52__** %11, align 8
  %218 = load i32*, i32** %12, align 8
  %219 = load %struct.TYPE_52__*, %struct.TYPE_52__** %13, align 8
  %220 = call %struct.TYPE_50__* @sqlite3SelectNew(%struct.TYPE_51__* %213, %struct.TYPE_52__* %214, %struct.TYPE_49__* %215, i32* %216, %struct.TYPE_52__* %217, i32* %218, %struct.TYPE_52__* %219, i32 0, i32 0)
  store %struct.TYPE_50__* %220, %struct.TYPE_50__** %8, align 8
  %221 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %222 = call %struct.TYPE_49__* @sqlite3SrcListAppend(%struct.TYPE_51__* %221, i32 0, i32 0, i32 0)
  %223 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %223, i32 0, i32 2
  store %struct.TYPE_49__* %222, %struct.TYPE_49__** %224, align 8
  %225 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_49__*, %struct.TYPE_49__** %226, align 8
  %228 = icmp ne %struct.TYPE_49__* %227, null
  br i1 %228, label %229, label %309

229:                                              ; preds = %212
  %230 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %231 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_49__*, %struct.TYPE_49__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_46__*, %struct.TYPE_46__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %235, i64 0
  %237 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %236, i32 0, i32 0
  store %struct.TYPE_50__* %230, %struct.TYPE_50__** %237, align 8
  %238 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %239 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_49__*, %struct.TYPE_49__** %240, align 8
  %242 = call i32 @sqlite3SrcListAssignCursors(%struct.TYPE_51__* %238, %struct.TYPE_49__* %241)
  %243 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %244 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_49__*, %struct.TYPE_49__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_46__*, %struct.TYPE_46__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %248, i64 0
  %250 = call i64 @sqlite3ExpandSubquery(%struct.TYPE_51__* %243, %struct.TYPE_46__* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %229
  %253 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %253, i32* %5, align 4
  br label %269

254:                                              ; preds = %229
  %255 = load i32, i32* @SF_Expanded, align 4
  %256 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  %260 = load i32, i32* @SF_Aggregate, align 4
  %261 = xor i32 %260, -1
  %262 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load %struct.TYPE_51__*, %struct.TYPE_51__** %3, align 8
  %267 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %268 = call i32 @sqlite3SelectPrep(%struct.TYPE_51__* %266, %struct.TYPE_50__* %267, i32 0)
  br label %269

269:                                              ; preds = %254, %252
  %270 = load i32*, i32** %6, align 8
  %271 = load i32, i32* @OP_OpenEphemeral, align 4
  %272 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %273 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.TYPE_52__*, %struct.TYPE_52__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @sqlite3VdbeAddOp2(i32* %270, i32 %271, i64 %274, i64 %277)
  %279 = load i32*, i32** %6, align 8
  %280 = load i32, i32* @OP_OpenDup, align 4
  %281 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %283, 1
  %285 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %286 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @sqlite3VdbeAddOp2(i32* %279, i32 %280, i64 %284, i64 %287)
  %289 = load i32*, i32** %6, align 8
  %290 = load i32, i32* @OP_OpenDup, align 4
  %291 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %292 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = add nsw i64 %293, 2
  %295 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %296 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = call i32 @sqlite3VdbeAddOp2(i32* %289, i32 %290, i64 %294, i64 %297)
  %299 = load i32*, i32** %6, align 8
  %300 = load i32, i32* @OP_OpenDup, align 4
  %301 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %302 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %303, 3
  %305 = load %struct.TYPE_48__*, %struct.TYPE_48__** %15, align 8
  %306 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = call i32 @sqlite3VdbeAddOp2(i32* %299, i32 %300, i64 %304, i64 %307)
  br label %313

309:                                              ; preds = %212
  %310 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %311 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %312 = call i32 @sqlite3SelectDelete(%struct.TYPE_47__* %310, %struct.TYPE_50__* %311)
  br label %313

313:                                              ; preds = %309, %269
  %314 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %313
  %319 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %319, i32* %5, align 4
  br label %320

320:                                              ; preds = %318, %313
  br label %321

321:                                              ; preds = %320, %23, %2
  %322 = load i32, i32* %5, align 4
  ret i32 %322
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_51__*) #1

declare dso_local %struct.TYPE_52__* @sqlite3ExprListDup(%struct.TYPE_47__*, i32, i32) #1

declare dso_local %struct.TYPE_52__* @exprListAppendList(%struct.TYPE_51__*, %struct.TYPE_52__*, i32) #1

declare dso_local i64 @sqlite3ExprListCompare(%struct.TYPE_52__*, i64, i32) #1

declare dso_local i32 @sqlite3ExprListDelete(%struct.TYPE_47__*, i64) #1

declare dso_local i32 @selectWindowRewriteEList(%struct.TYPE_51__*, %struct.TYPE_48__*, %struct.TYPE_49__*, i64, %struct.TYPE_52__**) #1

declare dso_local i32* @sqlite3ExprDup(%struct.TYPE_47__*, i32, i32) #1

declare dso_local %struct.TYPE_52__* @sqlite3ExprListAppend(%struct.TYPE_51__*, %struct.TYPE_52__*, i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i64, i64) #1

declare dso_local i32* @sqlite3ExprAlloc(%struct.TYPE_47__*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_50__* @sqlite3SelectNew(%struct.TYPE_51__*, %struct.TYPE_52__*, %struct.TYPE_49__*, i32*, %struct.TYPE_52__*, i32*, %struct.TYPE_52__*, i32, i32) #1

declare dso_local %struct.TYPE_49__* @sqlite3SrcListAppend(%struct.TYPE_51__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3SrcListAssignCursors(%struct.TYPE_51__*, %struct.TYPE_49__*) #1

declare dso_local i64 @sqlite3ExpandSubquery(%struct.TYPE_51__*, %struct.TYPE_46__*) #1

declare dso_local i32 @sqlite3SelectPrep(%struct.TYPE_51__*, %struct.TYPE_50__*, i32) #1

declare dso_local i32 @sqlite3SelectDelete(%struct.TYPE_47__*, %struct.TYPE_50__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
