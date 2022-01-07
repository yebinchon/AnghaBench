; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-stm.c_stm_newcopy.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-stm.c_stm_newcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_copy = type { i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stm_copy* (i8*, i32)* @stm_newcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stm_copy* @stm_newcopy(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm_copy*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.stm_copy* @skynet_malloc(i32 24)
  store %struct.stm_copy* %6, %struct.stm_copy** %5, align 8
  %7 = load %struct.stm_copy*, %struct.stm_copy** %5, align 8
  %8 = getelementptr inbounds %struct.stm_copy, %struct.stm_copy* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.stm_copy*, %struct.stm_copy** %5, align 8
  %11 = getelementptr inbounds %struct.stm_copy, %struct.stm_copy* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.stm_copy*, %struct.stm_copy** %5, align 8
  %14 = getelementptr inbounds %struct.stm_copy, %struct.stm_copy* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.stm_copy*, %struct.stm_copy** %5, align 8
  ret %struct.stm_copy* %15
}

declare dso_local %struct.stm_copy* @skynet_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
