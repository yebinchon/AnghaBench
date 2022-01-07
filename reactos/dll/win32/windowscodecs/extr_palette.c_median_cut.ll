; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_palette.c_median_cut.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_palette.c_median_cut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.box = type { i64, i64, i64, i64, i64, i64 }
%struct.histogram = type { i32*** }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@R_SHIFT = common dso_local global i8 0, align 1
@G_SHIFT = common dso_local global i8 0, align 1
@B_SHIFT = common dso_local global i8 0, align 1
@R_COUNT = common dso_local global i64 0, align 8
@G_COUNT = common dso_local global i64 0, align 8
@B_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, i32*)* @median_cut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @median_cut(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [256 x %struct.box], align 16
  %15 = alloca %struct.histogram*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.box*, align 8
  %20 = alloca %struct.box*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %23 = call i32 (...) @GetProcessHeap()
  %24 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %25 = call %struct.histogram* @HeapAlloc(i32 %23, i32 %24, i32 8)
  store %struct.histogram* %25, %struct.histogram** %15, align 8
  %26 = icmp ne %struct.histogram* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %173

28:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  br label %29

29:                                               ; preds = %85, %28
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %88

33:                                               ; preds = %29
  store i32 0, i32* %16, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %11, align 4
  %37 = mul i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  store i8* %39, i8** %18, align 8
  br label %40

40:                                               ; preds = %79, %33
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %40
  %45 = load %struct.histogram*, %struct.histogram** %15, align 8
  %46 = getelementptr inbounds %struct.histogram, %struct.histogram* %45, i32 0, i32 0
  %47 = load i32***, i32**** %46, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @R_SHIFT, align 1
  %53 = zext i8 %52 to i32
  %54 = ashr i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32**, i32*** %47, i64 %55
  %57 = load i32**, i32*** %56, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @G_SHIFT, align 1
  %63 = zext i8 %62 to i32
  %64 = ashr i32 %61, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %57, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @B_SHIFT, align 1
  %73 = zext i8 %72 to i32
  %74 = ashr i32 %71, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %67, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %44
  %80 = load i32, i32* %16, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %16, align 4
  %82 = load i8*, i8** %18, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  store i8* %83, i8** %18, align 8
  br label %40

84:                                               ; preds = %40
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %17, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %17, align 4
  br label %29

88:                                               ; preds = %29
  store i32 1, i32* %21, align 4
  %89 = getelementptr inbounds [256 x %struct.box], [256 x %struct.box]* %14, i64 0, i64 0
  %90 = getelementptr inbounds %struct.box, %struct.box* %89, i32 0, i32 5
  store i64 0, i64* %90, align 8
  %91 = load i64, i64* @R_COUNT, align 8
  %92 = sub nsw i64 %91, 1
  %93 = getelementptr inbounds [256 x %struct.box], [256 x %struct.box]* %14, i64 0, i64 0
  %94 = getelementptr inbounds %struct.box, %struct.box* %93, i32 0, i32 4
  store i64 %92, i64* %94, align 16
  %95 = getelementptr inbounds [256 x %struct.box], [256 x %struct.box]* %14, i64 0, i64 0
  %96 = getelementptr inbounds %struct.box, %struct.box* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load i64, i64* @G_COUNT, align 8
  %98 = sub nsw i64 %97, 1
  %99 = getelementptr inbounds [256 x %struct.box], [256 x %struct.box]* %14, i64 0, i64 0
  %100 = getelementptr inbounds %struct.box, %struct.box* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 16
  %101 = getelementptr inbounds [256 x %struct.box], [256 x %struct.box]* %14, i64 0, i64 0
  %102 = getelementptr inbounds %struct.box, %struct.box* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load i64, i64* @B_COUNT, align 8
  %104 = sub nsw i64 %103, 1
  %105 = getelementptr inbounds [256 x %struct.box], [256 x %struct.box]* %14, i64 0, i64 0
  %106 = getelementptr inbounds %struct.box, %struct.box* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 16
  %107 = load %struct.histogram*, %struct.histogram** %15, align 8
  %108 = getelementptr inbounds [256 x %struct.box], [256 x %struct.box]* %14, i64 0, i64 0
  %109 = call i32 @shrink_box(%struct.histogram* %107, %struct.box* %108)
  br label %110

110:                                              ; preds = %121, %88
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sdiv i32 %112, 2
  %114 = icmp sle i32 %111, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %110
  %116 = getelementptr inbounds [256 x %struct.box], [256 x %struct.box]* %14, i64 0, i64 0
  %117 = load i32, i32* %21, align 4
  %118 = call %struct.box* @find_box_max_count(%struct.box* %116, i32 %117)
  store %struct.box* %118, %struct.box** %19, align 8
  %119 = icmp ne %struct.box* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  br label %130

121:                                              ; preds = %115
  %122 = load i32, i32* %21, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %21, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds [256 x %struct.box], [256 x %struct.box]* %14, i64 0, i64 %124
  store %struct.box* %125, %struct.box** %20, align 8
  %126 = load %struct.histogram*, %struct.histogram** %15, align 8
  %127 = load %struct.box*, %struct.box** %19, align 8
  %128 = load %struct.box*, %struct.box** %20, align 8
  %129 = call i32 @split_box(%struct.histogram* %126, %struct.box* %127, %struct.box* %128)
  br label %110

130:                                              ; preds = %120, %110
  br label %131

131:                                              ; preds = %141, %130
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = getelementptr inbounds [256 x %struct.box], [256 x %struct.box]* %14, i64 0, i64 0
  %137 = load i32, i32* %21, align 4
  %138 = call %struct.box* @find_box_max_score(%struct.box* %136, i32 %137)
  store %struct.box* %138, %struct.box** %19, align 8
  %139 = icmp ne %struct.box* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  br label %150

141:                                              ; preds = %135
  %142 = load i32, i32* %21, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %21, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds [256 x %struct.box], [256 x %struct.box]* %14, i64 0, i64 %144
  store %struct.box* %145, %struct.box** %20, align 8
  %146 = load %struct.histogram*, %struct.histogram** %15, align 8
  %147 = load %struct.box*, %struct.box** %19, align 8
  %148 = load %struct.box*, %struct.box** %20, align 8
  %149 = call i32 @split_box(%struct.histogram* %146, %struct.box* %147, %struct.box* %148)
  br label %131

150:                                              ; preds = %140, %131
  store i32 0, i32* %22, align 4
  br label %151

151:                                              ; preds = %165, %150
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %21, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %151
  %156 = load %struct.histogram*, %struct.histogram** %15, align 8
  %157 = load i32, i32* %22, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [256 x %struct.box], [256 x %struct.box]* %14, i64 0, i64 %158
  %160 = call i32 @box_color(%struct.histogram* %156, %struct.box* %159)
  %161 = load i32*, i32** %13, align 8
  %162 = load i32, i32* %22, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %160, i32* %164, align 4
  br label %165

165:                                              ; preds = %155
  %166 = load i32, i32* %22, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %22, align 4
  br label %151

168:                                              ; preds = %151
  %169 = call i32 (...) @GetProcessHeap()
  %170 = load %struct.histogram*, %struct.histogram** %15, align 8
  %171 = call i32 @HeapFree(i32 %169, i32 0, %struct.histogram* %170)
  %172 = load i32, i32* %21, align 4
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %168, %27
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

declare dso_local %struct.histogram* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @shrink_box(%struct.histogram*, %struct.box*) #1

declare dso_local %struct.box* @find_box_max_count(%struct.box*, i32) #1

declare dso_local i32 @split_box(%struct.histogram*, %struct.box*, %struct.box*) #1

declare dso_local %struct.box* @find_box_max_score(%struct.box*, i32) #1

declare dso_local i32 @box_color(%struct.histogram*, %struct.box*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.histogram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
