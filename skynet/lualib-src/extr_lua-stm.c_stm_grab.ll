; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-stm.c_stm_grab.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-stm.c_stm_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_object = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm_object*)* @stm_grab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm_grab(%struct.stm_object* %0) #0 {
  %2 = alloca %struct.stm_object*, align 8
  %3 = alloca i32, align 4
  store %struct.stm_object* %0, %struct.stm_object** %2, align 8
  %4 = load %struct.stm_object*, %struct.stm_object** %2, align 8
  %5 = getelementptr inbounds %struct.stm_object, %struct.stm_object* %4, i32 0, i32 0
  %6 = call i32 @rwlock_rlock(i32* %5)
  %7 = load %struct.stm_object*, %struct.stm_object** %2, align 8
  %8 = getelementptr inbounds %struct.stm_object, %struct.stm_object* %7, i32 0, i32 1
  %9 = call i32 @ATOM_FINC(i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.stm_object*, %struct.stm_object** %2, align 8
  %11 = getelementptr inbounds %struct.stm_object, %struct.stm_object* %10, i32 0, i32 0
  %12 = call i32 @rwlock_runlock(i32* %11)
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  ret void
}

declare dso_local i32 @rwlock_rlock(i32*) #1

declare dso_local i32 @ATOM_FINC(i32*) #1

declare dso_local i32 @rwlock_runlock(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
