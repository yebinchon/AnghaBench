; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_iter_consec.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_iter_consec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.slice_data* }
%struct.slice_data = type { i64, i64, i8** }

@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @iter_consec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_consec(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.slice_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.slice_data*, %struct.slice_data** %13, align 8
  store %struct.slice_data* %14, %struct.slice_data** %6, align 8
  %15 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %16 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %19 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %26 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %25, i32 0, i32 2
  %27 = load i8**, i8*** %26, align 8
  %28 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %29 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds i8*, i8** %27, i64 %30
  store i8* %24, i8** %32, align 8
  %33 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %34 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %23
  %39 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %40 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %39, i32 0, i32 2
  %41 = load i8**, i8*** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @strm_ary_new(i8** %41, i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @strm_ary_value(i32 %45)
  %47 = call i32 @strm_emit(%struct.TYPE_4__* %44, i32 %46, i32* null)
  br label %48

48:                                               ; preds = %38, %23
  %49 = load i32, i32* @STRM_OK, align 4
  store i32 %49, i32* %3, align 4
  br label %91

50:                                               ; preds = %2
  %51 = load i64, i64* %7, align 8
  %52 = sub nsw i64 %51, 1
  store i64 %52, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %53

53:                                               ; preds = %70, %50
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %59 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %58, i32 0, i32 2
  %60 = load i8**, i8*** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %61, 1
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %66 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %65, i32 0, i32 2
  %67 = load i8**, i8*** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  store i8* %64, i8** %69, align 8
  br label %70

70:                                               ; preds = %57
  %71 = load i64, i64* %10, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %10, align 8
  br label %53

73:                                               ; preds = %53
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %76 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %75, i32 0, i32 2
  %77 = load i8**, i8*** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  store i8* %74, i8** %79, align 8
  %80 = load %struct.slice_data*, %struct.slice_data** %6, align 8
  %81 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %80, i32 0, i32 2
  %82 = load i8**, i8*** %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @strm_ary_new(i8** %82, i64 %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @strm_ary_value(i32 %86)
  %88 = call i32 @strm_emit(%struct.TYPE_4__* %85, i32 %87, i32* null)
  br label %89

89:                                               ; preds = %73
  %90 = load i32, i32* @STRM_OK, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %48
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @strm_ary_new(i8**, i64) #1

declare dso_local i32 @strm_emit(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @strm_ary_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
