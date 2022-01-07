; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_find_matching_rows.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_find_matching_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.tagMSIVIEW*, i64, i64, i64*)* }
%struct.TYPE_4__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"%p, %d, %u, %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i64, i64, i64*, i32*)* @WHERE_find_matching_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WHERE_find_matching_rows(%struct.tagMSIVIEW* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.tagMSIVIEW*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %16 = bitcast %struct.tagMSIVIEW* %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %12, align 8
  %17 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.tagMSIVIEW* %17, i64 %18, i64 %19, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %28, i64* %6, align 8
  br label %81

29:                                               ; preds = %5
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %29
  %39 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %39, i64* %6, align 8
  br label %81

40:                                               ; preds = %32
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @PtrToUlong(i32 %42)
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %76, %40
  %45 = load i64, i64* %13, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %44
  %51 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %52 = getelementptr inbounds %struct.tagMSIVIEW, %struct.tagMSIVIEW* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64 (%struct.tagMSIVIEW*, i64, i64, i64*)*, i64 (%struct.tagMSIVIEW*, i64, i64, i64*)** %54, align 8
  %56 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %7, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i64 %55(%struct.tagMSIVIEW* %56, i64 %57, i64 %58, i64* %14)
  %60 = load i64, i64* @ERROR_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %76

63:                                               ; preds = %50
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i64, i64* %13, align 8
  %69 = load i64*, i64** %10, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %13, align 8
  %71 = add nsw i64 %70, 1
  %72 = call i32 @UlongToPtr(i64 %71)
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %74, i64* %6, align 8
  br label %81

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %62
  %77 = load i64, i64* %13, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %13, align 8
  br label %44

79:                                               ; preds = %44
  %80 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %79, %67, %38, %27
  %82 = load i64, i64* %6, align 8
  ret i64 %82
}

declare dso_local i32 @TRACE(i8*, %struct.tagMSIVIEW*, i64, i64, i32) #1

declare dso_local i64 @PtrToUlong(i32) #1

declare dso_local i32 @UlongToPtr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
