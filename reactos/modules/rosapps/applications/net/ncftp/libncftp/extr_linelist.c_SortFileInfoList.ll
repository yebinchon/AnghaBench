; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_linelist.c_SortFileInfoList.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_linelist.c_SortFileInfoList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

@NameCmp = common dso_local global i32 0, align 4
@ReverseNameCmp = common dso_local global i32 0, align 4
@TimeCmp = common dso_local global i32 0, align 4
@ReverseTimeCmp = common dso_local global i32 0, align 4
@SizeCmp = common dso_local global i32 0, align 4
@ReverseSizeCmp = common dso_local global i32 0, align 4
@BreadthFirstCmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SortFileInfoList(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %221

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %221

32:                                               ; preds = %25
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %73

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %69, %38
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %45
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %41

72:                                               ; preds = %41
  br label %73

73:                                               ; preds = %72, %32
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %221

77:                                               ; preds = %19
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 110
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 97
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = load i32, i32* @NameCmp, align 4
  %90 = call i32 @qsort(i32* %84, i64 %88, i32 4, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %220

97:                                               ; preds = %80, %77
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 110
  br i1 %99, label %100, label %117

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 100
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load i32*, i32** %7, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* @ReverseNameCmp, align 4
  %110 = call i32 @qsort(i32* %104, i64 %108, i32 4, i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %219

117:                                              ; preds = %100, %97
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %118, 116
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 97
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load i32*, i32** %7, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = load i32, i32* @TimeCmp, align 4
  %130 = call i32 @qsort(i32* %124, i64 %128, i32 4, i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  br label %218

137:                                              ; preds = %120, %117
  %138 = load i32, i32* %5, align 4
  %139 = icmp eq i32 %138, 116
  br i1 %139, label %140, label %157

140:                                              ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 100
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = load i32*, i32** %7, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* @ReverseTimeCmp, align 4
  %150 = call i32 @qsort(i32* %144, i64 %148, i32 4, i32 %149)
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  br label %217

157:                                              ; preds = %140, %137
  %158 = load i32, i32* %5, align 4
  %159 = icmp eq i32 %158, 115
  br i1 %159, label %160, label %177

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = icmp eq i32 %161, 97
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = load i32*, i32** %7, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = load i32, i32* @SizeCmp, align 4
  %170 = call i32 @qsort(i32* %164, i64 %168, i32 4, i32 %169)
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  br label %216

177:                                              ; preds = %160, %157
  %178 = load i32, i32* %5, align 4
  %179 = icmp eq i32 %178, 115
  br i1 %179, label %180, label %197

180:                                              ; preds = %177
  %181 = load i32, i32* %6, align 4
  %182 = icmp eq i32 %181, 100
  br i1 %182, label %183, label %197

183:                                              ; preds = %180
  %184 = load i32*, i32** %7, align 8
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = load i32, i32* @ReverseSizeCmp, align 4
  %190 = call i32 @qsort(i32* %184, i64 %188, i32 4, i32 %189)
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  br label %215

197:                                              ; preds = %180, %177
  %198 = load i32, i32* %5, align 4
  %199 = icmp eq i32 %198, 98
  br i1 %199, label %200, label %214

200:                                              ; preds = %197
  %201 = load i32, i32* %5, align 4
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load i32*, i32** %7, align 8
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = load i32, i32* @BreadthFirstCmp, align 4
  %213 = call i32 @qsort(i32* %207, i64 %211, i32 4, i32 %212)
  br label %214

214:                                              ; preds = %200, %197
  br label %215

215:                                              ; preds = %214, %183
  br label %216

216:                                              ; preds = %215, %163
  br label %217

217:                                              ; preds = %216, %143
  br label %218

218:                                              ; preds = %217, %123
  br label %219

219:                                              ; preds = %218, %103
  br label %220

220:                                              ; preds = %219, %83
  br label %221

221:                                              ; preds = %18, %31, %220, %73
  ret void
}

declare dso_local i32 @qsort(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
