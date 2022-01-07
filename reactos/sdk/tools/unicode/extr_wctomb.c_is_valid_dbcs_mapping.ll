; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_is_valid_dbcs_mapping.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_is_valid_dbcs_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbcs_table = type { i8*, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16 }

@WC_NO_BEST_FIT_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dbcs_table*, i32, i64, i16)* @is_valid_dbcs_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_dbcs_mapping(%struct.dbcs_table* %0, i32 %1, i64 %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dbcs_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8, align 1
  store %struct.dbcs_table* %0, %struct.dbcs_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i16 %3, i16* %9, align 2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @WC_NO_BEST_FIT_CHARS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = load i16, i16* %9, align 2
  %17 = zext i16 %16 to i32
  %18 = load %struct.dbcs_table*, %struct.dbcs_table** %6, align 8
  %19 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %15, %4
  %25 = load i16, i16* %9, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 65280
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load %struct.dbcs_table*, %struct.dbcs_table** %6, align 8
  %31 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i16, i16* %9, align 2
  %34 = zext i16 %33 to i32
  %35 = ashr i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %10, align 1
  %39 = load %struct.dbcs_table*, %struct.dbcs_table** %6, align 8
  %40 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i8, i8* %10, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = load i16, i16* %9, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 255
  %48 = add nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %41, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %69

55:                                               ; preds = %24
  %56 = load %struct.dbcs_table*, %struct.dbcs_table** %6, align 8
  %57 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i16, i16* %9, align 2
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 255
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %58, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %55, %29
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
