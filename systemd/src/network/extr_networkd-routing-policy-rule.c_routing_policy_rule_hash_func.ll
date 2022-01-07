; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-routing-policy-rule.c_routing_policy_rule_hash_func.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-routing-policy-rule.c_routing_policy_rule_hash_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.siphash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.siphash*)* @routing_policy_rule_hash_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @routing_policy_rule_hash_func(%struct.TYPE_4__* %0, %struct.siphash* %1) #0 {
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
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %106 [
    i32 129, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @FAMILY_ADDRESS_SIZE(i32 %19)
  %21 = load %struct.siphash*, %struct.siphash** %4, align 8
  %22 = call i32 @siphash24_compress(i32* %16, i32 %20, %struct.siphash* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load %struct.siphash*, %struct.siphash** %4, align 8
  %26 = call i32 @siphash24_compress(i32* %24, i32 4, %struct.siphash* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @FAMILY_ADDRESS_SIZE(i32 %31)
  %33 = load %struct.siphash*, %struct.siphash** %4, align 8
  %34 = call i32 @siphash24_compress(i32* %28, i32 %32, %struct.siphash* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load %struct.siphash*, %struct.siphash** %4, align 8
  %38 = call i32 @siphash24_compress(i32* %36, i32 4, %struct.siphash* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 15
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.siphash*, %struct.siphash** %4, align 8
  %43 = call i32 @siphash24_compress_boolean(i32 %41, %struct.siphash* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  %46 = load %struct.siphash*, %struct.siphash** %4, align 8
  %47 = call i32 @siphash24_compress(i32* %45, i32 4, %struct.siphash* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 6
  %50 = load %struct.siphash*, %struct.siphash** %4, align 8
  %51 = call i32 @siphash24_compress(i32* %49, i32 4, %struct.siphash* %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 7
  %54 = load %struct.siphash*, %struct.siphash** %4, align 8
  %55 = call i32 @siphash24_compress(i32* %53, i32 4, %struct.siphash* %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 8
  %58 = load %struct.siphash*, %struct.siphash** %4, align 8
  %59 = call i32 @siphash24_compress(i32* %57, i32 4, %struct.siphash* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 9
  %62 = load %struct.siphash*, %struct.siphash** %4, align 8
  %63 = call i32 @siphash24_compress(i32* %61, i32 4, %struct.siphash* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 10
  %66 = load %struct.siphash*, %struct.siphash** %4, align 8
  %67 = call i32 @siphash24_compress(i32* %65, i32 4, %struct.siphash* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 11
  %70 = load %struct.siphash*, %struct.siphash** %4, align 8
  %71 = call i32 @siphash24_compress(i32* %69, i32 4, %struct.siphash* %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 12
  %74 = load %struct.siphash*, %struct.siphash** %4, align 8
  %75 = call i32 @siphash24_compress(i32* %73, i32 4, %struct.siphash* %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 13
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %14
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 13
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 13
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @strlen(i32* %86)
  %88 = load %struct.siphash*, %struct.siphash** %4, align 8
  %89 = call i32 @siphash24_compress(i32* %83, i32 %87, %struct.siphash* %88)
  br label %90

90:                                               ; preds = %80, %14
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 14
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 14
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 14
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @strlen(i32* %101)
  %103 = load %struct.siphash*, %struct.siphash** %4, align 8
  %104 = call i32 @siphash24_compress(i32* %98, i32 %102, %struct.siphash* %103)
  br label %105

105:                                              ; preds = %95, %90
  br label %107

106:                                              ; preds = %2
  br label %107

107:                                              ; preds = %106, %105
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @siphash24_compress(i32*, i32, %struct.siphash*) #1

declare dso_local i32 @FAMILY_ADDRESS_SIZE(i32) #1

declare dso_local i32 @siphash24_compress_boolean(i32, %struct.siphash*) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
