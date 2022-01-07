; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprAssignVarNumber.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprAssignVarNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }

@EP_IntValue = common dso_local global i32 0, align 4
@EP_Reduced = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_LIMIT_VARIABLE_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"variable number must be between ?1 and ?%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"too many SQL variables\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3ExprAssignVarNumber(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %7, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = icmp eq %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %213

19:                                               ; preds = %3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = load i32, i32* @EP_IntValue, align 4
  %22 = load i32, i32* @EP_Reduced, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @EP_TokenOnly, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ExprHasProperty(%struct.TYPE_13__* %20, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i64, i64* %6, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @sqlite3Strlen30(i8* %47)
  %49 = icmp eq i64 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %19
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 63
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  store i32 %68, i32* %9, align 4
  br label %198

69:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 63
  br i1 %74, label %75, label %167

75:                                               ; preds = %69
  %76 = load i64, i64* %6, align 8
  %77 = icmp eq i64 %76, 2
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = sub nsw i32 %82, 48
  store i32 %83, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %93

84:                                               ; preds = %75
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i64, i64* %6, align 8
  %88 = sub nsw i64 %87, 1
  %89 = load i32, i32* @SQLITE_UTF8, align 4
  %90 = call i64 @sqlite3Atoi64(i8* %86, i32* %11, i64 %88, i32 %89)
  %91 = icmp eq i64 0, %90
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %84, %78
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @testcase(i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 1
  %100 = zext i1 %99 to i32
  %101 = call i32 @testcase(i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @SQLITE_LIMIT_VARIABLE_NUMBER, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1
  %110 = icmp eq i32 %102, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @testcase(i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @SQLITE_LIMIT_VARIABLE_NUMBER, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %113, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @testcase(i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %93
  %126 = load i32, i32* %11, align 4
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %137, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @SQLITE_LIMIT_VARIABLE_NUMBER, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %129, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %128, %125, %93
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* @SQLITE_LIMIT_VARIABLE_NUMBER, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (%struct.TYPE_12__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_12__* %138, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %144)
  br label %213

146:                                              ; preds = %128
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sgt i32 %148, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  store i32 1, i32* %10, align 4
  br label %166

157:                                              ; preds = %146
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i64 @sqlite3VListNumToName(i32 %160, i32 %161)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  store i32 1, i32* %10, align 4
  br label %165

165:                                              ; preds = %164, %157
  br label %166

166:                                              ; preds = %165, %153
  br label %183

167:                                              ; preds = %69
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %8, align 8
  %172 = load i64, i64* %6, align 8
  %173 = call i64 @sqlite3VListNameToNum(i32 %170, i8* %171, i64 %172)
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %167
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 8
  store i32 %181, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %182

182:                                              ; preds = %177, %167
  br label %183

183:                                              ; preds = %182, %166
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %183
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i8*, i8** %8, align 8
  %192 = load i64, i64* %6, align 8
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @sqlite3VListAdd(%struct.TYPE_11__* %187, i32 %190, i8* %191, i64 %192, i32 %193)
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %186, %183
  br label %198

198:                                              ; preds = %197, %57
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* %9, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @SQLITE_LIMIT_VARIABLE_NUMBER, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = icmp sgt i32 %202, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %198
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %212 = call i32 (%struct.TYPE_12__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_12__* %211, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %213

213:                                              ; preds = %18, %137, %210, %198
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @sqlite3Strlen30(i8*) #1

declare dso_local i64 @sqlite3Atoi64(i8*, i32*, i64, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i64 @sqlite3VListNumToName(i32, i32) #1

declare dso_local i64 @sqlite3VListNameToNum(i32, i8*, i64) #1

declare dso_local i32 @sqlite3VListAdd(%struct.TYPE_11__*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
