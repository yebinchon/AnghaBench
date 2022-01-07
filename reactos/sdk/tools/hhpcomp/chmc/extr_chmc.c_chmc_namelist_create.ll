; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_namelist_create.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_namelist_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcFile = type { i32, %struct.chmcSection** }
%struct.chmcSection = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"::DataSpace/NameList\00", align 1
@CHMC_ENOMEM = common dso_local global i32 0, align 4
@CHMC_NOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chmc_namelist_create(%struct.chmcFile* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chmcFile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.chmcSection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.chmcFile* %0, %struct.chmcFile** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @malloc(i32 %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %90

16:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 1
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %18, i32* %23, align 4
  %24 = load %struct.chmcFile*, %struct.chmcFile** %4, align 8
  %25 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 %26, i32* %31, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %82, %16
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.chmcFile*, %struct.chmcFile** %4, align 8
  %35 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %85

38:                                               ; preds = %32
  %39 = load %struct.chmcFile*, %struct.chmcFile** %4, align 8
  %40 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %39, i32 0, i32 1
  %41 = load %struct.chmcSection**, %struct.chmcSection*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.chmcSection*, %struct.chmcSection** %41, i64 %43
  %45 = load %struct.chmcSection*, %struct.chmcSection** %44, align 8
  store %struct.chmcSection* %45, %struct.chmcSection** %7, align 8
  %46 = load %struct.chmcSection*, %struct.chmcSection** %7, align 8
  %47 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @strlen(i32* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %73, %38
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load %struct.chmcSection*, %struct.chmcSection** %7, align 8
  %62 = getelementptr inbounds %struct.chmcSection, %struct.chmcSection* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %56

76:                                               ; preds = %56
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %32

85:                                               ; preds = %32
  %86 = load %struct.chmcFile*, %struct.chmcFile** %4, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @chmc_add_meta(%struct.chmcFile* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 0, i32* %87, i32 %88)
  br label %92

90:                                               ; preds = %2
  %91 = load i32, i32* @CHMC_ENOMEM, align 4
  store i32 %91, i32* %3, align 4
  br label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @CHMC_NOERR, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @chmc_add_meta(%struct.chmcFile*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
