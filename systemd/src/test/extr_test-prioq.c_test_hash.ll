; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-prioq.c_test_hash.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-prioq.c_test_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }
%struct.siphash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test*, %struct.siphash*)* @test_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hash(%struct.test* %0, %struct.siphash* %1) #0 {
  %3 = alloca %struct.test*, align 8
  %4 = alloca %struct.siphash*, align 8
  store %struct.test* %0, %struct.test** %3, align 8
  store %struct.siphash* %1, %struct.siphash** %4, align 8
  %5 = load %struct.test*, %struct.test** %3, align 8
  %6 = getelementptr inbounds %struct.test, %struct.test* %5, i32 0, i32 0
  %7 = load %struct.siphash*, %struct.siphash** %4, align 8
  %8 = call i32 @siphash24_compress(i32* %6, i32 4, %struct.siphash* %7)
  ret void
}

declare dso_local i32 @siphash24_compress(i32*, i32, %struct.siphash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
