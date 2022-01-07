; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib24bpp.c_DIB_24BPP_TransparentBlt.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib24bpp.c_DIB_24BPP_TransparentBlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIB_24BPP_TransparentBlt(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %18, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  store i64 %31, i64* %21, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %22, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  store i64 %45, i64* %23, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  store i64 %52, i64* %24, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = mul nsw i64 %58, 3
  %60 = add nsw i64 %55, %59
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %63, %67
  %69 = add nsw i64 %60, %68
  %70 = inttoptr i64 %69 to i64*
  store i64* %70, i64** %20, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = mul nsw i64 %81, 3
  %83 = sub nsw i64 %74, %82
  store i64 %83, i64* %17, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %14, align 8
  br label %87

87:                                               ; preds = %183, %6
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %186

93:                                               ; preds = %87
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = load i64, i64* %23, align 8
  %103 = mul nsw i64 %101, %102
  %104 = load i64, i64* %21, align 8
  %105 = sdiv i64 %103, %104
  %106 = add nsw i64 %96, %105
  store i64 %106, i64* %16, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %13, align 8
  br label %110

110:                                              ; preds = %172, %93
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %111, %114
  br i1 %115, label %116, label %177

116:                                              ; preds = %110
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = load i64, i64* %24, align 8
  %126 = mul nsw i64 %124, %125
  %127 = load i64, i64* %22, align 8
  %128 = sdiv i64 %126, %127
  %129 = add nsw i64 %119, %128
  store i64 %129, i64* %15, align 8
  %130 = load i64, i64* %15, align 8
  %131 = icmp sge i64 %130, 0
  br i1 %131, label %132, label %171

132:                                              ; preds = %116
  %133 = load i64, i64* %16, align 8
  %134 = icmp sge i64 %133, 0
  br i1 %134, label %135, label %171

135:                                              ; preds = %132
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %15, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %171

142:                                              ; preds = %135
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %16, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %171

149:                                              ; preds = %142
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = load i64, i64* %15, align 8
  %152 = load i64, i64* %16, align 8
  %153 = call i64 @DIB_GetSourceIndex(%struct.TYPE_10__* %150, i64 %151, i64 %152)
  store i64 %153, i64* %18, align 8
  %154 = load i64, i64* %18, align 8
  %155 = load i64, i64* %12, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %149
  %158 = load i32*, i32** %11, align 8
  %159 = load i64, i64* %18, align 8
  %160 = call i32 @XLATEOBJ_iXlate(i32* %158, i64 %159)
  %161 = and i32 %160, 16777215
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %19, align 8
  %163 = load i64, i64* %19, align 8
  %164 = and i64 %163, 65535
  %165 = load i64*, i64** %20, align 8
  store i64 %164, i64* %165, align 8
  %166 = load i64, i64* %19, align 8
  %167 = ashr i64 %166, 16
  %168 = load i64*, i64** %20, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 2
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %157, %149
  br label %171

171:                                              ; preds = %170, %142, %135, %132, %116
  br label %172

172:                                              ; preds = %171
  %173 = load i64, i64* %13, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %13, align 8
  %175 = load i64*, i64** %20, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 3
  store i64* %176, i64** %20, align 8
  br label %110

177:                                              ; preds = %110
  %178 = load i64*, i64** %20, align 8
  %179 = ptrtoint i64* %178 to i64
  %180 = load i64, i64* %17, align 8
  %181 = add nsw i64 %179, %180
  %182 = inttoptr i64 %181 to i64*
  store i64* %182, i64** %20, align 8
  br label %183

183:                                              ; preds = %177
  %184 = load i64, i64* %14, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %14, align 8
  br label %87

186:                                              ; preds = %87
  %187 = load i32, i32* @TRUE, align 4
  ret i32 %187
}

declare dso_local i64 @DIB_GetSourceIndex(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @XLATEOBJ_iXlate(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
