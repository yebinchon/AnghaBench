; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_SortByDimension.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_SortByDimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, %struct.TYPE_3__*, i32*)* @SortByDimension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SortByDimension(i32* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_3__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %182

25:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %15, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %16, align 4
  %31 = load i32*, i32** %8, align 8
  store i32* %31, i32** %17, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %18, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %41 = load i32*, i32** %12, align 8
  call void @SortByDimension(i32* %36, i32* %37, i32 %38, i32 %39, %struct.TYPE_3__* %40, i32* %41)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %18, align 8
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %47 = load i32*, i32** %12, align 8
  call void @SortByDimension(i32* %42, i32* %43, i32 %44, i32 %45, %struct.TYPE_3__* %46, i32* %47)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(i32* %48, i32* %49, i32 %53)
  %55 = load i32*, i32** %12, align 8
  store i32* %55, i32** %17, align 8
  br label %56

56:                                               ; preds = %180, %25
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ true, %56 ], [ %63, %60 ]
  br i1 %65, label %66, label %181

66:                                               ; preds = %64
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @DCOORD(i64 %81)
  store i64 %82, i64* %19, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 %93, 2
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %92, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @DCOORD(i64 %98)
  store i64 %99, i64* %20, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = mul nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %109, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @DCOORD(i64 %114)
  store i64 %115, i64* %21, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %117 = load i32*, i32** %18, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = mul nsw i32 %126, 2
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %125, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @DCOORD(i64 %131)
  store i64 %132, i64* %22, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %166

136:                                              ; preds = %66
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %152, label %140

140:                                              ; preds = %136
  %141 = load i64, i64* %19, align 8
  %142 = load i64, i64* %21, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = load i64, i64* %19, align 8
  %146 = load i64, i64* %21, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %166

148:                                              ; preds = %144
  %149 = load i64, i64* %20, align 8
  %150 = load i64, i64* %22, align 8
  %151 = icmp slt i64 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %148, %140, %136
  %153 = load i32*, i32** %17, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %158, i64 %162
  store i32 %157, i32* %163, align 4
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %180

166:                                              ; preds = %148, %144, %66
  %167 = load i32*, i32** %18, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  store i32 %171, i32* %177, align 4
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %166, %152
  br label %56

181:                                              ; preds = %64
  br label %182

182:                                              ; preds = %181, %6
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @DCOORD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
