; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_gettable.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_gettable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32 }
%struct.document = type { i64*, i32 }

@INVALID_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.table* (%struct.document*, i32)* @gettable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.table* @gettable(%struct.document* %0, i32 %1) #0 {
  %3 = alloca %struct.table*, align 8
  %4 = alloca %struct.document*, align 8
  %5 = alloca i32, align 4
  store %struct.document* %0, %struct.document** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.document*, %struct.document** %4, align 8
  %7 = getelementptr inbounds %struct.document, %struct.document* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @INVALID_OFFSET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.table* null, %struct.table** %3, align 8
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.document*, %struct.document** %4, align 8
  %18 = bitcast %struct.document* %17 to i8*
  %19 = getelementptr inbounds i8, i8* %18, i64 4
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  %21 = load %struct.document*, %struct.document** %4, align 8
  %22 = getelementptr inbounds %struct.document, %struct.document* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  %27 = load %struct.document*, %struct.document** %4, align 8
  %28 = getelementptr inbounds %struct.document, %struct.document* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %26, i64 %33
  %35 = bitcast i8* %34 to %struct.table*
  store %struct.table* %35, %struct.table** %3, align 8
  br label %36

36:                                               ; preds = %16, %15
  %37 = load %struct.table*, %struct.table** %3, align 8
  ret %struct.table* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
