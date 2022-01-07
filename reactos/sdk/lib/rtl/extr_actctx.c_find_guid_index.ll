; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_guid_index.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_guid_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guid_index = type { i32 }
%struct.guidsection_header = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.guid_index* (%struct.guidsection_header*, i32*)* @find_guid_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.guid_index* @find_guid_index(%struct.guidsection_header* %0, i32* %1) #0 {
  %3 = alloca %struct.guidsection_header*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.guid_index*, align 8
  %6 = alloca %struct.guid_index*, align 8
  %7 = alloca i64, align 8
  store %struct.guidsection_header* %0, %struct.guidsection_header** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.guid_index* null, %struct.guid_index** %6, align 8
  %8 = load %struct.guidsection_header*, %struct.guidsection_header** %3, align 8
  %9 = bitcast %struct.guidsection_header* %8 to i32*
  %10 = load %struct.guidsection_header*, %struct.guidsection_header** %3, align 8
  %11 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  %15 = bitcast i32* %14 to %struct.guid_index*
  store %struct.guid_index* %15, %struct.guid_index** %5, align 8
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %33, %2
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.guidsection_header*, %struct.guidsection_header** %3, align 8
  %19 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.guid_index*, %struct.guid_index** %5, align 8
  %25 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %24, i32 0, i32 0
  %26 = call i32 @memcmp(i32* %23, i32* %25, i32 4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load %struct.guid_index*, %struct.guid_index** %5, align 8
  store %struct.guid_index* %29, %struct.guid_index** %6, align 8
  br label %36

30:                                               ; preds = %22
  %31 = load %struct.guid_index*, %struct.guid_index** %5, align 8
  %32 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %31, i32 1
  store %struct.guid_index* %32, %struct.guid_index** %5, align 8
  br label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %16

36:                                               ; preds = %28, %16
  %37 = load %struct.guid_index*, %struct.guid_index** %6, align 8
  ret %struct.guid_index* %37
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
