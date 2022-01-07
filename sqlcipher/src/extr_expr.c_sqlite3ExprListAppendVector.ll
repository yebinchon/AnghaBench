; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprListAppendVector.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprListAppendVector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_34__*, i64 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_34__ = type { i64, i32, %struct.TYPE_34__* }

@TK_SELECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"%d columns assigned %d values\00", align 1
@TK_SELECT_COLUMN = common dso_local global i64 0, align 8
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_33__* @sqlite3ExprListAppendVector(%struct.TYPE_31__* %0, %struct.TYPE_33__* %1, %struct.TYPE_32__* %2, %struct.TYPE_34__* %3) #0 {
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %6, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %7, align 8
  store %struct.TYPE_34__* %3, %struct.TYPE_34__** %8, align 8
  %15 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  store %struct.TYPE_30__* %17, %struct.TYPE_30__** %9, align 8
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %19 = icmp ne %struct.TYPE_33__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 0, %24 ]
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %28 = icmp eq %struct.TYPE_32__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @NEVER(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %161

33:                                               ; preds = %25
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %35 = icmp eq %struct.TYPE_34__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %161

37:                                               ; preds = %33
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TK_SELECT, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %48 = call i32 @sqlite3ExprVectorSize(%struct.TYPE_34__* %47)
  store i32 %48, i32* %10, align 4
  %49 = icmp ne i32 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @sqlite3ErrorMsg(%struct.TYPE_31__* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  br label %161

57:                                               ; preds = %43, %37
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %112, %57
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %115

64:                                               ; preds = %58
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call %struct.TYPE_34__* @sqlite3ExprForVectorField(%struct.TYPE_31__* %65, %struct.TYPE_34__* %66, i32 %67)
  store %struct.TYPE_34__* %68, %struct.TYPE_34__** %13, align 8
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %72 = call %struct.TYPE_33__* @sqlite3ExprListAppend(%struct.TYPE_31__* %69, %struct.TYPE_33__* %70, %struct.TYPE_34__* %71)
  store %struct.TYPE_33__* %72, %struct.TYPE_33__** %6, align 8
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %74 = icmp ne %struct.TYPE_33__* %73, null
  br i1 %74, label %75, label %111

75:                                               ; preds = %64
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %79, %80
  %82 = add nsw i32 %81, 1
  %83 = icmp eq i32 %78, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %95, align 8
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 1
  store i64 %93, i64* %103, align 8
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %75, %64
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %58

115:                                              ; preds = %58
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %160, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TK_SELECT, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %160

126:                                              ; preds = %120
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %128 = icmp ne %struct.TYPE_33__* %127, null
  %129 = zext i1 %128 to i32
  %130 = call i64 @ALWAYS(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %126
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %139, align 8
  store %struct.TYPE_34__* %140, %struct.TYPE_34__** %14, align 8
  %141 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %142 = icmp ne %struct.TYPE_34__* %141, null
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @TK_SELECT_COLUMN, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %153 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 2
  store %struct.TYPE_34__* %152, %struct.TYPE_34__** %154, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %8, align 8
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %132, %126, %120, %115
  br label %161

161:                                              ; preds = %160, %50, %36, %32
  %162 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %167 = call i32 @sqlite3RenameExprUnmap(%struct.TYPE_31__* %165, %struct.TYPE_34__* %166)
  br label %168

168:                                              ; preds = %164, %161
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %171 = call i32 @sqlite3ExprDelete(%struct.TYPE_30__* %169, %struct.TYPE_34__* %170)
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %174 = call i32 @sqlite3IdListDelete(%struct.TYPE_30__* %172, %struct.TYPE_32__* %173)
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  ret %struct.TYPE_33__* %175
}

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3ExprVectorSize(%struct.TYPE_34__*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_31__*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_34__* @sqlite3ExprForVectorField(%struct.TYPE_31__*, %struct.TYPE_34__*, i32) #1

declare dso_local %struct.TYPE_33__* @sqlite3ExprListAppend(%struct.TYPE_31__*, %struct.TYPE_33__*, %struct.TYPE_34__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i32 @sqlite3RenameExprUnmap(%struct.TYPE_31__*, %struct.TYPE_34__*) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_30__*, %struct.TYPE_34__*) #1

declare dso_local i32 @sqlite3IdListDelete(%struct.TYPE_30__*, %struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
