; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_meta.c_AppleNameToMeta.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_meta.c_AppleNameToMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }

@com_apple_quicktime_tometa = common dso_local global %struct.TYPE_4__* null, align 8
@com_apple_quicktime_toextrameta = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**, i8**)* @AppleNameToMeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AppleNameToMeta(i8* %0, i32** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = load i32**, i32*** %5, align 8
  store i32* null, i32** %9, align 8
  %10 = load i8**, i8*** %6, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %38, %3
  %12 = load i32**, i32*** %5, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_apple_quicktime_tometa, align 8
  %18 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %17)
  %19 = icmp ult i64 %16, %18
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i1 [ false, %11 ], [ %19, %15 ]
  br i1 %21, label %22, label %41

22:                                               ; preds = %20
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_apple_quicktime_tometa, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strcmp(i8* %23, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_apple_quicktime_tometa, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32**, i32*** %5, align 8
  store i32* %35, i32** %36, align 8
  br label %37

37:                                               ; preds = %31, %22
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %11

41:                                               ; preds = %20
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %70, %41
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_apple_quicktime_toextrameta, align 8
  %49 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %48)
  %50 = icmp ult i64 %47, %49
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i1 [ false, %42 ], [ %50, %46 ]
  br i1 %52, label %53, label %73

53:                                               ; preds = %51
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_apple_quicktime_toextrameta, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @strcmp(i8* %54, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %53
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_apple_quicktime_toextrameta, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %6, align 8
  store i8* %67, i8** %68, align 8
  br label %69

69:                                               ; preds = %62, %53
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %42

73:                                               ; preds = %51
  %74 = load i32**, i32*** %5, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i8**, i8*** %6, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i1 [ true, %73 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  ret i32 %83
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
