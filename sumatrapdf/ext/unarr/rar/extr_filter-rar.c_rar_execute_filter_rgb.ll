; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_rar_execute_filter_rgb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_rar_execute_filter_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RARFilter = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i64* }

@RARProgramWorkSize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RARFilter*, %struct.TYPE_3__*)* @rar_execute_filter_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar_execute_filter_rgb(%struct.RARFilter* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.RARFilter*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.RARFilter* %0, %struct.RARFilter** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %18 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %19 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %24 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %29 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @RARProgramWorkSize, align 4
  %35 = sdiv i32 %34, 2
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %2
  store i32 0, i32* %3, align 4
  br label %188

42:                                               ; preds = %37
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64* %46, i64** %9, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64* %52, i64** %10, align 8
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %142, %42
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %145

56:                                               ; preds = %53
  store i64 0, i64* %13, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  store i64* %64, i64** %14, align 8
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %138, %56
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %141

70:                                               ; preds = %66
  %71 = load i64*, i64** %14, align 8
  %72 = load i64*, i64** %10, align 8
  %73 = icmp uge i64* %71, %72
  br i1 %73, label %74, label %125

74:                                               ; preds = %70
  %75 = load i64*, i64** %14, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %14, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = call i32 @abs(i64 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i64, i64* %13, align 8
  %84 = load i64*, i64** %14, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  %88 = call i32 @abs(i64 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i64*, i64** %14, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %14, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = load i64, i64* %13, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i64*, i64** %14, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = call i32 @abs(i64 %101)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %74
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106, %74
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i64*, i64** %14, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 3
  %117 = load i64, i64* %116, align 8
  br label %122

118:                                              ; preds = %110
  %119 = load i64*, i64** %14, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  %121 = load i64, i64* %120, align 8
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi i64 [ %117, %114 ], [ %121, %118 ]
  store i64 %123, i64* %13, align 8
  br label %124

124:                                              ; preds = %122, %106
  br label %125

125:                                              ; preds = %124, %70
  %126 = load i64*, i64** %9, align 8
  %127 = getelementptr inbounds i64, i64* %126, i32 1
  store i64* %127, i64** %9, align 8
  %128 = load i64, i64* %126, align 8
  %129 = load i64, i64* %13, align 8
  %130 = sub nsw i64 %129, %128
  store i64 %130, i64* %13, align 8
  %131 = load i64, i64* %13, align 8
  %132 = load i64*, i64** %10, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 %131, i64* %135, align 8
  %136 = load i64*, i64** %14, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 3
  store i64* %137, i64** %14, align 8
  br label %138

138:                                              ; preds = %125
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 3
  store i32 %140, i32* %12, align 4
  br label %66

141:                                              ; preds = %66
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %53

145:                                              ; preds = %53
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %178, %145
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %8, align 4
  %150 = sub nsw i32 %149, 2
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %181

152:                                              ; preds = %147
  %153 = load i64*, i64** %10, align 8
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %153, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %10, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, %158
  store i64 %164, i64* %162, align 8
  %165 = load i64*, i64** %10, align 8
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %165, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64*, i64** %10, align 8
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %171, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, %170
  store i64 %177, i64* %175, align 8
  br label %178

178:                                              ; preds = %152
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 3
  store i32 %180, i32* %11, align 4
  br label %147

181:                                              ; preds = %147
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %184 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.RARFilter*, %struct.RARFilter** %4, align 8
  %187 = getelementptr inbounds %struct.RARFilter, %struct.RARFilter* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  store i32 1, i32* %3, align 4
  br label %188

188:                                              ; preds = %181, %41
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
