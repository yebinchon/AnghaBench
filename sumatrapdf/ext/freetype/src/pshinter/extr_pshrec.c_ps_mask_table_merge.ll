; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshrec.c_ps_mask_table_merge.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshrec.c_ps_mask_table_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i32*, i64 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ps_mask_table_merge: ignoring invalid indices (%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i64, i32)* @ps_mask_table_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_mask_table_merge(%struct.TYPE_9__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %10, align 8
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %149

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %149

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %41, %42
  %44 = inttoptr i64 %43 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %11, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %47, %48
  %50 = inttoptr i64 %49 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %12, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %13, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %116

59:                                               ; preds = %38
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %13, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ps_mask_ensure(%struct.TYPE_10__* %64, i64 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %155

71:                                               ; preds = %63
  %72 = load i64, i64* %13, align 8
  store i64 %72, i64* %16, align 8
  br label %73

73:                                               ; preds = %81, %71
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* %14, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @ps_mask_clear_bit(%struct.TYPE_10__* %78, i64 %79)
  br label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %16, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %16, align 8
  br label %73

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %59
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %17, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %18, align 8
  %92 = load i64, i64* %14, align 8
  %93 = add nsw i64 %92, 7
  %94 = ashr i64 %93, 3
  store i64 %94, i64* %16, align 8
  br label %95

95:                                               ; preds = %112, %85
  %96 = load i64, i64* %16, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  %99 = load i32*, i32** %18, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %17, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %101, %104
  %106 = load i32*, i32** %18, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %18, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %18, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %17, align 8
  br label %112

112:                                              ; preds = %98
  %113 = load i64, i64* %16, align 8
  %114 = add nsw i64 %113, -1
  store i64 %114, i64* %16, align 8
  br label %95

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %115, %38
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %123, 1
  %125 = load i64, i64* %7, align 8
  %126 = sub nsw i64 %124, %125
  store i64 %126, i64* %15, align 8
  %127 = load i64, i64* %15, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %116
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %131 = bitcast %struct.TYPE_10__* %19 to i8*
  %132 = bitcast %struct.TYPE_10__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 24, i1 false)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 1
  %136 = load i64, i64* %15, align 8
  %137 = mul i64 %136, 24
  %138 = call i32 @ft_memmove(%struct.TYPE_10__* %133, %struct.TYPE_10__* %135, i64 %137)
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %140 = load i64, i64* %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 %140
  %142 = bitcast %struct.TYPE_10__* %141 to i8*
  %143 = bitcast %struct.TYPE_10__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 24, i1 false)
  br label %144

144:                                              ; preds = %129, %116
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, -1
  store i64 %148, i64* %146, align 8
  br label %154

149:                                              ; preds = %32, %28
  %150 = load i64, i64* %6, align 8
  %151 = load i64, i64* %7, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = call i32 @FT_TRACE0(i8* %152)
  br label %154

154:                                              ; preds = %149, %144
  br label %155

155:                                              ; preds = %154, %70
  %156 = load i32, i32* %9, align 4
  ret i32 %156
}

declare dso_local i32 @ps_mask_ensure(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @ps_mask_clear_bit(%struct.TYPE_10__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ft_memmove(%struct.TYPE_10__*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @FT_TRACE0(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
