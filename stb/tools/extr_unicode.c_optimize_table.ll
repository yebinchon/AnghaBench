; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_unicode.c_optimize_table.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_unicode.c_optimize_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i64 }

@__const.optimize_table.modelist = private unnamed_addr constant [3 x i32] [i32 85, i32 -1, i32 0], align 4
@.str = private unnamed_addr constant [14 x i8] c"// modes: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"_1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optimize_table(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca [256 x i8], align 16
  %18 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %19 = bitcast [3 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([3 x i32]* @__const.optimize_table.modelist to i8*), i64 12, i1 false)
  store i32 0, i32* %7, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  store i32 65535, i32* %13, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = call i32 @strip_table(%struct.TYPE_10__* %23, i32 2)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %2
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %59, %33
  %38 = load i32, i32* %14, align 4
  %39 = icmp sgt i32 %38, 65536
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = call i32 @strip_table(%struct.TYPE_10__* %41, i32 0)
  store i32 %42, i32* %14, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %48, 65536
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %62

51:                                               ; preds = %40
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %14, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %62

59:                                               ; preds = %51
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %13, align 4
  br label %37

62:                                               ; preds = %58, %50, %37
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %68 = call i32 @pack_table_by_modes(%struct.TYPE_10__* %66, i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @pack_table(%struct.TYPE_10__* %69, i32 0, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = bitcast %struct.TYPE_11__* %9 to i8*
  %74 = bitcast %struct.TYPE_11__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 8, i1 false)
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %80, %63
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i64, i64* %10, align 8
  %82 = and i64 %81, 127
  %83 = sub i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %87
  store i32 %84, i32* %88, align 4
  %89 = load i64, i64* %10, align 8
  %90 = lshr i64 %89, 7
  store i64 %90, i64* %10, align 8
  br label %77

91:                                               ; preds = %77
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %96 = bitcast %struct.TYPE_10__* %11 to i8*
  %97 = bitcast %struct.TYPE_10__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 24, i1 false)
  br label %98

98:                                               ; preds = %101, %91
  %99 = load i32, i32* %7, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @sprintf(i8* %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %103, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  call void @pack_for_mode(%struct.TYPE_10__* sret %18, %struct.TYPE_10__* %11, i32 %112, i8* %113)
  %114 = bitcast %struct.TYPE_10__* %11 to i8*
  %115 = bitcast %struct.TYPE_10__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 24, i1 false)
  br label %98

116:                                              ; preds = %98
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @output_table_with_trims(i8* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %125)
  br label %134

127:                                              ; preds = %116
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @output_table(i8* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %132, i32 0, i32* null)
  br label %134

134:                                              ; preds = %127, %120
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strip_table(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @pack_table_by_modes(%struct.TYPE_10__*, i32*) #2

declare dso_local i64 @pack_table(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @printf(i8*, i64) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local void @pack_for_mode(%struct.TYPE_10__* sret, %struct.TYPE_10__*, i32, i8*) #2

declare dso_local i32 @output_table_with_trims(i8*, i8*, i32, i32) #2

declare dso_local i32 @output_table(i8*, i8*, i32, i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
