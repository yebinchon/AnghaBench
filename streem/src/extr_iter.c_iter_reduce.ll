; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_iter_reduce.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_iter_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.reduce_data* }
%struct.reduce_data = type { i32, i8*, i32 }

@STRM_OK = common dso_local global i32 0, align 4
@STRM_NG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @iter_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_reduce(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.reduce_data*, align 8
  %7 = alloca [2 x i8*], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.reduce_data*, %struct.reduce_data** %9, align 8
  store %struct.reduce_data* %10, %struct.reduce_data** %6, align 8
  %11 = load %struct.reduce_data*, %struct.reduce_data** %6, align 8
  %12 = getelementptr inbounds %struct.reduce_data, %struct.reduce_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.reduce_data*, %struct.reduce_data** %6, align 8
  %17 = getelementptr inbounds %struct.reduce_data, %struct.reduce_data* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.reduce_data*, %struct.reduce_data** %6, align 8
  %20 = getelementptr inbounds %struct.reduce_data, %struct.reduce_data* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @STRM_OK, align 4
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.reduce_data*, %struct.reduce_data** %6, align 8
  %24 = getelementptr inbounds %struct.reduce_data, %struct.reduce_data* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %25, i8** %26, align 16
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* %27, i8** %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load %struct.reduce_data*, %struct.reduce_data** %6, align 8
  %31 = getelementptr inbounds %struct.reduce_data, %struct.reduce_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %34 = call i64 @strm_funcall(%struct.TYPE_4__* %29, i32 %32, i32 2, i8** %33, i8** %5)
  %35 = load i64, i64* @STRM_NG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load i64, i64* @STRM_NG, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %22
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.reduce_data*, %struct.reduce_data** %6, align 8
  %43 = getelementptr inbounds %struct.reduce_data, %struct.reduce_data* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @STRM_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %37, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @strm_funcall(%struct.TYPE_4__*, i32, i32, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
