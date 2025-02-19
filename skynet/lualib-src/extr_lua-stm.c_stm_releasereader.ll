; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-stm.c_stm_releasereader.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-stm.c_stm_releasereader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_object = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm_object*)* @stm_releasereader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm_releasereader(%struct.stm_object* %0) #0 {
  %2 = alloca %struct.stm_object*, align 8
  store %struct.stm_object* %0, %struct.stm_object** %2, align 8
  %3 = load %struct.stm_object*, %struct.stm_object** %2, align 8
  %4 = getelementptr inbounds %struct.stm_object, %struct.stm_object* %3, i32 0, i32 0
  %5 = call i32 @rwlock_rlock(i32* %4)
  %6 = load %struct.stm_object*, %struct.stm_object** %2, align 8
  %7 = getelementptr inbounds %struct.stm_object, %struct.stm_object* %6, i32 0, i32 2
  %8 = call i64 @ATOM_DEC(i32* %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.stm_object*, %struct.stm_object** %2, align 8
  %12 = getelementptr inbounds %struct.stm_object, %struct.stm_object* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.stm_object*, %struct.stm_object** %2, align 8
  %18 = call i32 @skynet_free(%struct.stm_object* %17)
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.stm_object*, %struct.stm_object** %2, align 8
  %21 = getelementptr inbounds %struct.stm_object, %struct.stm_object* %20, i32 0, i32 0
  %22 = call i32 @rwlock_runlock(i32* %21)
  br label %23

23:                                               ; preds = %19, %10
  ret void
}

declare dso_local i32 @rwlock_rlock(i32*) #1

declare dso_local i64 @ATOM_DEC(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @skynet_free(%struct.stm_object*) #1

declare dso_local i32 @rwlock_runlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
