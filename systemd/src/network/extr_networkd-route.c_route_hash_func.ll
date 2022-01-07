; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-route.c_route_hash_func.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-route.c_route_hash_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.siphash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.siphash*)* @route_hash_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @route_hash_func(%struct.TYPE_4__* %0, %struct.siphash* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.siphash*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.siphash* %1, %struct.siphash** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_4__* %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.siphash*, %struct.siphash** %4, align 8
  %10 = call i32 @siphash24_compress(i32* %8, i32 4, %struct.siphash* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %87 [
    i32 129, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.siphash*, %struct.siphash** %4, align 8
  %18 = call i32 @siphash24_compress(i32* %16, i32 4, %struct.siphash* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @FAMILY_ADDRESS_SIZE(i32 %23)
  %25 = load %struct.siphash*, %struct.siphash** %4, align 8
  %26 = call i32 @siphash24_compress(i32* %20, i32 %24, %struct.siphash* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load %struct.siphash*, %struct.siphash** %4, align 8
  %30 = call i32 @siphash24_compress(i32* %28, i32 4, %struct.siphash* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @FAMILY_ADDRESS_SIZE(i32 %35)
  %37 = load %struct.siphash*, %struct.siphash** %4, align 8
  %38 = call i32 @siphash24_compress(i32* %32, i32 %36, %struct.siphash* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @FAMILY_ADDRESS_SIZE(i32 %43)
  %45 = load %struct.siphash*, %struct.siphash** %4, align 8
  %46 = call i32 @siphash24_compress(i32* %40, i32 %44, %struct.siphash* %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @FAMILY_ADDRESS_SIZE(i32 %51)
  %53 = load %struct.siphash*, %struct.siphash** %4, align 8
  %54 = call i32 @siphash24_compress(i32* %48, i32 %52, %struct.siphash* %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 7
  %57 = load %struct.siphash*, %struct.siphash** %4, align 8
  %58 = call i32 @siphash24_compress(i32* %56, i32 4, %struct.siphash* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 8
  %61 = load %struct.siphash*, %struct.siphash** %4, align 8
  %62 = call i32 @siphash24_compress(i32* %60, i32 4, %struct.siphash* %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 9
  %65 = load %struct.siphash*, %struct.siphash** %4, align 8
  %66 = call i32 @siphash24_compress(i32* %64, i32 4, %struct.siphash* %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 10
  %69 = load %struct.siphash*, %struct.siphash** %4, align 8
  %70 = call i32 @siphash24_compress(i32* %68, i32 4, %struct.siphash* %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 11
  %73 = load %struct.siphash*, %struct.siphash** %4, align 8
  %74 = call i32 @siphash24_compress(i32* %72, i32 4, %struct.siphash* %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 12
  %77 = load %struct.siphash*, %struct.siphash** %4, align 8
  %78 = call i32 @siphash24_compress(i32* %76, i32 4, %struct.siphash* %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 13
  %81 = load %struct.siphash*, %struct.siphash** %4, align 8
  %82 = call i32 @siphash24_compress(i32* %80, i32 4, %struct.siphash* %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 14
  %85 = load %struct.siphash*, %struct.siphash** %4, align 8
  %86 = call i32 @siphash24_compress(i32* %84, i32 4, %struct.siphash* %85)
  br label %88

87:                                               ; preds = %2
  br label %88

88:                                               ; preds = %87, %14
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @siphash24_compress(i32*, i32, %struct.siphash*) #1

declare dso_local i32 @FAMILY_ADDRESS_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
