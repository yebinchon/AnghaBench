; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_wherecode.c_removeUnindexableInClauseTerms.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_wherecode.c_removeUnindexableInClauseTerms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_29__** }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_30__, %struct.TYPE_28__* }
%struct.TYPE_30__ = type { %struct.TYPE_36__*, %struct.TYPE_27__* }
%struct.TYPE_36__ = type { %struct.TYPE_27__*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_28__* (%struct.TYPE_37__*, i32, %struct.TYPE_35__*, %struct.TYPE_28__*)* @removeUnindexableInClauseTerms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_28__* @removeUnindexableInClauseTerms(%struct.TYPE_37__* %0, i32 %1, %struct.TYPE_35__* %2, %struct.TYPE_28__* %3) #0 {
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_36__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %8, align 8
  %20 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  store %struct.TYPE_34__* %22, %struct.TYPE_34__** %9, align 8
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %25 = call %struct.TYPE_28__* @sqlite3ExprDup(%struct.TYPE_34__* %23, %struct.TYPE_28__* %24, i32 0)
  store %struct.TYPE_28__* %25, %struct.TYPE_28__** %10, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %216

30:                                               ; preds = %4
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_36__*, %struct.TYPE_36__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %35, align 8
  store %struct.TYPE_27__* %36, %struct.TYPE_27__** %11, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %41, align 8
  store %struct.TYPE_27__* %42, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %13, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %14, align 8
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %132, %30
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %135

50:                                               ; preds = %44
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %53, i64 %55
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %58, align 8
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %61 = icmp eq %struct.TYPE_28__* %59, %60
  br i1 %61, label %62, label %131

62:                                               ; preds = %50
  %63 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %65, i64 %67
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %62
  br label %132

83:                                               ; preds = %62
  %84 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %87, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call %struct.TYPE_27__* @sqlite3ExprListAppend(%struct.TYPE_37__* %84, %struct.TYPE_27__* %85, i64 %93)
  store %struct.TYPE_27__* %94, %struct.TYPE_27__** %13, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %96, align 8
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %103, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %116, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call %struct.TYPE_27__* @sqlite3ExprListAppend(%struct.TYPE_37__* %113, %struct.TYPE_27__* %114, i64 %122)
  store %struct.TYPE_27__* %123, %struct.TYPE_27__** %14, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_33__*, %struct.TYPE_33__** %125, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %83, %50
  br label %132

132:                                              ; preds = %131, %82
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  br label %44

135:                                              ; preds = %44
  %136 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %138 = call i32 @sqlite3ExprListDelete(%struct.TYPE_34__* %136, %struct.TYPE_27__* %137)
  %139 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %141 = call i32 @sqlite3ExprListDelete(%struct.TYPE_34__* %139, %struct.TYPE_27__* %140)
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 1
  store %struct.TYPE_27__* %142, %struct.TYPE_27__** %147, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %152, i32 0, i32 1
  store %struct.TYPE_27__* %148, %struct.TYPE_27__** %153, align 8
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %155 = icmp ne %struct.TYPE_27__* %154, null
  br i1 %155, label %156, label %182

156:                                              ; preds = %135
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %182

161:                                              ; preds = %156
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_33__*, %struct.TYPE_33__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %168, %struct.TYPE_28__** %18, align 8
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_33__*, %struct.TYPE_33__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 0
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %176, align 8
  %178 = call i32 @sqlite3ExprDelete(%struct.TYPE_34__* %174, %struct.TYPE_28__* %177)
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 1
  store %struct.TYPE_28__* %179, %struct.TYPE_28__** %181, align 8
  br label %182

182:                                              ; preds = %161, %156, %135
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %185, align 8
  store %struct.TYPE_36__* %186, %struct.TYPE_36__** %16, align 8
  %187 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %188, align 8
  %190 = icmp ne %struct.TYPE_27__* %189, null
  br i1 %190, label %191, label %215

191:                                              ; preds = %182
  %192 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %193, align 8
  store %struct.TYPE_27__* %194, %struct.TYPE_27__** %19, align 8
  store i32 0, i32* %15, align 4
  br label %195

195:                                              ; preds = %211, %191
  %196 = load i32, i32* %15, align 4
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %214

201:                                              ; preds = %195
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %203, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %209, i32 0, i32 0
  store i64 0, i64* %210, align 8
  br label %211

211:                                              ; preds = %201
  %212 = load i32, i32* %15, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %15, align 4
  br label %195

214:                                              ; preds = %195
  br label %215

215:                                              ; preds = %214, %182
  br label %216

216:                                              ; preds = %215, %4
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  ret %struct.TYPE_28__* %217
}

declare dso_local %struct.TYPE_28__* @sqlite3ExprDup(%struct.TYPE_34__*, %struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_27__* @sqlite3ExprListAppend(%struct.TYPE_37__*, %struct.TYPE_27__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ExprListDelete(%struct.TYPE_34__*, %struct.TYPE_27__*) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_34__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
