; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/cache/extr_ftccache.c_ftc_cache_resize.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/cache/extr_ftccache.c_ftc_cache_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__**, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@FTC_HASH_MAX_LOAD = common dso_local global i64 0, align 8
@FTC_HASH_SUB_LOAD = common dso_local global i32 0, align 4
@FTC_HASH_INITIAL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @ftc_cache_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftc_cache_resize(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  br label %15

15:                                               ; preds = %204, %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %120

30:                                               ; preds = %15
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %42, 2
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %45, 4
  %47 = call i64 @FT_RENEW_ARRAY(%struct.TYPE_5__** %40, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %205

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 %56
  store %struct.TYPE_5__** %57, %struct.TYPE_5__*** %4, align 8
  br label %58

58:                                               ; preds = %84, %51
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %3, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %85

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %8, align 8
  br label %84

81:                                               ; preds = %64
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store %struct.TYPE_5__** %83, %struct.TYPE_5__*** %4, align 8
  br label %84

84:                                               ; preds = %81, %72
  br label %58

85:                                               ; preds = %63
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %90, %91
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %89, i64 %94
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %95, align 8
  %96 = load i64, i64* @FTC_HASH_MAX_LOAD, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %85
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 2, %107
  %109 = add nsw i32 %108, 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  br label %119

114:                                              ; preds = %85
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %114, %106
  br label %204

120:                                              ; preds = %15
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @FTC_HASH_SUB_LOAD, align 4
  %126 = mul nsw i32 %124, %125
  %127 = icmp sgt i32 %123, %126
  br i1 %127, label %128, label %202

128:                                              ; preds = %120
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* @FTC_HASH_INITIAL_SIZE, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %205

137:                                              ; preds = %128
  %138 = load i32, i32* %5, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %163

140:                                              ; preds = %137
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %13, align 4
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  %149 = mul nsw i32 %148, 2
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i64 @FT_RENEW_ARRAY(%struct.TYPE_5__** %146, i32 %149, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %140
  br label %205

155:                                              ; preds = %140
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %5, align 4
  br label %166

163:                                              ; preds = %137
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %163, %155
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %169, i64 %171
  store %struct.TYPE_5__** %172, %struct.TYPE_5__*** %4, align 8
  br label %173

173:                                              ; preds = %177, %166
  %174 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = icmp ne %struct.TYPE_5__* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  store %struct.TYPE_5__** %180, %struct.TYPE_5__*** %4, align 8
  br label %173

181:                                              ; preds = %173
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %184, i64 %186
  store %struct.TYPE_5__** %187, %struct.TYPE_5__*** %12, align 8
  %188 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %189, %struct.TYPE_5__** %190, align 8
  %191 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %191, align 8
  %192 = load i64, i64* @FTC_HASH_MAX_LOAD, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = sub nsw i64 %196, %192
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %194, align 8
  %199 = load i32, i32* %5, align 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  br label %203

202:                                              ; preds = %120
  br label %205

203:                                              ; preds = %181
  br label %204

204:                                              ; preds = %203, %119
  br label %15

205:                                              ; preds = %202, %154, %136, %49
  ret void
}

declare dso_local i64 @FT_RENEW_ARRAY(%struct.TYPE_5__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
