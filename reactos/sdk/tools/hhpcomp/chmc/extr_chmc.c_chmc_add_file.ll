; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_add_file.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcTreeNode = type { i32 }
%struct.chmcFile = type { i32, %struct.chmcSection** }
%struct.chmcSection = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.chmcTreeNode* @chmc_add_file(%struct.chmcFile* %0, i8* %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.chmcTreeNode*, align 8
  %8 = alloca %struct.chmcFile*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.chmcSection*, align 8
  %15 = alloca %struct.chmcTreeNode*, align 8
  store %struct.chmcFile* %0, %struct.chmcFile** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.chmcFile*, %struct.chmcFile** %8, align 8
  %17 = call i32 @assert(%struct.chmcFile* %16)
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.chmcFile*, %struct.chmcFile** %8, align 8
  %20 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store %struct.chmcTreeNode* null, %struct.chmcTreeNode** %7, align 8
  br label %56

24:                                               ; preds = %6
  %25 = load %struct.chmcFile*, %struct.chmcFile** %8, align 8
  %26 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %25, i32 0, i32 1
  %27 = load %struct.chmcSection**, %struct.chmcSection*** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.chmcSection*, %struct.chmcSection** %27, i64 %29
  %31 = load %struct.chmcSection*, %struct.chmcSection** %30, align 8
  store %struct.chmcSection* %31, %struct.chmcSection** %14, align 8
  %32 = load %struct.chmcFile*, %struct.chmcFile** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.chmcSection*, %struct.chmcSection** %14, align 8
  %37 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %13, align 8
  %40 = call %struct.chmcTreeNode* @chmc_add_entry(%struct.chmcFile* %32, i8* %33, i32 %34, i32 %35, i32* null, i32 %38, i64 %39)
  store %struct.chmcTreeNode* %40, %struct.chmcTreeNode** %15, align 8
  %41 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %15, align 8
  %42 = icmp ne %struct.chmcTreeNode* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %24
  %44 = load i64, i64* %13, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.chmcSection*, %struct.chmcSection** %14, align 8
  %49 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  br label %54

54:                                               ; preds = %46, %43, %24
  %55 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %15, align 8
  store %struct.chmcTreeNode* %55, %struct.chmcTreeNode** %7, align 8
  br label %56

56:                                               ; preds = %54, %23
  %57 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %7, align 8
  ret %struct.chmcTreeNode* %57
}

declare dso_local i32 @assert(%struct.chmcFile*) #1

declare dso_local %struct.chmcTreeNode* @chmc_add_entry(%struct.chmcFile*, i8*, i32, i32, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
