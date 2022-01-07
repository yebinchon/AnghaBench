; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_add_index.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_add_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_data = type { i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"add_index: name_offset %d, \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sltg_data*, i8*)* @add_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_index(%struct.sltg_data* %0, i8* %1) #0 {
  %3 = alloca %struct.sltg_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sltg_data* %0, %struct.sltg_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.sltg_data*, %struct.sltg_data** %3, align 8
  %8 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sltg_data*, %struct.sltg_data** %3, align 8
  %11 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %12, %14
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @chat(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.sltg_data*, %struct.sltg_data** %3, align 8
  %22 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = load %struct.sltg_data*, %struct.sltg_data** %3, align 8
  %27 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 2
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @max(i32 %29, i32 %30)
  %32 = load %struct.sltg_data*, %struct.sltg_data** %3, align 8
  %33 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sltg_data*, %struct.sltg_data** %3, align 8
  %35 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sltg_data*, %struct.sltg_data** %3, align 8
  %38 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @xrealloc(i64 %36, i32 %39)
  %41 = load %struct.sltg_data*, %struct.sltg_data** %3, align 8
  %42 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %25, %2
  %44 = load %struct.sltg_data*, %struct.sltg_data** %3, align 8
  %45 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sltg_data*, %struct.sltg_data** %3, align 8
  %48 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %46, %50
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strcpy(i64 %51, i8* %52)
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.sltg_data*, %struct.sltg_data** %3, align 8
  %56 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @chat(i8*, i32, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @xrealloc(i64, i32) #1

declare dso_local i32 @strcpy(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
