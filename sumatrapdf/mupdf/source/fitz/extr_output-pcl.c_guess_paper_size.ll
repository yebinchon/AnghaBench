; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_guess_paper_size.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_guess_paper_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@papersizes = common dso_local global %struct.TYPE_6__* null, align 8
@eCustomPaperSize = common dso_local global i8* null, align 8
@PCL_HAS_RICOH_PAPER_SIZES = common dso_local global i32 0, align 4
@PCL_HAS_ORIENTATION = common dso_local global i32 0, align 4
@PCL_CAN_SET_CUSTOM_PAPER_SIZE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32, i32)* @guess_paper_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guess_paper_size(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %241

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 300
  %24 = load i32, i32* %9, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %26, 300
  %28 = load i32, i32* %9, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %98, %21
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %33 = call i32 @num_elems(%struct.TYPE_6__* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %101

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** @eCustomPaperSize, align 8
  %43 = icmp ugt i8* %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PCL_HAS_RICOH_PAPER_SIZES, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %98

52:                                               ; preds = %44, %35
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %53, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %62, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %101

71:                                               ; preds = %61, %52
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PCL_HAS_ORIENTATION, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %79, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %78
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %88, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 1, i32* %12, align 4
  br label %101

97:                                               ; preds = %87, %78, %71
  br label %98

98:                                               ; preds = %97, %51
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %30

101:                                              ; preds = %96, %70, %30
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %104 = call i32 @num_elems(%struct.TYPE_6__* %103)
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %217

106:                                              ; preds = %101
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @PCL_CAN_SET_CUSTOM_PAPER_SIZE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i8*, i8** @eCustomPaperSize, align 8
  %115 = ptrtoint i8* %114 to i32
  store i32 %115, i32* %11, align 4
  br label %216

116:                                              ; preds = %106
  %117 = load i32, i32* @INT_MAX, align 4
  store i32 %117, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %212, %116
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %121 = call i32 @num_elems(%struct.TYPE_6__* %120)
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %215

123:                                              ; preds = %118
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** @eCustomPaperSize, align 8
  %131 = icmp ugt i8* %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %123
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @PCL_HAS_RICOH_PAPER_SIZES, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %212

140:                                              ; preds = %132, %123
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %146, %152
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = mul nsw i32 %154, %155
  %157 = sub nsw i32 %153, %156
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %140
  br label %212

162:                                              ; preds = %140
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = icmp sle i32 %163, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %162
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = icmp sle i32 %172, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %171
  %181 = load i32, i32* %15, align 4
  store i32 %181, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  store i32 %182, i32* %11, align 4
  br label %183

183:                                              ; preds = %180, %171, %162
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @PCL_HAS_ORIENTATION, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %183
  %191 = load i32, i32* %7, align 4
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = icmp sle i32 %191, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %190
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp sle i32 %200, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %199
  %209 = load i32, i32* %15, align 4
  store i32 %209, i32* %14, align 4
  store i32 1, i32* %12, align 4
  %210 = load i32, i32* %13, align 4
  store i32 %210, i32* %11, align 4
  br label %211

211:                                              ; preds = %208, %199, %190, %183
  br label %212

212:                                              ; preds = %211, %161, %139
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %118

215:                                              ; preds = %118
  br label %216

216:                                              ; preds = %215, %113
  br label %217

217:                                              ; preds = %216, %101
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %220 = call i32 @num_elems(%struct.TYPE_6__* %219)
  %221 = icmp slt i32 %218, %220
  br i1 %221, label %222, label %232

222:                                              ; preds = %217
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** @papersizes, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = ptrtoint i8* %228 to i64
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  br label %237

232:                                              ; preds = %217
  %233 = load i8*, i8** @eCustomPaperSize, align 8
  %234 = ptrtoint i8* %233 to i64
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  store i64 %234, i64* %236, align 8
  br label %237

237:                                              ; preds = %232, %222
  %238 = load i32, i32* %12, align 4
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %237, %20
  ret void
}

declare dso_local i32 @num_elems(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
