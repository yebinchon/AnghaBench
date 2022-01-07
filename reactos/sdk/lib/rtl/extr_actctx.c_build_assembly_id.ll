; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_assembly_id.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_assembly_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly_identity = type { i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@build_assembly_id.archW = internal constant [24 x i8] c",processorArchitecture=\00", align 16
@build_assembly_id.public_keyW = internal constant [17 x i8] c",publicKeyToken=\00", align 16
@build_assembly_id.typeW2 = internal constant [7 x i8] c",type=\00", align 1
@build_assembly_id.versionW2 = internal constant [10 x i8] c",version=\00", align 1
@version_formatW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.assembly_identity*)* @build_assembly_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_assembly_id(%struct.assembly_identity* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.assembly_identity*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.assembly_identity* %0, %struct.assembly_identity** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %8 = load i32, i32* @version_formatW, align 4
  %9 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %10 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %14 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %18 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %22 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @sprintfW(i8* %7, i32 %8, i32 %12, i32 %16, i32 %20, i32 %24)
  %26 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %27 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %32 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strlenW(i8* %33)
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 1
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %30, %1
  %42 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %43 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = call i32 @strlenW(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @build_assembly_id.archW, i64 0, i64 0))
  %48 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %49 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strlenW(i8* %50)
  %52 = add nsw i32 %47, %51
  %53 = add nsw i32 %52, 2
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %46, %41
  %57 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %58 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = call i32 @strlenW(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @build_assembly_id.public_keyW, i64 0, i64 0))
  %63 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %64 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlenW(i8* %65)
  %67 = add nsw i32 %62, %66
  %68 = add nsw i32 %67, 2
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %61, %56
  %72 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %73 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = call i32 @strlenW(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @build_assembly_id.typeW2, i64 0, i64 0))
  %78 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %79 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strlenW(i8* %80)
  %82 = add nsw i32 %77, %81
  %83 = add nsw i32 %82, 2
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %76, %71
  %87 = call i32 @strlenW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @build_assembly_id.versionW2, i64 0, i64 0))
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %89 = call i32 @strlenW(i8* %88)
  %90 = add nsw i32 %87, %89
  %91 = add nsw i32 %90, 2
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = call i32 (...) @RtlGetProcessHeap()
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 1
  %99 = trunc i64 %98 to i32
  %100 = call i8* @RtlAllocateHeap(i32 %94, i32 0, i32 %99)
  store i8* %100, i8** %5, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %86
  store i8* null, i8** %2, align 8
  br label %136

103:                                              ; preds = %86
  %104 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %105 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i8*, i8** %5, align 8
  %110 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %111 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strcpyW(i8* %109, i8* %112)
  br label %116

114:                                              ; preds = %103
  %115 = load i8*, i8** %5, align 8
  store i8 0, i8* %115, align 1
  br label %116

116:                                              ; preds = %114, %108
  %117 = load i8*, i8** %5, align 8
  %118 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %119 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @append_string(i8* %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @build_assembly_id.archW, i64 0, i64 0), i8* %120)
  %122 = load i8*, i8** %5, align 8
  %123 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %124 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @append_string(i8* %122, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @build_assembly_id.public_keyW, i64 0, i64 0), i8* %125)
  %127 = load i8*, i8** %5, align 8
  %128 = load %struct.assembly_identity*, %struct.assembly_identity** %3, align 8
  %129 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @append_string(i8* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @build_assembly_id.typeW2, i64 0, i64 0), i8* %130)
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %134 = call i32 @append_string(i8* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @build_assembly_id.versionW2, i64 0, i64 0), i8* %133)
  %135 = load i8*, i8** %5, align 8
  store i8* %135, i8** %2, align 8
  br label %136

136:                                              ; preds = %116, %102
  %137 = load i8*, i8** %2, align 8
  ret i8* %137
}

declare dso_local i32 @sprintfW(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @append_string(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
