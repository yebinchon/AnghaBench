; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__alloc_matcher.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__alloc_matcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64, i64, i32, i64 }

@STB__DFA_UNDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* ()* @stb__alloc_matcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @stb__alloc_matcher() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = call i64 @stb_malloc(i32 0, i32 56)
  %3 = inttoptr i64 %2 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 7
  %8 = bitcast i32* %7 to i8**
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = call i32 @stb_arr_malloc(i8** %8, %struct.TYPE_5__* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @STB__DFA_UNDEF, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = bitcast i32* %21 to i8**
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = call i32 @stb_arr_malloc(i8** %22, %struct.TYPE_5__* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = bitcast i32* %26 to i8**
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %29 = call i32 @stb_arr_malloc(i8** %27, %struct.TYPE_5__* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = bitcast i32* %31 to i8**
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %34 = call i32 @stb_arr_malloc(i8** %32, %struct.TYPE_5__* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %36 = call i32 @stb__add_node(%struct.TYPE_5__* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %37
}

declare dso_local i64 @stb_malloc(i32, i32) #1

declare dso_local i32 @stb_arr_malloc(i8**, %struct.TYPE_5__*) #1

declare dso_local i32 @stb__add_node(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
