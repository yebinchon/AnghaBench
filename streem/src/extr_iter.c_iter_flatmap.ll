; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_iter_flatmap.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_iter_flatmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.map_data* }
%struct.map_data = type { i32 }

@STRM_NG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"no array given for flatmap\00", align 1
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @iter_flatmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_flatmap(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.map_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.map_data*, %struct.map_data** %12, align 8
  store %struct.map_data* %13, %struct.map_data** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.map_data*, %struct.map_data** %6, align 8
  %16 = getelementptr inbounds %struct.map_data, %struct.map_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strm_funcall(%struct.TYPE_6__* %14, i32 %17, i32 1, i32* %5, i32* %7)
  %19 = load i64, i64* @STRM_NG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i64, i64* @STRM_NG, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %54

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @strm_array_p(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = call i32 @strm_raise(%struct.TYPE_6__* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @STRM_NG, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %54

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @strm_ary_len(i32 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32* @strm_ary_ptr(i32 %36)
  store i32* %37, i32** %10, align 8
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %49, %33
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strm_emit(%struct.TYPE_6__* %43, i32 %47, i32* null)
  br label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %38

52:                                               ; preds = %38
  %53 = load i32, i32* @STRM_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %28, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @strm_funcall(%struct.TYPE_6__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @strm_array_p(i32) #1

declare dso_local i32 @strm_raise(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @strm_ary_len(i32) #1

declare dso_local i32* @strm_ary_ptr(i32) #1

declare dso_local i32 @strm_emit(%struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
