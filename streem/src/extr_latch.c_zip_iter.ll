; ModuleID = '/home/carl/AnghaBench/streem/src/extr_latch.c_zip_iter.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_latch.c_zip_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.zip_data* }
%struct.zip_data = type { i64, i64, i32, %struct.TYPE_9__** }

@zip_start = common dso_local global i32* null, align 8
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @zip_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_iter(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zip_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.zip_data*, %struct.zip_data** %9, align 8
  store %struct.zip_data* %10, %struct.zip_data** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.zip_data*, %struct.zip_data** %5, align 8
  %13 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32* @strm_ary_ptr(i32 %14)
  %16 = load %struct.zip_data*, %struct.zip_data** %5, align 8
  %17 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32 %11, i32* %20, align 4
  %21 = load %struct.zip_data*, %struct.zip_data** %5, align 8
  %22 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.zip_data*, %struct.zip_data** %5, align 8
  %25 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.zip_data*, %struct.zip_data** %5, align 8
  %30 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %29, i32 0, i32 3
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %30, align 8
  %32 = load %struct.zip_data*, %struct.zip_data** %5, align 8
  %33 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %31, i64 %34
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = call i32 @strm_latch_receive(%struct.TYPE_9__* %36, %struct.TYPE_9__* %37, i32 (%struct.TYPE_9__*, i32)* @zip_iter)
  br label %97

39:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.zip_data*, %struct.zip_data** %5, align 8
  %43 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load %struct.zip_data*, %struct.zip_data** %5, align 8
  %48 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %47, i32 0, i32 3
  %49 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %49, i64 %50
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = call i64 @strm_latch_finish_p(%struct.TYPE_9__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i64 1, i64* %7, align 8
  br label %60

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %40

60:                                               ; preds = %55, %40
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = load %struct.zip_data*, %struct.zip_data** %5, align 8
  %66 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @strm_emit(%struct.TYPE_9__* %64, i32 %67, i32* null)
  store i64 0, i64* %6, align 8
  br label %69

69:                                               ; preds = %83, %63
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.zip_data*, %struct.zip_data** %5, align 8
  %72 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.zip_data*, %struct.zip_data** %5, align 8
  %77 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %76, i32 0, i32 3
  %78 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %78, i64 %79
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = call i32 @strm_stream_close(%struct.TYPE_9__* %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %69

86:                                               ; preds = %69
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = call i32 @strm_stream_close(%struct.TYPE_9__* %87)
  br label %96

89:                                               ; preds = %60
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = load %struct.zip_data*, %struct.zip_data** %5, align 8
  %92 = getelementptr inbounds %struct.zip_data, %struct.zip_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** @zip_start, align 8
  %95 = call i32 @strm_emit(%struct.TYPE_9__* %90, i32 %93, i32* %94)
  br label %96

96:                                               ; preds = %89, %86
  br label %97

97:                                               ; preds = %96, %28
  %98 = load i32, i32* @STRM_OK, align 4
  ret i32 %98
}

declare dso_local i32* @strm_ary_ptr(i32) #1

declare dso_local i32 @strm_latch_receive(%struct.TYPE_9__*, %struct.TYPE_9__*, i32 (%struct.TYPE_9__*, i32)*) #1

declare dso_local i64 @strm_latch_finish_p(%struct.TYPE_9__*) #1

declare dso_local i32 @strm_emit(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @strm_stream_close(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
