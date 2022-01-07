; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_add_meta.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_add_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcTreeNode = type { i32 }
%struct.chmcFile = type { i32, %struct.chmcSection** }
%struct.chmcSection = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.chmcTreeNode* @chmc_add_meta(%struct.chmcFile* %0, i8* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.chmcTreeNode*, align 8
  %7 = alloca %struct.chmcFile*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.chmcSection*, align 8
  %13 = alloca %struct.chmcTreeNode*, align 8
  store %struct.chmcFile* %0, %struct.chmcFile** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.chmcFile*, %struct.chmcFile** %7, align 8
  %15 = call i32 @assert(%struct.chmcFile* %14)
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.chmcFile*, %struct.chmcFile** %7, align 8
  %18 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store %struct.chmcTreeNode* null, %struct.chmcTreeNode** %6, align 8
  br label %54

22:                                               ; preds = %5
  %23 = load %struct.chmcFile*, %struct.chmcFile** %7, align 8
  %24 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %23, i32 0, i32 1
  %25 = load %struct.chmcSection**, %struct.chmcSection*** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.chmcSection*, %struct.chmcSection** %25, i64 %27
  %29 = load %struct.chmcSection*, %struct.chmcSection** %28, align 8
  store %struct.chmcSection* %29, %struct.chmcSection** %12, align 8
  %30 = load %struct.chmcFile*, %struct.chmcFile** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load %struct.chmcSection*, %struct.chmcSection** %12, align 8
  %35 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %11, align 8
  %38 = call %struct.chmcTreeNode* @chmc_add_entry(%struct.chmcFile* %30, i8* %31, i32 0, i32 %32, i32* %33, i32 %36, i64 %37)
  store %struct.chmcTreeNode* %38, %struct.chmcTreeNode** %13, align 8
  %39 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %13, align 8
  %40 = icmp ne %struct.chmcTreeNode* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %22
  %42 = load i64, i64* %11, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.chmcSection*, %struct.chmcSection** %12, align 8
  %47 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  br label %52

52:                                               ; preds = %44, %41, %22
  %53 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %13, align 8
  store %struct.chmcTreeNode* %53, %struct.chmcTreeNode** %6, align 8
  br label %54

54:                                               ; preds = %52, %21
  %55 = load %struct.chmcTreeNode*, %struct.chmcTreeNode** %6, align 8
  ret %struct.chmcTreeNode* %55
}

declare dso_local i32 @assert(%struct.chmcFile*) #1

declare dso_local %struct.chmcTreeNode* @chmc_add_entry(%struct.chmcFile*, i8*, i32, i32, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
