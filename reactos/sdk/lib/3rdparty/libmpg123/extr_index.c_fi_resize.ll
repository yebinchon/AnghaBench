; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_index.c_fi_resize.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_index.c_fi_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_index = type { i64, i64, i32*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"new index of size %lu at %p\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to resize index!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fi_resize(%struct.frame_index* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.frame_index*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.frame_index* %0, %struct.frame_index** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %9 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %19 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %29, %22
  %24 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %25 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %31 = call i32 @fi_shrink(%struct.frame_index* %30)
  br label %23

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %16, %13
  %34 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %35 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = mul i64 %37, 4
  %39 = call i32* @safe_realloc(i32* %36, i64 %38)
  store i32* %39, i32** %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %78

45:                                               ; preds = %42, %33
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %48 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %51 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %53 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %56 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %45
  %60 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %61 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %64 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %45
  %66 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %67 = call i32 @fi_next(%struct.frame_index* %66)
  %68 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %69 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %71 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.frame_index*, %struct.frame_index** %4, align 8
  %74 = getelementptr inbounds %struct.frame_index, %struct.frame_index* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = call i32 @debug2(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %72, i8* %76)
  store i32 0, i32* %3, align 4
  br label %80

78:                                               ; preds = %42
  %79 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %65, %12
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @fi_shrink(%struct.frame_index*) #1

declare dso_local i32* @safe_realloc(i32*, i64) #1

declare dso_local i32 @fi_next(%struct.frame_index*) #1

declare dso_local i32 @debug2(i8*, i64, i8*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
