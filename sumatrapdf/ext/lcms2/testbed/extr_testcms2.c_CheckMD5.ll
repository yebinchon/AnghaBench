; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckMD5.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckMD5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"sRGBlcms2.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckMD5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckMD5() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_2__, align 4
  %4 = alloca %struct.TYPE_2__, align 4
  %5 = alloca %struct.TYPE_2__, align 4
  %6 = alloca %struct.TYPE_2__, align 4
  %7 = call i32 (...) @DbgThread()
  %8 = call i64 @cmsOpenProfileFromFile(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %1, align 8
  %11 = call i32 (...) @DbgThread()
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @cmsMD5computeID(i32 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %0
  %16 = call i32 (...) @DbgThread()
  %17 = load i64, i64* %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cmsGetHeaderProfileID(i32 %16, i64 %17, i32 %19)
  br label %21

21:                                               ; preds = %15, %0
  %22 = call i32 (...) @DbgThread()
  %23 = load i64, i64* %2, align 8
  %24 = call i64 @cmsMD5computeID(i32 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = call i32 (...) @DbgThread()
  %28 = load i64, i64* %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cmsGetHeaderProfileID(i32 %27, i64 %28, i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = call i32 (...) @DbgThread()
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @cmsCloseProfile(i32 %33, i64 %34)
  %36 = call i32 (...) @DbgThread()
  %37 = call i64 @cmsOpenProfileFromFile(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 %37, i64* %2, align 8
  %38 = load i64, i64* %2, align 8
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %1, align 8
  %40 = call i32 (...) @DbgThread()
  %41 = load i64, i64* %2, align 8
  %42 = call i64 @cmsMD5computeID(i32 %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = call i32 (...) @DbgThread()
  %46 = load i64, i64* %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cmsGetHeaderProfileID(i32 %45, i64 %46, i32 %48)
  br label %50

50:                                               ; preds = %44, %32
  %51 = call i32 (...) @DbgThread()
  %52 = load i64, i64* %2, align 8
  %53 = call i64 @cmsMD5computeID(i32 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = call i32 (...) @DbgThread()
  %57 = load i64, i64* %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cmsGetHeaderProfileID(i32 %56, i64 %57, i32 %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = call i32 (...) @DbgThread()
  %63 = load i64, i64* %2, align 8
  %64 = call i32 @cmsCloseProfile(i32 %62, i64 %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @memcmp(i32 %66, i32 %68, i32 4)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @memcmp(i32 %73, i32 %75, i32 4)
  %77 = icmp eq i64 %76, 0
  br label %78

78:                                               ; preds = %71, %61
  %79 = phi i1 [ false, %61 ], [ %77, %71 ]
  %80 = zext i1 %79 to i32
  ret i32 %80
}

declare dso_local i64 @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i64 @cmsMD5computeID(i32, i64) #1

declare dso_local i32 @cmsGetHeaderProfileID(i32, i64, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i64) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
