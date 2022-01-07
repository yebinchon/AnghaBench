; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_snlua.c_lalloc.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_snlua.c_lalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snlua = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Memory warning %.2f M\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64, i64)* @lalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lalloc(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.snlua*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.snlua*
  store %struct.snlua* %13, %struct.snlua** %10, align 8
  %14 = load %struct.snlua*, %struct.snlua** %10, align 8
  %15 = getelementptr inbounds %struct.snlua, %struct.snlua* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.snlua*, %struct.snlua** %10, align 8
  %19 = getelementptr inbounds %struct.snlua, %struct.snlua* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.snlua*, %struct.snlua** %10, align 8
  %27 = getelementptr inbounds %struct.snlua, %struct.snlua* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %28, %25
  store i64 %29, i64* %27, align 8
  br label %30

30:                                               ; preds = %24, %4
  %31 = load %struct.snlua*, %struct.snlua** %10, align 8
  %32 = getelementptr inbounds %struct.snlua, %struct.snlua* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = load %struct.snlua*, %struct.snlua** %10, align 8
  %37 = getelementptr inbounds %struct.snlua, %struct.snlua* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.snlua*, %struct.snlua** %10, align 8
  %40 = getelementptr inbounds %struct.snlua, %struct.snlua* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = load i8*, i8** %7, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %43
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.snlua*, %struct.snlua** %10, align 8
  %53 = getelementptr inbounds %struct.snlua, %struct.snlua* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  store i8* null, i8** %5, align 8
  br label %82

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %35, %30
  %56 = load %struct.snlua*, %struct.snlua** %10, align 8
  %57 = getelementptr inbounds %struct.snlua, %struct.snlua* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.snlua*, %struct.snlua** %10, align 8
  %60 = getelementptr inbounds %struct.snlua, %struct.snlua* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ugt i64 %58, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %55
  %64 = load %struct.snlua*, %struct.snlua** %10, align 8
  %65 = getelementptr inbounds %struct.snlua, %struct.snlua* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = mul i64 %66, 2
  store i64 %67, i64* %65, align 8
  %68 = load %struct.snlua*, %struct.snlua** %10, align 8
  %69 = getelementptr inbounds %struct.snlua, %struct.snlua* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.snlua*, %struct.snlua** %10, align 8
  %72 = getelementptr inbounds %struct.snlua, %struct.snlua* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = uitofp i64 %73 to float
  %75 = fdiv float %74, 0x4130000000000000
  %76 = call i32 @skynet_error(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), float %75)
  br label %77

77:                                               ; preds = %63, %55
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i8* @skynet_lalloc(i8* %78, i64 %79, i64 %80)
  store i8* %81, i8** %5, align 8
  br label %82

82:                                               ; preds = %77, %50
  %83 = load i8*, i8** %5, align 8
  ret i8* %83
}

declare dso_local i32 @skynet_error(i32, i8*, float) #1

declare dso_local i8* @skynet_lalloc(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
