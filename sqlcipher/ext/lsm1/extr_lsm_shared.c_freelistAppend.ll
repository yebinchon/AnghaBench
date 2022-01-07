; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_freelistAppend.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_freelistAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_12__*, i64, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }

@LSM_NOMEM_BKPT = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freelistAppend(%struct.TYPE_10__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 0
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i1 [ true, %3 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  br label %40

35:                                               ; preds = %23
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi %struct.TYPE_12__* [ %34, %31 ], [ %39, %35 ]
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %9, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %40
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %69

64:                                               ; preds = %58
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %67, 2
  br label %69

69:                                               ; preds = %64, %63
  %70 = phi i32 [ 4, %63 ], [ %68, %64 ]
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 16, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %12, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i64 @lsmRealloc(i32* %75, %struct.TYPE_11__* %78, i32 %79)
  %81 = inttoptr i64 %80 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %13, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %83 = icmp ne %struct.TYPE_11__* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %69
  %85 = load i32, i32* @LSM_NOMEM_BKPT, align 4
  store i32 %85, i32* %4, align 4
  br label %213

86:                                               ; preds = %69
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %92, align 8
  br label %93

93:                                               ; preds = %86, %40
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %138, %93
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %141

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %122, label %103

103:                                              ; preds = %100
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %111, %120
  br label %122

122:                                              ; preds = %103, %100
  %123 = phi i1 [ true, %100 ], [ %121, %103 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %122
  br label %141

137:                                              ; preds = %122
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %94

141:                                              ; preds = %136, %94
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %167

147:                                              ; preds = %141
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %6, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %147
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  store i32 %159, i32* %166, align 8
  br label %211

167:                                              ; preds = %147, %141
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %10, align 4
  %172 = sub nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = mul i64 16, %173
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %14, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i64 %181
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i64 %187
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @memmove(%struct.TYPE_11__* %182, %struct.TYPE_11__* %188, i32 %189)
  %191 = load i64, i64* %6, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  store i64 %191, i64* %198, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  store i32 %199, i32* %206, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %167, %158
  %212 = load i32, i32* @LSM_OK, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %211, %84
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lsmRealloc(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @memmove(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
