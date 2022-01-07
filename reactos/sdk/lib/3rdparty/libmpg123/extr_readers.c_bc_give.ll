; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_give.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_give.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferchain = type { i64, i64, %struct.buffy* }
%struct.buffy = type { i64, i64, %struct.buffy* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bufferchain*, i8*, i64)* @bc_give to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bc_give(%struct.bufferchain* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bufferchain*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffy*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.bufferchain* %0, %struct.bufferchain** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.bufferchain*, %struct.bufferchain** %5, align 8
  %14 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %13, i32 0, i32 2
  %15 = load %struct.buffy*, %struct.buffy** %14, align 8
  store %struct.buffy* %15, %struct.buffy** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.bufferchain*, %struct.bufferchain** %5, align 8
  %17 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bufferchain*, %struct.bufferchain** %5, align 8
  %20 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.bufferchain*, %struct.bufferchain** %5, align 8
  %27 = call i64 @bc_need_more(%struct.bufferchain* %26)
  store i64 %27, i64* %4, align 8
  br label %114

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %44, %28
  %30 = load %struct.buffy*, %struct.buffy** %8, align 8
  %31 = icmp ne %struct.buffy* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.buffy*, %struct.buffy** %8, align 8
  %35 = getelementptr inbounds %struct.buffy, %struct.buffy* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.bufferchain*, %struct.bufferchain** %5, align 8
  %39 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br label %42

42:                                               ; preds = %32, %29
  %43 = phi i1 [ false, %29 ], [ %41, %32 ]
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = load %struct.buffy*, %struct.buffy** %8, align 8
  %46 = getelementptr inbounds %struct.buffy, %struct.buffy* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %10, align 8
  %50 = load %struct.buffy*, %struct.buffy** %8, align 8
  %51 = getelementptr inbounds %struct.buffy, %struct.buffy* %50, i32 0, i32 2
  %52 = load %struct.buffy*, %struct.buffy** %51, align 8
  store %struct.buffy* %52, %struct.buffy** %8, align 8
  br label %29

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %85, %53
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.buffy*, %struct.buffy** %8, align 8
  %60 = icmp ne %struct.buffy* %59, null
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ]
  br i1 %62, label %63, label %112

63:                                               ; preds = %61
  %64 = load %struct.bufferchain*, %struct.bufferchain** %5, align 8
  %65 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = sub nsw i64 %66, %67
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = sub nsw i64 %69, %70
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.buffy*, %struct.buffy** %8, align 8
  %74 = getelementptr inbounds %struct.buffy, %struct.buffy* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = sub nsw i64 %75, %76
  %78 = icmp sgt i64 %72, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %63
  %80 = load %struct.buffy*, %struct.buffy** %8, align 8
  %81 = getelementptr inbounds %struct.buffy, %struct.buffy* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = sub nsw i64 %82, %83
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %79, %63
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load %struct.buffy*, %struct.buffy** %8, align 8
  %90 = getelementptr inbounds %struct.buffy, %struct.buffy* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @memcpy(i8* %88, i64 %93, i64 %94)
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.bufferchain*, %struct.bufferchain** %5, align 8
  %101 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.buffy*, %struct.buffy** %8, align 8
  %105 = getelementptr inbounds %struct.buffy, %struct.buffy* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %10, align 8
  %109 = load %struct.buffy*, %struct.buffy** %8, align 8
  %110 = getelementptr inbounds %struct.buffy, %struct.buffy* %109, i32 0, i32 2
  %111 = load %struct.buffy*, %struct.buffy** %110, align 8
  store %struct.buffy* %111, %struct.buffy** %8, align 8
  br label %54

112:                                              ; preds = %61
  %113 = load i64, i64* %9, align 8
  store i64 %113, i64* %4, align 8
  br label %114

114:                                              ; preds = %112, %25
  %115 = load i64, i64* %4, align 8
  ret i64 %115
}

declare dso_local i64 @bc_need_more(%struct.bufferchain*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
