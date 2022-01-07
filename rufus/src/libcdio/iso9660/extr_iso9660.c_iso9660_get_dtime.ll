; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_get_dtime.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_iso9660.c_iso9660_get_dtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.tm = type { i64, i64, i64, i64, i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iso9660_get_dtime(%struct.TYPE_3__* %0, i32 %1, %struct.tm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tm, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tm* %2, %struct.tm** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %102

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 0, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 0, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 0, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 0, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 0, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 0, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  %46 = call i32 @localtime_r(i32* %8, %struct.tm* %9)
  %47 = load %struct.tm*, %struct.tm** %7, align 8
  %48 = call i32 @memcpy(%struct.tm* %47, %struct.tm* %9, i32 64)
  store i32 1, i32* %4, align 4
  br label %102

49:                                               ; preds = %40, %35, %30, %25, %20, %15
  %50 = load %struct.tm*, %struct.tm** %7, align 8
  %51 = call i32 @memset(%struct.tm* %50, i32 0, i32 64)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.tm*, %struct.tm** %7, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 1
  %61 = load %struct.tm*, %struct.tm** %7, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.tm*, %struct.tm** %7, align 8
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.tm*, %struct.tm** %7, align 8
  %72 = getelementptr inbounds %struct.tm, %struct.tm* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.tm*, %struct.tm** %7, align 8
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %83, 900
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %80, %85
  %87 = load %struct.tm*, %struct.tm** %7, align 8
  %88 = getelementptr inbounds %struct.tm, %struct.tm* %87, i32 0, i32 5
  store i64 %86, i64* %88, align 8
  %89 = load %struct.tm*, %struct.tm** %7, align 8
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %89, i32 0, i32 6
  store i32 -1, i32* %90, align 8
  store i32 0, i32* %10, align 4
  %91 = load %struct.tm*, %struct.tm** %7, align 8
  %92 = call i32 @timegm(%struct.tm* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %49
  %96 = call i32 @localtime_r(i32* %10, %struct.tm* %11)
  br label %99

97:                                               ; preds = %49
  %98 = call i32 @gmtime_r(i32* %10, %struct.tm* %11)
  br label %99

99:                                               ; preds = %97, %95
  %100 = load %struct.tm*, %struct.tm** %7, align 8
  %101 = call i32 @memcpy(%struct.tm* %100, %struct.tm* %11, i32 64)
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %45, %14
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @memcpy(%struct.tm*, %struct.tm*, i32) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @timegm(%struct.tm*) #1

declare dso_local i32 @gmtime_r(i32*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
