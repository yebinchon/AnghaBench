; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_write_progid_record.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_write_progid_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strsection_header = type { i32 }
%struct.string_index = type { i32, i32, i32, i32, i32, i32 }
%struct.progidredirect_data = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@HASH_STRING_ALGORITHM_X65599 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strsection_header*, i64*, i32*, %struct.string_index**, i32*, i32*, i32)* @write_progid_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_progid_record(%struct.strsection_header* %0, i64* %1, i32* %2, %struct.string_index** %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.strsection_header*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.string_index**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.progidredirect_data*, align 8
  %16 = alloca %struct.TYPE_4__, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  store %struct.strsection_header* %0, %struct.strsection_header** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.string_index** %3, %struct.string_index*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load i64*, i64** %9, align 8
  %20 = call i32 @RtlInitUnicodeString(%struct.TYPE_4__* %16, i64* %19)
  %21 = load i32, i32* @TRUE, align 4
  %22 = load i32, i32* @HASH_STRING_ALGORITHM_X65599, align 4
  %23 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %24 = load %struct.string_index*, %struct.string_index** %23, align 8
  %25 = getelementptr inbounds %struct.string_index, %struct.string_index* %24, i32 0, i32 5
  %26 = call i32 @RtlHashUnicodeString(%struct.TYPE_4__* %16, i32 %21, i32 %22, i32* %25)
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %30 = load %struct.string_index*, %struct.string_index** %29, align 8
  %31 = getelementptr inbounds %struct.string_index, %struct.string_index* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %35 = load %struct.string_index*, %struct.string_index** %34, align 8
  %36 = getelementptr inbounds %struct.string_index, %struct.string_index* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %38 = load %struct.string_index*, %struct.string_index** %37, align 8
  %39 = getelementptr inbounds %struct.string_index, %struct.string_index* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @aligned_string_len(i32 %42)
  %44 = add nsw i32 %40, %43
  %45 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %46 = load %struct.string_index*, %struct.string_index** %45, align 8
  %47 = getelementptr inbounds %struct.string_index, %struct.string_index* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %49 = load %struct.string_index*, %struct.string_index** %48, align 8
  %50 = getelementptr inbounds %struct.string_index, %struct.string_index* %49, i32 0, i32 3
  store i32 16, i32* %50, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %53 = load %struct.string_index*, %struct.string_index** %52, align 8
  %54 = getelementptr inbounds %struct.string_index, %struct.string_index* %53, i32 0, i32 4
  store i32 %51, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @aligned_string_len(i32 %56)
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load %struct.strsection_header*, %struct.strsection_header** %8, align 8
  %62 = bitcast %struct.strsection_header* %61 to i32*
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = bitcast i32* %66 to %struct.progidredirect_data*
  store %struct.progidredirect_data* %67, %struct.progidredirect_data** %15, align 8
  %68 = load %struct.progidredirect_data*, %struct.progidredirect_data** %15, align 8
  %69 = getelementptr inbounds %struct.progidredirect_data, %struct.progidredirect_data* %68, i32 0, i32 0
  store i32 16, i32* %69, align 8
  %70 = load %struct.progidredirect_data*, %struct.progidredirect_data** %15, align 8
  %71 = getelementptr inbounds %struct.progidredirect_data, %struct.progidredirect_data* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.progidredirect_data*, %struct.progidredirect_data** %15, align 8
  %75 = getelementptr inbounds %struct.progidredirect_data, %struct.progidredirect_data* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.strsection_header*, %struct.strsection_header** %8, align 8
  %77 = bitcast %struct.strsection_header* %76 to i32*
  %78 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %79 = load %struct.string_index*, %struct.string_index** %78, align 8
  %80 = getelementptr inbounds %struct.string_index, %struct.string_index* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  %84 = bitcast i32* %83 to i64*
  store i64* %84, i64** %18, align 8
  %85 = load i64*, i64** %18, align 8
  %86 = load i64*, i64** %9, align 8
  %87 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %88 = load %struct.string_index*, %struct.string_index** %87, align 8
  %89 = getelementptr inbounds %struct.string_index, %struct.string_index* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @memcpy(i64* %85, i64* %86, i32 %90)
  %92 = load i64*, i64** %18, align 8
  %93 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %94 = load %struct.string_index*, %struct.string_index** %93, align 8
  %95 = getelementptr inbounds %struct.string_index, %struct.string_index* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = udiv i64 %97, 8
  %99 = getelementptr inbounds i64, i64* %92, i64 %98
  store i64 0, i64* %99, align 8
  %100 = load %struct.strsection_header*, %struct.strsection_header** %8, align 8
  %101 = bitcast %struct.strsection_header* %100 to i32*
  %102 = load %struct.progidredirect_data*, %struct.progidredirect_data** %15, align 8
  %103 = getelementptr inbounds %struct.progidredirect_data, %struct.progidredirect_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  store i32* %106, i32** %17, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %17, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 %112, 4
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  %115 = load %struct.progidredirect_data*, %struct.progidredirect_data** %15, align 8
  %116 = getelementptr inbounds %struct.progidredirect_data, %struct.progidredirect_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %117
  store i32 %120, i32* %118, align 4
  %121 = load %struct.string_index**, %struct.string_index*** %11, align 8
  %122 = load %struct.string_index*, %struct.string_index** %121, align 8
  %123 = getelementptr inbounds %struct.string_index, %struct.string_index* %122, i64 1
  store %struct.string_index* %123, %struct.string_index** %121, align 8
  ret void
}

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_4__*, i64*) #1

declare dso_local i32 @RtlHashUnicodeString(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local i32 @aligned_string_len(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
