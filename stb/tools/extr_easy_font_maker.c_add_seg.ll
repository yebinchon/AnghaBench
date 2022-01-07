; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_easy_font_maker.c_add_seg.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_easy_font_maker.c_add_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@last_x = common dso_local global i32* null, align 8
@X_LIMIT = common dso_local global i32 0, align 4
@LEN_LIMIT = common dso_local global i32 0, align 4
@non_empty = common dso_local global i32 0, align 4
@num_seg = common dso_local global i32* null, align 8
@segments = common dso_local global i32 0, align 4
@vsegments = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_seg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %12

12:                                               ; preds = %22, %4
  %13 = load i32, i32* %5, align 4
  %14 = load i32*, i32** @last_x, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %13, %18
  %20 = load i32, i32* @X_LIMIT, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load i32*, i32** @last_x, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @X_LIMIT, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* %8, align 4
  call void @add_seg(i32 %29, i32 0, i32 0, i32 %30)
  br label %12

31:                                               ; preds = %12
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @LEN_LIMIT, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @LEN_LIMIT, align 4
  %40 = load i32, i32* %8, align 4
  call void @add_seg(i32 %37, i32 %38, i32 %39, i32 %40)
  %41 = load i32, i32* @LEN_LIMIT, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @LEN_LIMIT, align 4
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @LEN_LIMIT, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = mul nsw i32 %49, %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %32

57:                                               ; preds = %32
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** @last_x, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %58, %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %7, align 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* @non_empty, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* @non_empty, align 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32*, i32** @num_seg, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %57
  %96 = load i32, i32* @segments, align 4
  %97 = bitcast { i64, i32 }* %10 to i8*
  %98 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 %98, i64 12, i1 false)
  %99 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %100 = load i64, i64* %99, align 4
  %101 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @stb_arr_push(i32 %96, i64 %100, i32 %102)
  br label %113

104:                                              ; preds = %57
  %105 = load i32, i32* @vsegments, align 4
  %106 = bitcast { i64, i32 }* %11 to i8*
  %107 = bitcast %struct.TYPE_3__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 12, i1 false)
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %109 = load i64, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @stb_arr_push(i32 %105, i64 %109, i32 %111)
  br label %113

113:                                              ; preds = %104, %95
  %114 = load i32, i32* %5, align 4
  %115 = load i32*, i32** @last_x, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stb_arr_push(i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
