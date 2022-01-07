; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_DecompressGetPalette.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_DecompressGetPalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"(%p,%p,%p)\0A\00", align 1
@ICERR_BADPARAM = common dso_local global i64 0, align 8
@ICERR_OK = common dso_local global i64 0, align 8
@ICERR_BADFORMAT = common dso_local global i64 0, align 8
@ICERR_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_9__*, %struct.TYPE_10__*)* @DecompressGetPalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DecompressGetPalette(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %9, %struct.TYPE_9__* %10, %struct.TYPE_10__* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %3
  %23 = load i64, i64* @ICERR_BADPARAM, align 8
  store i64 %23, i64* %4, align 8
  br label %83

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = call i64 @DecompressQuery(i32* %25, %struct.TYPE_9__* %26, %struct.TYPE_10__* %27)
  %29 = load i64, i64* @ICERR_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @ICERR_BADFORMAT, align 8
  store i64 %32, i64* %4, align 8
  br label %83

33:                                               ; preds = %24
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 8
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @ICERR_ERROR, align 8
  store i64 %39, i64* %4, align 8
  br label %83

40:                                               ; preds = %33
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %43, 8
  br i1 %44, label %45, label %81

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  br label %59

54:                                               ; preds = %45
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = ptrtoint %struct.TYPE_10__* %63 to i64
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = bitcast %struct.TYPE_9__* %69 to i32*
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memcpy(i64 %68, i32* %75, i32 %79)
  br label %81

81:                                               ; preds = %59, %40
  %82 = load i64, i64* @ICERR_OK, align 8
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %81, %38, %31, %22
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local i32 @TRACE(i8*, i32*, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @DecompressQuery(i32*, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
