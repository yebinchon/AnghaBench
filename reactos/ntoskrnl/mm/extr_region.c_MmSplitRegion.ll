; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/mm/extr_region.c_MmSplitRegion.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/mm/extr_region.c_MmSplitRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i8* }

@NonPagedPool = common dso_local global i32 0, align 4
@TAG_MM_REGION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__*, i64, i64, i32, i8*, i8*, i32, i32 (i32, i64, i32, i8*, i8*, i8*, i8*)*)* @MmSplitRegion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @MmSplitRegion(%struct.TYPE_6__* %0, i64 %1, i64 %2, i32 %3, i8* %4, i8* %5, i32 %6, i32 (i32, i64, i32, i8*, i8*, i8*, i8*)* %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32 (i32, i64, i32, i8*, i8*, i8*, i8*)*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 (i32, i64, i32, i8*, i8*, i8*, i8*)* %7, i32 (i32, i64, i32, i8*, i8*, i8*, i8*)** %17, align 8
  %21 = load i32, i32* @NonPagedPool, align 4
  %22 = load i32, i32* @TAG_MM_REGION, align 4
  %23 = call %struct.TYPE_6__* @ExAllocatePoolWithTag(i32 %21, i32 4, i32 %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %19, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  br label %156

27:                                               ; preds = %8
  %28 = load i32, i32* @NonPagedPool, align 4
  %29 = load i32, i32* @TAG_MM_REGION, align 4
  %30 = call %struct.TYPE_6__* @ExAllocatePoolWithTag(i32 %28, i32 4, i32 %29)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %18, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %32 = icmp eq %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %35 = load i32, i32* @TAG_MM_REGION, align 4
  %36 = call i32 @ExFreePoolWithTag(%struct.TYPE_6__* %34, i32 %35)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  br label %156

37:                                               ; preds = %27
  %38 = load i8*, i8** %14, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* %11, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load i64, i64* %12, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = ptrtoint i8* %50 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @min(i32 %57, i32 %58)
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = call i32 @InsertAfterEntry(i32* %64, i32* %66)
  %68 = load i32 (i32, i64, i32, i8*, i8*, i8*, i8*)*, i32 (i32, i64, i32, i8*, i8*, i8*, i8*)** %17, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i64, i64* %12, align 8
  %71 = load i32, i32* %20, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 %68(i32 %69, i64 %70, i32 %71, i8* %74, i8* %77, i8* %78, i8* %79)
  %81 = load i64, i64* %11, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  %88 = load i64, i64* %12, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = icmp ugt i8* %87, %92
  br i1 %93, label %94, label %128

94:                                               ; preds = %37
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load i64, i64* %11, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  %112 = load i64, i64* %12, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = ptrtoint i8* %111 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = call i32 @InsertAfterEntry(i32* %124, i32* %126)
  br label %132

128:                                              ; preds = %37
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %130 = load i32, i32* @TAG_MM_REGION, align 4
  %131 = call i32 @ExFreePoolWithTag(%struct.TYPE_6__* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %94
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* %12, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = call i32 @RemoveEntryList(i32* %138)
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %141 = load i32, i32* @TAG_MM_REGION, align 4
  %142 = call i32 @ExFreePoolWithTag(%struct.TYPE_6__* %140, i32 %141)
  br label %154

143:                                              ; preds = %132
  %144 = load i64, i64* %12, align 8
  %145 = inttoptr i64 %144 to i8*
  %146 = load i64, i64* %11, align 8
  %147 = inttoptr i64 %146 to i8*
  %148 = ptrtoint i8* %145 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = trunc i64 %150 to i32
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %143, %136
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %155, %struct.TYPE_6__** %9, align 8
  br label %156

156:                                              ; preds = %154, %33, %26
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %157
}

declare dso_local %struct.TYPE_6__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @InsertAfterEntry(i32*, i32*) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
