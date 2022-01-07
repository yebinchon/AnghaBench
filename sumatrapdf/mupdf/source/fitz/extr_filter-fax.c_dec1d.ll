; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-fax.c_dec1d.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-fax.c_dec1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@cf_black_decode = common dso_local global i32 0, align 4
@cfd_black_initial_bits = common dso_local global i32 0, align 4
@cf_white_decode = common dso_local global i32 0, align 4
@cfd_white_initial_bits = common dso_local global i32 0, align 4
@UNCOMPRESSED = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"uncompressed data in faxd\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"negative code in 1d faxd\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"overflow in 1d faxd\00", align 1
@STATE_NORMAL = common dso_local global i32 0, align 4
@STATE_MAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @dec1d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec1d(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = load i32, i32* @cf_black_decode, align 4
  %22 = load i32, i32* @cfd_black_initial_bits, align 4
  %23 = call i32 @get_code(i32* %19, %struct.TYPE_4__* %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %13
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = load i32, i32* @cf_white_decode, align 4
  %28 = load i32, i32* @cfd_white_initial_bits, align 4
  %29 = call i32 @get_code(i32* %25, %struct.TYPE_4__* %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @UNCOMPRESSED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %37 = call i32 @fz_throw(i32* %35, i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %44 = call i32 @fz_throw(i32* %42, i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %38
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %48, %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %58 = call i32 @fz_throw(i32* %56, i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %45
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 @setbits(i32 %67, i32 %70, i32 %75)
  br label %77

77:                                               ; preds = %64, %59
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 64
  br i1 %84, label %85, label %97

85:                                               ; preds = %77
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @STATE_NORMAL, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %101

97:                                               ; preds = %77
  %98 = load i32, i32* @STATE_MAKEUP, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %85
  ret void
}

declare dso_local i32 @get_code(i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @setbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
