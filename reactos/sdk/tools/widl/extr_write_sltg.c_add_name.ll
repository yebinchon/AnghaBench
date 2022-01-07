; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_add_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_add_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_typelib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64* }

@.str = private unnamed_addr constant [14 x i8] c"add_name: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sltg_typelib*, i8*)* @add_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_name(%struct.sltg_typelib* %0, i8* %1) #0 {
  %3 = alloca %struct.sltg_typelib*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sltg_typelib* %0, %struct.sltg_typelib** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %9 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %13 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %15, %17
  %19 = add nsw i32 %18, 1
  %20 = add nsw i32 %19, 8
  store i32 %20, i32* %6, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @chat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 31
  %25 = and i32 %24, -32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %26, %27
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %6, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  %35 = and i32 %34, -2
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %30
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %39 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %45 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 2
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @max(i32 %48, i32 %49)
  %51 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %52 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %55 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %59 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64* @xrealloc(i64* %57, i32 %61)
  %63 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %64 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i64* %62, i64** %65, align 8
  br label %66

66:                                               ; preds = %43, %36
  %67 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %68 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %72 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %70, i64 %75
  %77 = call i32 @memset(i64* %76, i32 255, i32 8)
  %78 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %79 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %83 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %81, i64 %86
  %88 = getelementptr inbounds i64, i64* %87, i64 8
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @strcpy(i64* %88, i8* %89)
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %93 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %96 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.sltg_typelib*, %struct.sltg_typelib** %3, align 8
  %100 = getelementptr inbounds %struct.sltg_typelib, %struct.sltg_typelib* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %98, i64 %104
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @chat(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64* @xrealloc(i64*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
