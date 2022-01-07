; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_assembly_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_assembly_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly_identity = type { i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@build_assembly_dir.undW = internal constant [2 x i8] c"_\00", align 1
@build_assembly_dir.noneW = internal constant [5 x i8] c"none\00", align 1
@build_assembly_dir.mskeyW = internal constant [9 x i8] c"deadbeef\00", align 1
@version_formatW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.assembly_identity*)* @build_assembly_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_assembly_dir(%struct.assembly_identity* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.assembly_identity*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.assembly_identity* %0, %struct.assembly_identity** %3, align 8
  %10 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %11 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %16 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i8* [ %17, %14 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @build_assembly_dir.noneW, i64 0, i64 0), %18 ]
  store i8* %20, i8** %4, align 8
  %21 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %22 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %27 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @build_assembly_dir.noneW, i64 0, i64 0), %29 ]
  store i8* %31, i8** %5, align 8
  %32 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %33 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %38 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  br label %41

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i8* [ %39, %36 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @build_assembly_dir.noneW, i64 0, i64 0), %40 ]
  store i8* %42, i8** %6, align 8
  %43 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %44 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %49 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  br label %52

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i8* [ %50, %47 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @build_assembly_dir.noneW, i64 0, i64 0), %51 ]
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @strlenW(i8* %54)
  %56 = add nsw i32 %55, 1
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strlenW(i8* %57)
  %59 = add nsw i32 %56, %58
  %60 = add nsw i32 %59, 1
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @strlenW(i8* %61)
  %63 = add nsw i32 %60, %62
  %64 = add nsw i32 %63, 24
  %65 = add nsw i32 %64, 1
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strlenW(i8* %66)
  %68 = add nsw i32 %65, %67
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 1
  %72 = add i64 %71, 9
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %8, align 4
  %74 = call i32 (...) @RtlGetProcessHeap()
  %75 = load i32, i32* %8, align 4
  %76 = call i8* @RtlAllocateHeap(i32 %74, i32 0, i32 %75)
  store i8* %76, i8** %9, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %52
  store i8* null, i8** %2, align 8
  br label %128

79:                                               ; preds = %52
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @strcpyW(i8* %80, i8* %81)
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @strcatW(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_assembly_dir.undW, i64 0, i64 0))
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @strcatW(i8* %85, i8* %86)
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @strcatW(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_assembly_dir.undW, i64 0, i64 0))
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @strcatW(i8* %90, i8* %91)
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @strcatW(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_assembly_dir.undW, i64 0, i64 0))
  %95 = load i8*, i8** %9, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @strlenW(i8* %96)
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = load i32, i32* @version_formatW, align 4
  %101 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %102 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %106 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %110 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %114 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @sprintfW(i8* %99, i32 %100, i32 %104, i32 %108, i32 %112, i32 %116)
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @strcatW(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_assembly_dir.undW, i64 0, i64 0))
  %120 = load i8*, i8** %9, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @strcatW(i8* %120, i8* %121)
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @strcatW(i8* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_assembly_dir.undW, i64 0, i64 0))
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 @strcatW(i8* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @build_assembly_dir.mskeyW, i64 0, i64 0))
  %127 = load i8*, i8** %9, align 8
  store i8* %127, i8** %2, align 8
  br label %128

128:                                              ; preds = %79, %78
  %129 = load i8*, i8** %2, align 8
  ret i8* %129
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @strcatW(i8*, i8*) #1

declare dso_local i32 @sprintfW(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
