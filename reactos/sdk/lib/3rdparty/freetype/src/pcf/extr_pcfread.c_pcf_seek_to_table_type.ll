; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pcf/extr_pcfread.c_pcf_seek_to_table_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/pcf/extr_pcfread.c_pcf_seek_to_table_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@Invalid_File_Format = common dso_local global i32 0, align 4
@Invalid_Stream_Skip = common dso_local global i32 0, align 4
@FT_Err_Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i64, i64, i64*, i64*)* @pcf_seek_to_table_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf_seek_to_table_type(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i32, i32* @Invalid_File_Format, align 4
  %17 = call i32 @FT_ERR(i32 %16)
  store i32 %17, i32* %14, align 4
  store i64 0, i64* %15, align 8
  br label %18

18:                                               ; preds = %73, %6
  %19 = load i64, i64* %15, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = load i64, i64* %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = load i64, i64* %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %33, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @Invalid_Stream_Skip, align 4
  %42 = call i32 @FT_THROW(i32 %41)
  store i32 %42, i32* %14, align 4
  br label %77

43:                                               ; preds = %30
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = call i64 @FT_STREAM_SKIP(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* @Invalid_Stream_Skip, align 4
  %57 = call i32 @FT_THROW(i32 %56)
  store i32 %57, i32* %14, align 4
  br label %77

58:                                               ; preds = %43
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %13, align 8
  store i64 %63, i64* %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %12, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %71, i32* %7, align 4
  br label %80

72:                                               ; preds = %22
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %15, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %15, align 8
  br label %18

76:                                               ; preds = %18
  br label %77

77:                                               ; preds = %76, %55, %40
  %78 = load i64*, i64** %13, align 8
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %58
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @FT_ERR(i32) #1

declare dso_local i32 @FT_THROW(i32) #1

declare dso_local i64 @FT_STREAM_SKIP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
