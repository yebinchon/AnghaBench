; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_select.c_sqliteProcessJoin.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_select.c_sqliteProcessJoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i64, %struct.TYPE_23__*, i64, i32, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8* }

@JT_OUTER = common dso_local global i32 0, align 4
@JT_NATURAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"a NATURAL join may not have an ON or USING clause\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"cannot have both ON and USING clauses in the same join\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"cannot join using column %s - column not present in both tables\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @sqliteProcessJoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqliteProcessJoin(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.SrcList_item*, align 8
  %10 = alloca %struct.SrcList_item*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %6, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load %struct.SrcList_item*, %struct.SrcList_item** %25, align 8
  %27 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %26, i64 0
  store %struct.SrcList_item* %27, %struct.SrcList_item** %9, align 8
  %28 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %29 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %28, i64 1
  store %struct.SrcList_item* %29, %struct.SrcList_item** %10, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %224, %2
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %231

37:                                               ; preds = %30
  %38 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %39 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %11, align 8
  %42 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %43 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %48 = icmp eq %struct.TYPE_19__* %47, null
  br label %49

49:                                               ; preds = %46, %37
  %50 = phi i1 [ true, %37 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @NEVER(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %224

55:                                               ; preds = %49
  %56 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %57 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @JT_OUTER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %65 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @JT_NATURAL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %123

71:                                               ; preds = %55
  %72 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %73 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %78 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %77, i32 0, i32 1
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %78, align 8
  %80 = icmp ne %struct.TYPE_23__* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %71
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %83 = call i32 (%struct.TYPE_22__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_22__* %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 1, i32* %3, align 4
  br label %232

84:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %119, %84
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %122

91:                                               ; preds = %85
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %13, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i8*, i8** %13, align 8
  %104 = call i64 @tableAndColumnIndex(%struct.TYPE_20__* %100, i32 %102, i8* %103, i32* %14, i32* %15)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %91
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = call i32 @addWhereTerm(%struct.TYPE_22__* %107, %struct.TYPE_20__* %108, i32 %109, i32 %110, i32 %112, i32 %113, i32 %114, i32* %116)
  br label %118

118:                                              ; preds = %106, %91
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %85

122:                                              ; preds = %85
  br label %123

123:                                              ; preds = %122, %55
  %124 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %125 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %130 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %129, i32 0, i32 1
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %130, align 8
  %132 = icmp ne %struct.TYPE_23__* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %135 = call i32 (%struct.TYPE_22__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_22__* %134, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %232

136:                                              ; preds = %128, %123
  %137 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %138 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %167

141:                                              ; preds = %136
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %146 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %149 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @setJoinExpr(i64 %147, i32 %150)
  br label %152

152:                                              ; preds = %144, %141
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %160 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @sqlite3ExprAnd(i32 %155, i32 %158, i64 %161)
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %166 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %165, i32 0, i32 2
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %152, %136
  %168 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %169 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %168, i32 0, i32 1
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = icmp ne %struct.TYPE_23__* %170, null
  br i1 %171, label %172, label %223

172:                                              ; preds = %167
  %173 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %174 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %173, i32 0, i32 1
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %174, align 8
  store %struct.TYPE_23__* %175, %struct.TYPE_23__** %16, align 8
  store i32 0, i32* %8, align 4
  br label %176

176:                                              ; preds = %219, %172
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %222

182:                                              ; preds = %176
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** %17, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %192 = load i8*, i8** %17, align 8
  %193 = call i32 @columnIndex(%struct.TYPE_19__* %191, i8* %192)
  store i32 %193, i32* %20, align 4
  %194 = load i32, i32* %20, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %182
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %198 = load i32, i32* %7, align 4
  %199 = add nsw i32 %198, 1
  %200 = load i8*, i8** %17, align 8
  %201 = call i64 @tableAndColumnIndex(%struct.TYPE_20__* %197, i32 %199, i8* %200, i32* %18, i32* %19)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %196, %182
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %205 = load i8*, i8** %17, align 8
  %206 = call i32 (%struct.TYPE_22__*, i8*, ...) @sqlite3ErrorMsg(%struct.TYPE_22__* %204, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %205)
  store i32 1, i32* %3, align 4
  br label %232

207:                                              ; preds = %196
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  %214 = load i32, i32* %20, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 0
  %218 = call i32 @addWhereTerm(%struct.TYPE_22__* %208, %struct.TYPE_20__* %209, i32 %210, i32 %211, i32 %213, i32 %214, i32 %215, i32* %217)
  br label %219

219:                                              ; preds = %207
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %176

222:                                              ; preds = %176
  br label %223

223:                                              ; preds = %222, %167
  br label %224

224:                                              ; preds = %223, %54
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %7, align 4
  %227 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %228 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %227, i32 1
  store %struct.SrcList_item* %228, %struct.SrcList_item** %10, align 8
  %229 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  %230 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %229, i32 1
  store %struct.SrcList_item* %230, %struct.SrcList_item** %9, align 8
  br label %30

231:                                              ; preds = %30
  store i32 0, i32* %3, align 4
  br label %232

232:                                              ; preds = %231, %203, %133, %81
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_22__*, i8*, ...) #1

declare dso_local i64 @tableAndColumnIndex(%struct.TYPE_20__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @addWhereTerm(%struct.TYPE_22__*, %struct.TYPE_20__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @setJoinExpr(i64, i32) #1

declare dso_local i32 @sqlite3ExprAnd(i32, i32, i64) #1

declare dso_local i32 @columnIndex(%struct.TYPE_19__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
