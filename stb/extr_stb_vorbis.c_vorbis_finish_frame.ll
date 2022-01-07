; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_vorbis_finish_frame.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_vorbis_finish_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, float**, float**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @vorbis_finish_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vorbis_finish_frame(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %104

21:                                               ; preds = %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call float* @get_window(%struct.TYPE_4__* %25, i32 %26)
  store float* %27, float** %16, align 8
  %28 = load float*, float** %16, align 8
  %29 = icmp eq float* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %178

31:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %100, %31
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %103

38:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %96, %38
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %99

43:                                               ; preds = %39
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load float**, float*** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float*, float** %46, i64 %48
  %50 = load float*, float** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %50, i64 %54
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %16, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = load float, float* %60, align 4
  %62 = fmul float %56, %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load float**, float*** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float*, float** %65, i64 %67
  %69 = load float*, float** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  %73 = load float, float* %72, align 4
  %74 = load float*, float** %16, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %74, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fmul float %73, %81
  %83 = fadd float %62, %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load float**, float*** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float*, float** %86, i64 %88
  %90 = load float*, float** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %90, i64 %94
  store float %83, float* %95, align 4
  br label %96

96:                                               ; preds = %43
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %39

99:                                               ; preds = %39
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  br label %32

103:                                              ; preds = %32
  br label %104

104:                                              ; preds = %103, %4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %154, %104
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %157

119:                                              ; preds = %113
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %150, %119
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %153

126:                                              ; preds = %120
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load float**, float*** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float*, float** %129, i64 %131
  %133 = load float*, float** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %133, i64 %137
  %139 = load float, float* %138, align 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load float**, float*** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float*, float** %142, i64 %144
  %146 = load float*, float** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %146, i64 %148
  store float %139, float* %149, align 4
  br label %150

150:                                              ; preds = %126
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  br label %120

153:                                              ; preds = %120
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %113

157:                                              ; preds = %113
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  store i32 0, i32* %5, align 4
  br label %178

161:                                              ; preds = %157
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %165, %161
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %8, align 4
  %170 = sub nsw i32 %168, %169
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %8, align 4
  %177 = sub nsw i32 %175, %176
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %167, %160, %30
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local float* @get_window(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
