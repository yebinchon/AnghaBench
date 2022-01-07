; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_types.c_search_sortlist.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_types.c_search_sortlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.sortlist* }
%struct.sortlist = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.in_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @search_sortlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_sortlist(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.sortlist*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.sortlist*, %struct.sortlist** %9, align 8
  store %struct.sortlist* %10, %struct.sortlist** %5, align 8
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sortlist*, %struct.sortlist** %5, align 8
  %21 = getelementptr inbounds %struct.sortlist, %struct.sortlist* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %19, %23
  %25 = load %struct.sortlist*, %struct.sortlist** %5, align 8
  %26 = getelementptr inbounds %struct.sortlist, %struct.sortlist* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %24, %28
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %17, %11
  %32 = phi i1 [ false, %11 ], [ %30, %17 ]
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load %struct.sortlist*, %struct.sortlist** %5, align 8
  %38 = getelementptr inbounds %struct.sortlist, %struct.sortlist* %37, i32 1
  store %struct.sortlist* %38, %struct.sortlist** %5, align 8
  br label %11

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
