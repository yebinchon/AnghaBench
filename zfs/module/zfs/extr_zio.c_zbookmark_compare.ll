; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zbookmark_compare.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zbookmark_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@SPA_MINBLOCKSHIFT = common dso_local global i64 0, align 8
@DMU_META_DNODE_OBJECT = common dso_local global i64 0, align 8
@DNODE_SHIFT = common dso_local global i64 0, align 8
@COMPARE_META_LEVEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zbookmark_compare(i64 %0, i64 %1, i64 %2, i64 %3, %struct.TYPE_4__* %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %6
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %167

44:                                               ; preds = %35, %27, %6
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @SPA_MINBLOCKSHIFT, align 8
  %52 = icmp sge i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @IMPLY(i32 %49, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @SPA_MINBLOCKSHIFT, align 8
  %62 = icmp sge i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @IMPLY(i32 %59, i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @BP_SPANB(i64 %68, i64 %71)
  %73 = mul nsw i64 %67, %72
  store i64 %73, i64* %16, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @BP_SPANB(i64 %77, i64 %80)
  %82 = mul nsw i64 %76, %81
  store i64 %82, i64* %17, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DMU_META_DNODE_OBJECT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %44
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @SPA_MINBLOCKSHIFT, align 8
  %92 = load i64, i64* @DNODE_SHIFT, align 8
  %93 = sub nsw i64 %91, %92
  %94 = shl i64 %90, %93
  %95 = mul nsw i64 %89, %94
  store i64 %95, i64* %14, align 8
  store i64 0, i64* %16, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @COMPARE_META_LEVEL, align 8
  %100 = add nsw i64 %98, %99
  store i64 %100, i64* %18, align 8
  br label %108

101:                                              ; preds = %44
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %14, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %18, align 8
  br label %108

108:                                              ; preds = %101, %88
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @DMU_META_DNODE_OBJECT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* @SPA_MINBLOCKSHIFT, align 8
  %118 = load i64, i64* @DNODE_SHIFT, align 8
  %119 = sub nsw i64 %117, %118
  %120 = shl i64 %116, %119
  %121 = mul nsw i64 %115, %120
  store i64 %121, i64* %15, align 8
  store i64 0, i64* %17, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @COMPARE_META_LEVEL, align 8
  %126 = add nsw i64 %124, %125
  store i64 %126, i64* %19, align 8
  br label %134

127:                                              ; preds = %108
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %15, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %19, align 8
  br label %134

134:                                              ; preds = %127, %114
  %135 = load i64, i64* %14, align 8
  %136 = load i64, i64* %15, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load i64, i64* %14, align 8
  %140 = load i64, i64* %15, align 8
  %141 = icmp slt i64 %139, %140
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 -1, i32 1
  store i32 %143, i32* %7, align 4
  br label %167

144:                                              ; preds = %134
  %145 = load i64, i64* %16, align 8
  %146 = load i64, i64* %17, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = load i64, i64* %16, align 8
  %150 = load i64, i64* %17, align 8
  %151 = icmp slt i64 %149, %150
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 -1, i32 1
  store i32 %153, i32* %7, align 4
  br label %167

154:                                              ; preds = %144
  %155 = load i64, i64* %18, align 8
  %156 = load i64, i64* %19, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i64, i64* %18, align 8
  %160 = load i64, i64* %19, align 8
  %161 = icmp sgt i64 %159, %160
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 -1, i32 1
  store i32 %163, i32* %7, align 4
  br label %167

164:                                              ; preds = %154
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %166, %158, %148, %138, %43
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local i32 @IMPLY(i32, i32) #1

declare dso_local i64 @BP_SPANB(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
