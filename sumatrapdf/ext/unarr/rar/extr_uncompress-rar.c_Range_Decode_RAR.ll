; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_Range_Decode_RAR.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_Range_Decode_RAR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CPpmdRAR_RangeDec = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @Range_Decode_RAR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Range_Decode_RAR(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.CPpmdRAR_RangeDec*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.CPpmdRAR_RangeDec*
  store %struct.CPpmdRAR_RangeDec* %9, %struct.CPpmdRAR_RangeDec** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %12 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  %15 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %16 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %21 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %25 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %30 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %62, %3
  %34 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %35 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %38 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %41 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = xor i32 %36, %43
  %45 = icmp sge i32 %44, 16777216
  br i1 %45, label %46, label %62

46:                                               ; preds = %33
  %47 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %48 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 32768
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %87

52:                                               ; preds = %46
  %53 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %54 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 0, %56
  %58 = trunc i64 %57 to i32
  %59 = and i32 %58, 32767
  %60 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %61 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %33
  %63 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %64 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 8
  %67 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %68 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %70, align 8
  %72 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %73 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = call i32 %71(%struct.TYPE_2__* %74)
  %76 = or i32 %66, %75
  %77 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %78 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %80 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 8
  store i32 %82, i32* %80, align 4
  %83 = load %struct.CPpmdRAR_RangeDec*, %struct.CPpmdRAR_RangeDec** %7, align 8
  %84 = getelementptr inbounds %struct.CPpmdRAR_RangeDec, %struct.CPpmdRAR_RangeDec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = shl i32 %85, 8
  store i32 %86, i32* %84, align 8
  br label %33

87:                                               ; preds = %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
