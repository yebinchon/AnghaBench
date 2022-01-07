; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_translate_irect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_translate_irect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_translate_irect(%struct.TYPE_6__* noalias sret %0, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %2, i32* %5, align 4
  store i32 %3, i32* %6, align 4
  %8 = call i64 @fz_is_empty_irect(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = bitcast %struct.TYPE_6__* %0 to i8*
  %12 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  br label %46

13:                                               ; preds = %4
  %14 = call i64 @fz_is_infinite_irect(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = bitcast %struct.TYPE_6__* %0 to i8*
  %18 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 32, i1 false)
  br label %46

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @ADD_WITH_SAT(i32 %20, i8* %22, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i8* @ADD_WITH_SAT(i32 %26, i8* %28, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i8* @ADD_WITH_SAT(i32 %32, i8* %34, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i8* @ADD_WITH_SAT(i32 %38, i8* %40, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = bitcast %struct.TYPE_6__* %0 to i8*
  %45 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 32, i1 false)
  br label %46

46:                                               ; preds = %19, %16, %10
  ret void
}

declare dso_local i64 @fz_is_empty_irect(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fz_is_infinite_irect(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i8* @ADD_WITH_SAT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
