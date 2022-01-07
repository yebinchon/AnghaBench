; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeStepToLeaf.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeStepToLeaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32, i64 }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64* }

@SQLITE_OK = common dso_local global i32 0, align 4
@RTREE_COORD_INT32 = common dso_local global i64 0, align 8
@FULLY_WITHIN = common dso_local global i32 0, align 4
@RTREE_MATCH = common dso_local global i64 0, align 8
@NOT_WITHIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"POP-S:\00", align 1
@RTREE_ZERO = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"PUSH-S:\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"POP-Se:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @rtreeStepToLeaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtreeStepToLeaf(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %18 = call %struct.TYPE_26__* @RTREE_OF_CURSOR(%struct.TYPE_24__* %17)
  store %struct.TYPE_26__* %18, %struct.TYPE_26__** %5, align 8
  %19 = load i32, i32* @SQLITE_OK, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RTREE_COORD_INT32, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %213, %1
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %31 = call %struct.TYPE_22__* @rtreeSearchPointFirst(%struct.TYPE_24__* %30)
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %4, align 8
  %32 = icmp ne %struct.TYPE_22__* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 0
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i1 [ false, %29 ], [ %37, %33 ]
  br i1 %39, label %40, label %214

40:                                               ; preds = %38
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %42 = call %struct.TYPE_23__* @rtreeNodeOfFirstSearchPoint(%struct.TYPE_24__* %41, i32* %8)
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %221

47:                                               ; preds = %40
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %49 = call i32 @NCELL(%struct.TYPE_23__* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 200
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  br label %54

54:                                               ; preds = %135, %47
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %202

60:                                               ; preds = %54
  store i64 -1, i64* %14, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = add nsw i32 4, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %63, i64 %72
  store i64* %73, i64** %15, align 8
  %74 = load i32, i32* @FULLY_WITHIN, align 4
  store i32 %74, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %124, %60
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %127

79:                                               ; preds = %75
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i64 %84
  store %struct.TYPE_25__* %85, %struct.TYPE_25__** %16, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @RTREE_MATCH, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %79
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i64*, i64** %15, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %96 = call i32 @rtreeCallbackConstraint(%struct.TYPE_25__* %92, i32 %93, i64* %94, %struct.TYPE_22__* %95, i64* %14, i32* %7)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %2, align 4
  br label %221

101:                                              ; preds = %91
  br label %118

102:                                              ; preds = %79
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i64*, i64** %15, align 8
  %111 = call i32 @rtreeLeafConstraint(%struct.TYPE_25__* %108, i32 %109, i64* %110, i32* %7)
  br label %117

112:                                              ; preds = %102
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i64*, i64** %15, align 8
  %116 = call i32 @rtreeNonleafConstraint(%struct.TYPE_25__* %113, i32 %114, i64* %115, i32* %7)
  br label %117

117:                                              ; preds = %112, %107
  br label %118

118:                                              ; preds = %117, %101
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @NOT_WITHIN, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %127

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %75

127:                                              ; preds = %122, %75
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @NOT_WITHIN, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %54

136:                                              ; preds = %127
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 1
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i32 %140, i32* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %136
  %146 = load i64*, i64** %15, align 8
  %147 = call i32 @readInt64(i64* %146)
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 2
  store i32 %147, i32* %148, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  store i32 0, i32* %149, align 4
  br label %160

150:                                              ; preds = %136
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 2
  store i32 %153, i32* %154, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 1
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %150, %145
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %168 = call i32 @RTREE_QUEUE_TRACE(%struct.TYPE_24__* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %170 = call i32 @rtreeSearchPointPop(%struct.TYPE_24__* %169)
  br label %171

171:                                              ; preds = %166, %160
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* @RTREE_ZERO, align 8
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i64, i64* @RTREE_ZERO, align 8
  store i64 %176, i64* %14, align 8
  br label %177

177:                                              ; preds = %175, %171
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %179 = load i64, i64* %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call %struct.TYPE_22__* @rtreeSearchPointNew(%struct.TYPE_24__* %178, i64 %179, i32 %181)
  store %struct.TYPE_22__* %182, %struct.TYPE_22__** %4, align 8
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %184 = icmp eq %struct.TYPE_22__* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %186, i32* %2, align 4
  br label %221

187:                                              ; preds = %177
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 3
  store i64 %189, i64* %191, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %201 = call i32 @RTREE_QUEUE_TRACE(%struct.TYPE_24__* %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %202

202:                                              ; preds = %187, %54
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp sge i32 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %210 = call i32 @RTREE_QUEUE_TRACE(%struct.TYPE_24__* %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %212 = call i32 @rtreeSearchPointPop(%struct.TYPE_24__* %211)
  br label %213

213:                                              ; preds = %208, %202
  br label %29

214:                                              ; preds = %38
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %216 = icmp eq %struct.TYPE_22__* %215, null
  %217 = zext i1 %216 to i32
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* @SQLITE_OK, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %214, %185, %99, %45
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.TYPE_26__* @RTREE_OF_CURSOR(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_22__* @rtreeSearchPointFirst(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @rtreeNodeOfFirstSearchPoint(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @NCELL(%struct.TYPE_23__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rtreeCallbackConstraint(%struct.TYPE_25__*, i32, i64*, %struct.TYPE_22__*, i64*, i32*) #1

declare dso_local i32 @rtreeLeafConstraint(%struct.TYPE_25__*, i32, i64*, i32*) #1

declare dso_local i32 @rtreeNonleafConstraint(%struct.TYPE_25__*, i32, i64*, i32*) #1

declare dso_local i32 @readInt64(i64*) #1

declare dso_local i32 @RTREE_QUEUE_TRACE(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @rtreeSearchPointPop(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_22__* @rtreeSearchPointNew(%struct.TYPE_24__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
