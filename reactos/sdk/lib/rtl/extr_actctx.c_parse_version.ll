; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_version.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.assembly_version = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Wrong version definition in manifest file (%wZ)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.assembly_version*)* @parse_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_version(%struct.TYPE_4__* %0, %struct.assembly_version* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.assembly_version*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.assembly_version* %1, %struct.assembly_version** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %13, align 16
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %73, %2
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = icmp ult i8* %18, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %17
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 48
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sle i32 %36, 57
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = mul i32 %42, 10
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = add i32 %43, %46
  %48 = sub i32 %47, 48
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp uge i32 %55, 65536
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  br label %94

58:                                               ; preds = %38
  br label %72

59:                                               ; preds = %33, %28
  %60 = load i8*, i8** %8, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 46
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = icmp uge i32 %66, 4
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %94

69:                                               ; preds = %64
  br label %71

70:                                               ; preds = %59
  br label %94

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  br label %17

76:                                               ; preds = %17
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %78 = load i32, i32* %77, align 16
  %79 = load %struct.assembly_version*, %struct.assembly_version** %5, align 8
  %80 = getelementptr inbounds %struct.assembly_version, %struct.assembly_version* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.assembly_version*, %struct.assembly_version** %5, align 8
  %84 = getelementptr inbounds %struct.assembly_version, %struct.assembly_version* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.assembly_version*, %struct.assembly_version** %5, align 8
  %88 = getelementptr inbounds %struct.assembly_version, %struct.assembly_version* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.assembly_version*, %struct.assembly_version** %5, align 8
  %92 = getelementptr inbounds %struct.assembly_version, %struct.assembly_version* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %3, align 4
  br label %99

94:                                               ; preds = %70, %68, %57
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = call i32 @xmlstr2unicode(%struct.TYPE_4__* %95)
  store i32 %96, i32* %9, align 4
  %97 = call i32 @DPRINT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32* %9)
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %94, %76
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @xmlstr2unicode(%struct.TYPE_4__*) #1

declare dso_local i32 @DPRINT1(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
