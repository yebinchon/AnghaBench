; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_window.c_sqlite3WindowAlloc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_window.c_sqlite3WindowAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i8*, i8*, i64 }
%struct.TYPE_8__ = type { i32 }

@TK_RANGE = common dso_local global i32 0, align 4
@TK_ROWS = common dso_local global i32 0, align 4
@TK_GROUPS = common dso_local global i32 0, align 4
@TK_CURRENT = common dso_local global i32 0, align 4
@TK_PRECEDING = common dso_local global i32 0, align 4
@TK_UNBOUNDED = common dso_local global i32 0, align 4
@TK_FOLLOWING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unsupported frame specification\00", align 1
@SQLITE_WindowFunc = common dso_local global i32 0, align 4
@TK_NO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @sqlite3WindowAlloc(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %16, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @TK_RANGE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @TK_ROWS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @TK_GROUPS, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24, %20, %7
  %33 = phi i1 [ true, %24 ], [ true, %20 ], [ true, %7 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @TK_CURRENT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @TK_PRECEDING, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @TK_UNBOUNDED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @TK_FOLLOWING, align 4
  %50 = icmp eq i32 %48, %49
  br label %51

51:                                               ; preds = %47, %43, %39, %32
  %52 = phi i1 [ true, %43 ], [ true, %39 ], [ true, %32 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @TK_CURRENT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @TK_FOLLOWING, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @TK_UNBOUNDED, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @TK_PRECEDING, align 4
  %69 = icmp eq i32 %67, %68
  br label %70

70:                                               ; preds = %66, %62, %58, %51
  %71 = phi i1 [ true, %62 ], [ true, %58 ], [ true, %51 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @TK_PRECEDING, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @TK_FOLLOWING, align 4
  %80 = icmp eq i32 %78, %79
  br label %81

81:                                               ; preds = %77, %70
  %82 = phi i1 [ true, %70 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = load i32*, i32** %12, align 8
  %85 = icmp ne i32* %84, null
  %86 = zext i1 %85 to i32
  %87 = icmp eq i32 %83, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @TK_FOLLOWING, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %81
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @TK_PRECEDING, align 4
  %96 = icmp eq i32 %94, %95
  br label %97

97:                                               ; preds = %93, %81
  %98 = phi i1 [ true, %81 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = load i32*, i32** %14, align 8
  %101 = icmp ne i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = icmp eq i32 %99, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %97
  store i32 1, i32* %17, align 4
  %109 = load i32, i32* @TK_RANGE, align 4
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %108, %97
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @TK_CURRENT, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @TK_PRECEDING, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %130, label %118

118:                                              ; preds = %114, %110
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @TK_FOLLOWING, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %118
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @TK_PRECEDING, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @TK_CURRENT, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126, %122, %114
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %132 = call i32 @sqlite3ErrorMsg(%struct.TYPE_8__* %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %181

133:                                              ; preds = %126, %118
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @sqlite3DbMallocZero(i32 %136, i32 40)
  %138 = inttoptr i64 %137 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %138, %struct.TYPE_7__** %16, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %140 = icmp eq %struct.TYPE_7__* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %181

142:                                              ; preds = %133
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i64, i64* %15, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %142
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SQLITE_WindowFunc, align 4
  %159 = call i64 @OptimizationDisabled(i32 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i64, i64* @TK_NO, align 8
  store i64 %162, i64* %15, align 8
  br label %163

163:                                              ; preds = %161, %154, %142
  %164 = load i64, i64* %15, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 6
  store i64 %164, i64* %166, align 8
  %167 = load i32, i32* %17, align 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %171 = load i32*, i32** %14, align 8
  %172 = call i8* @sqlite3WindowOffsetExpr(%struct.TYPE_8__* %170, i32* %171)
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 5
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %176 = load i32*, i32** %12, align 8
  %177 = call i8* @sqlite3WindowOffsetExpr(%struct.TYPE_8__* %175, i32* %176)
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 4
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %180, %struct.TYPE_7__** %8, align 8
  br label %192

181:                                              ; preds = %141, %130
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %14, align 8
  %186 = call i32 @sqlite3ExprDelete(i32 %184, i32* %185)
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %12, align 8
  %191 = call i32 @sqlite3ExprDelete(i32 %189, i32* %190)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %192

192:                                              ; preds = %181, %163
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  ret %struct.TYPE_7__* %193
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @sqlite3DbMallocZero(i32, i32) #1

declare dso_local i64 @OptimizationDisabled(i32, i32) #1

declare dso_local i8* @sqlite3WindowOffsetExpr(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @sqlite3ExprDelete(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
