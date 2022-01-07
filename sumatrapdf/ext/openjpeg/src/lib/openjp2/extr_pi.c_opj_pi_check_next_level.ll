; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_pi.c_opj_pi_check_next_level.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_pi.c_opj_pi_check_next_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OPJ_TRUE = common dso_local global i8* null, align 8
@OPJ_FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, %struct.TYPE_7__*, i64, i64, i32*)* @opj_pi_check_next_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @opj_pi_check_next_level(i64 %0, %struct.TYPE_7__* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %18
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %13, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %23
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %14, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %171

27:                                               ; preds = %5
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %167, %27
  %30 = load i64, i64* %7, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %170

32:                                               ; preds = %29
  %33 = load i32*, i32** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %166 [
    i32 82, label %37
    i32 67, label %60
    i32 76, label %83
    i32 80, label %106
  ]

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load i64, i64* %7, align 8
  %47 = sub nsw i64 %46, 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i8* @opj_pi_check_next_level(i64 %47, %struct.TYPE_7__* %48, i64 %49, i64 %50, i32* %51)
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %55, i8** %6, align 8
  br label %173

56:                                               ; preds = %45
  %57 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %57, i8** %6, align 8
  br label %173

58:                                               ; preds = %37
  %59 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %59, i8** %6, align 8
  br label %173

60:                                               ; preds = %32
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load i64, i64* %7, align 8
  %70 = sub nsw i64 %69, 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i8* @opj_pi_check_next_level(i64 %70, %struct.TYPE_7__* %71, i64 %72, i64 %73, i32* %74)
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %78, i8** %6, align 8
  br label %173

79:                                               ; preds = %68
  %80 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %80, i8** %6, align 8
  br label %173

81:                                               ; preds = %60
  %82 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %82, i8** %6, align 8
  br label %173

83:                                               ; preds = %32
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %83
  %92 = load i64, i64* %7, align 8
  %93 = sub nsw i64 %92, 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i8* @opj_pi_check_next_level(i64 %93, %struct.TYPE_7__* %94, i64 %95, i64 %96, i32* %97)
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %101, i8** %6, align 8
  br label %173

102:                                              ; preds = %91
  %103 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %103, i8** %6, align 8
  br label %173

104:                                              ; preds = %83
  %105 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %105, i8** %6, align 8
  br label %173

106:                                              ; preds = %32
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  switch i32 %109, label %133 [
    i32 129, label %110
    i32 128, label %110
  ]

110:                                              ; preds = %106, %106
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %113, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %110
  %119 = load i64, i64* %12, align 8
  %120 = sub nsw i64 %119, 1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = call i8* @opj_pi_check_next_level(i64 %120, %struct.TYPE_7__* %121, i64 %122, i64 %123, i32* %124)
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %128, i8** %6, align 8
  br label %173

129:                                              ; preds = %118
  %130 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %130, i8** %6, align 8
  br label %173

131:                                              ; preds = %110
  %132 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %132, i8** %6, align 8
  br label %173

133:                                              ; preds = %106
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %136, %139
  br i1 %140, label %141, label %164

141:                                              ; preds = %133
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %141
  %150 = load i64, i64* %12, align 8
  %151 = sub nsw i64 %150, 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* %10, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = call i8* @opj_pi_check_next_level(i64 %151, %struct.TYPE_7__* %152, i64 %153, i64 %154, i32* %155)
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %149
  %159 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %159, i8** %6, align 8
  br label %173

160:                                              ; preds = %149
  %161 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %161, i8** %6, align 8
  br label %173

162:                                              ; preds = %141
  %163 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %163, i8** %6, align 8
  br label %173

164:                                              ; preds = %133
  %165 = load i8*, i8** @OPJ_TRUE, align 8
  store i8* %165, i8** %6, align 8
  br label %173

166:                                              ; preds = %32
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %12, align 8
  %169 = add nsw i64 %168, -1
  store i64 %169, i64* %12, align 8
  br label %29

170:                                              ; preds = %29
  br label %171

171:                                              ; preds = %170, %5
  %172 = load i8*, i8** @OPJ_FALSE, align 8
  store i8* %172, i8** %6, align 8
  br label %173

173:                                              ; preds = %171, %164, %162, %160, %158, %131, %129, %127, %104, %102, %100, %81, %79, %77, %58, %56, %54
  %174 = load i8*, i8** %6, align 8
  ret i8* %174
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
