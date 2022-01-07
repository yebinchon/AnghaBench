; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_findtag.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_findtag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field = type { i32 }
%struct.sproto_type = type { i64, i32, %struct.field* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.field* (%struct.sproto_type*, i32)* @findtag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.field* @findtag(%struct.sproto_type* %0, i32 %1) #0 {
  %3 = alloca %struct.field*, align 8
  %4 = alloca %struct.sproto_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.field*, align 8
  %10 = alloca i32, align 4
  store %struct.sproto_type* %0, %struct.sproto_type** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.sproto_type*, %struct.sproto_type** %4, align 8
  %12 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load %struct.sproto_type*, %struct.sproto_type** %4, align 8
  %17 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.sproto_type*, %struct.sproto_type** %4, align 8
  %28 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %15
  store %struct.field* null, %struct.field** %3, align 8
  br label %77

32:                                               ; preds = %25
  %33 = load %struct.sproto_type*, %struct.sproto_type** %4, align 8
  %34 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %33, i32 0, i32 2
  %35 = load %struct.field*, %struct.field** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.field, %struct.field* %35, i64 %37
  store %struct.field* %38, %struct.field** %3, align 8
  br label %77

39:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %40 = load %struct.sproto_type*, %struct.sproto_type** %4, align 8
  %41 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %75, %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %48, %49
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %8, align 4
  %52 = load %struct.sproto_type*, %struct.sproto_type** %4, align 8
  %53 = getelementptr inbounds %struct.sproto_type, %struct.sproto_type* %52, i32 0, i32 2
  %54 = load %struct.field*, %struct.field** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.field, %struct.field* %54, i64 %56
  store %struct.field* %57, %struct.field** %9, align 8
  %58 = load %struct.field*, %struct.field** %9, align 8
  %59 = getelementptr inbounds %struct.field, %struct.field* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %47
  %65 = load %struct.field*, %struct.field** %9, align 8
  store %struct.field* %65, %struct.field** %3, align 8
  br label %77

66:                                               ; preds = %47
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %70
  br label %43

76:                                               ; preds = %43
  store %struct.field* null, %struct.field** %3, align 8
  br label %77

77:                                               ; preds = %76, %64, %32, %31
  %78 = load %struct.field*, %struct.field** %3, align 8
  ret %struct.field* %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
