; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprListDup.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprListDup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32, i32, i32, i64, i32, i8*, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@TK_SELECT_COLUMN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @sqlite3ExprListDup(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.ExprList_item*, align 8
  %10 = alloca %struct.ExprList_item*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %191

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = call i32 @sqlite3DbMallocSize(i32* %24, %struct.TYPE_9__* %25)
  %27 = call %struct.TYPE_9__* @sqlite3DbMallocRawNN(i32* %23, i32 %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %8, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = icmp eq %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %191

31:                                               ; preds = %22
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.ExprList_item*, %struct.ExprList_item** %38, align 8
  store %struct.ExprList_item* %39, %struct.ExprList_item** %9, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.ExprList_item*, %struct.ExprList_item** %41, align 8
  store %struct.ExprList_item* %42, %struct.ExprList_item** %10, align 8
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %182, %31
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %189

49:                                               ; preds = %43
  %50 = load %struct.ExprList_item*, %struct.ExprList_item** %10, align 8
  %51 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %50, i32 0, i32 7
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %13, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.TYPE_10__* @sqlite3ExprDup(i32* %53, %struct.TYPE_10__* %54, i32 %55)
  %57 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %58 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %57, i32 0, i32 7
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %61, label %145

61:                                               ; preds = %49
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TK_SELECT_COLUMN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %145

67:                                               ; preds = %61
  %68 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %69 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %68, i32 0, i32 7
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %14, align 8
  %71 = icmp ne %struct.TYPE_10__* %70, null
  br i1 %71, label %72, label %145

72:                                               ; preds = %67
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 0
  br label %80

80:                                               ; preds = %77, %72
  %81 = phi i1 [ true, %72 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %80
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = inttoptr i64 %100 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %12, align 8
  br label %144

104:                                              ; preds = %80
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %110 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %109, i64 -1
  %111 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %110, i32 0, i32 7
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = icmp ne %struct.TYPE_10__* %112, null
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %120 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %119, i64 -1
  %121 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %120, i32 0, i32 7
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  %126 = icmp eq i64 %118, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %130 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %131 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %130, i64 -1
  %132 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %131, i32 0, i32 7
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to %struct.TYPE_10__*
  %137 = icmp eq %struct.TYPE_10__* %129, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %141 = ptrtoint %struct.TYPE_10__* %140 to i64
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %104, %88
  br label %145

145:                                              ; preds = %144, %67, %61, %49
  %146 = load i32*, i32** %5, align 8
  %147 = load %struct.ExprList_item*, %struct.ExprList_item** %10, align 8
  %148 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %147, i32 0, i32 6
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @sqlite3DbStrDup(i32* %146, i8* %149)
  %151 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %152 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %151, i32 0, i32 6
  store i8* %150, i8** %152, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = load %struct.ExprList_item*, %struct.ExprList_item** %10, align 8
  %155 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %154, i32 0, i32 5
  %156 = load i8*, i8** %155, align 8
  %157 = call i8* @sqlite3DbStrDup(i32* %153, i8* %156)
  %158 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %159 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %158, i32 0, i32 5
  store i8* %157, i8** %159, align 8
  %160 = load %struct.ExprList_item*, %struct.ExprList_item** %10, align 8
  %161 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %164 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  %165 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %166 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %165, i32 0, i32 3
  store i64 0, i64* %166, align 8
  %167 = load %struct.ExprList_item*, %struct.ExprList_item** %10, align 8
  %168 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %171 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.ExprList_item*, %struct.ExprList_item** %10, align 8
  %173 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %176 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.ExprList_item*, %struct.ExprList_item** %10, align 8
  %178 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %181 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %145
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  %185 = load %struct.ExprList_item*, %struct.ExprList_item** %9, align 8
  %186 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %185, i32 1
  store %struct.ExprList_item* %186, %struct.ExprList_item** %9, align 8
  %187 = load %struct.ExprList_item*, %struct.ExprList_item** %10, align 8
  %188 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %187, i32 1
  store %struct.ExprList_item* %188, %struct.ExprList_item** %10, align 8
  br label %43

189:                                              ; preds = %43
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %190, %struct.TYPE_9__** %4, align 8
  br label %191

191:                                              ; preds = %189, %30, %21
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %192
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @sqlite3DbMallocRawNN(i32*, i32) #1

declare dso_local i32 @sqlite3DbMallocSize(i32*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @sqlite3ExprDup(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i8* @sqlite3DbStrDup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
