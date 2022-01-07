; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3SrcListDup.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3SrcListDup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_8__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @sqlite3SrcListDup(i32* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.SrcList_item*, align 8
  %12 = alloca %struct.SrcList_item*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %202

21:                                               ; preds = %3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 104, %31
  br label %34

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %26
  %35 = phi i64 [ %32, %26 ], [ 0, %33 ]
  %36 = add i64 16, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call %struct.TYPE_11__* @sqlite3DbMallocRawNN(i32* %38, i32 %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %8, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = icmp eq %struct.TYPE_11__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %202

44:                                               ; preds = %34
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %197, %44
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %200

58:                                               ; preds = %52
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load %struct.SrcList_item*, %struct.SrcList_item** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %61, i64 %63
  store %struct.SrcList_item* %64, %struct.SrcList_item** %11, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load %struct.SrcList_item*, %struct.SrcList_item** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %67, i64 %69
  store %struct.SrcList_item* %70, %struct.SrcList_item** %12, align 8
  %71 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %72 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %71, i32 0, i32 14
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %75 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %74, i32 0, i32 14
  store i32 %73, i32* %75, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %78 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %77, i32 0, i32 13
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @sqlite3DbStrDup(i32* %76, i8* %79)
  %81 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %82 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %81, i32 0, i32 13
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %85 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %84, i32 0, i32 12
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @sqlite3DbStrDup(i32* %83, i8* %86)
  %88 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %89 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %88, i32 0, i32 12
  store i8* %87, i8** %89, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %92 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %91, i32 0, i32 11
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @sqlite3DbStrDup(i32* %90, i8* %93)
  %95 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %96 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %95, i32 0, i32 11
  store i8* %94, i8** %96, align 8
  %97 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %98 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %97, i32 0, i32 6
  %99 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %100 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %99, i32 0, i32 6
  %101 = bitcast %struct.TYPE_8__* %98 to i8*
  %102 = bitcast %struct.TYPE_8__* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 16, i1 false)
  %103 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %104 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %107 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 4
  %108 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %109 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %112 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 8
  %113 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %114 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %117 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %116, i32 0, i32 8
  store i32 %115, i32* %117, align 4
  %118 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %119 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %58
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %126 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* @sqlite3DbStrDup(i32* %124, i8* %128)
  %130 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %131 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i8* %129, i8** %132, align 8
  br label %133

133:                                              ; preds = %123, %58
  %134 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %135 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %138 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 8
  %139 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %140 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %133
  %145 = load i32*, i32** %5, align 8
  %146 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %147 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @sqlite3ExprListDup(i32* %145, i32 %149, i32 %150)
  %152 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %153 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  br label %155

155:                                              ; preds = %144, %133
  %156 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %157 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %156, i32 0, i32 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %160 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %159, i32 0, i32 4
  store %struct.TYPE_10__* %158, %struct.TYPE_10__** %160, align 8
  store %struct.TYPE_10__* %158, %struct.TYPE_10__** %13, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %162 = icmp ne %struct.TYPE_10__* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %155
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %163, %155
  %169 = load i32*, i32** %5, align 8
  %170 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %171 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @sqlite3SelectDup(i32* %169, i32 %172, i32 %173)
  %175 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %176 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  %177 = load i32*, i32** %5, align 8
  %178 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %179 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @sqlite3ExprDup(i32* %177, i32 %180, i32 %181)
  %183 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %184 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load i32*, i32** %5, align 8
  %186 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %187 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @sqlite3IdListDup(i32* %185, i32 %188)
  %190 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %191 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  %193 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %196 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  br label %197

197:                                              ; preds = %168
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %9, align 4
  br label %52

200:                                              ; preds = %52
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %201, %struct.TYPE_11__** %4, align 8
  br label %202

202:                                              ; preds = %200, %43, %20
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %203
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @sqlite3DbMallocRawNN(i32*, i32) #1

declare dso_local i8* @sqlite3DbStrDup(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sqlite3ExprListDup(i32*, i32, i32) #1

declare dso_local i32 @sqlite3SelectDup(i32*, i32, i32) #1

declare dso_local i32 @sqlite3ExprDup(i32*, i32, i32) #1

declare dso_local i32 @sqlite3IdListDup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
