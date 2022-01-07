; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_iso.c_iso9660_readfat.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_iso.c_iso9660_readfat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32*, i64, i32 }

@.str = private unnamed_addr constant [55 x i8] c"iso9660_readfat: Sector size %d is not a divisor of %d\00", align 1
@ISO_BLOCKSIZE = common dso_local global i32 0, align 4
@ISO_NB_BLOCKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Error reading ISO-9660 file %s at LSN %lu\0A\00", align 1
@img_report = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iso9660_readfat(i64 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %6, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = urem i64 8, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @uprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %17, i64 8)
  store i32 0, i32* %5, align 4
  br label %112

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %8, align 8
  %33 = udiv i64 8, %32
  %34 = add i64 %31, %33
  %35 = icmp uge i64 %27, %34
  br i1 %35, label %36, label %94

36:                                               ; preds = %25, %19
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %8, align 8
  %40 = mul i64 %38, %39
  %41 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %40, %42
  %44 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %43, %45
  %47 = load i64, i64* %8, align 8
  %48 = udiv i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %8, align 8
  %66 = mul i64 %64, %65
  %67 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %66, %68
  %70 = add nsw i64 %60, %69
  %71 = load i32, i32* @ISO_NB_BLOCKS, align 4
  %72 = call i32 @iso9660_iso_seek_read(i32 %54, i32* %57, i64 %70, i32 %71)
  %73 = load i32, i32* @ISO_NB_BLOCKS, align 4
  %74 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %75 = mul nsw i32 %73, %74
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %36
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @img_report, i32 0, i32 0), align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %8, align 8
  %87 = mul i64 %85, %86
  %88 = load i32, i32* @ISO_BLOCKSIZE, align 4
  %89 = sext i32 %88 to i64
  %90 = udiv i64 %87, %89
  %91 = add i64 %81, %90
  %92 = call i32 @uprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %78, i64 %91)
  store i32 0, i32* %5, align 4
  br label %112

93:                                               ; preds = %36
  br label %94

94:                                               ; preds = %93, %25
  %95 = load i8*, i8** %7, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %8, align 8
  %106 = mul i64 %104, %105
  %107 = getelementptr inbounds i32, i32* %98, i64 %106
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @memcpy(i8* %95, i32* %107, i64 %108)
  %110 = load i64, i64* %8, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %94, %77, %16
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @uprintf(i8*, i64, i64) #1

declare dso_local i32 @iso9660_iso_seek_read(i32, i32*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
