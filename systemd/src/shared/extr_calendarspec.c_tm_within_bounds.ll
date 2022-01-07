; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_calendarspec.c_tm_within_bounds.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_calendarspec.c_tm_within_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64, i64, i64, i64 }

@MAX_YEAR = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, i32)* @tm_within_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm_within_bounds(%struct.tm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm, align 8
  %7 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tm*, %struct.tm** %4, align 8
  %9 = call i32 @assert(%struct.tm* %8)
  %10 = load %struct.tm*, %struct.tm** %4, align 8
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1900
  %14 = load i64, i64* @MAX_YEAR, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ERANGE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %81

19:                                               ; preds = %2
  %20 = load %struct.tm*, %struct.tm** %4, align 8
  %21 = bitcast %struct.tm* %6 to i8*
  %22 = bitcast %struct.tm* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 48, i1 false)
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @mktime_or_timegm(%struct.tm* %6, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 (...) @negative_errno()
  store i32 %27, i32* %3, align 4
  br label %81

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tm*, %struct.tm** %4, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.tm*, %struct.tm** %4, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.tm*, %struct.tm** %4, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tm*, %struct.tm** %4, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.tm*, %struct.tm** %4, align 8
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.tm*, %struct.tm** %4, align 8
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br label %70

70:                                               ; preds = %63, %56, %49, %42, %35, %28
  %71 = phi i1 [ false, %56 ], [ false, %49 ], [ false, %42 ], [ false, %35 ], [ false, %28 ], [ %69, %63 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load %struct.tm*, %struct.tm** %4, align 8
  %77 = bitcast %struct.tm* %76 to i8*
  %78 = bitcast %struct.tm* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 48, i1 false)
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %26, %16
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @assert(%struct.tm*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mktime_or_timegm(%struct.tm*, i32) #1

declare dso_local i32 @negative_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
