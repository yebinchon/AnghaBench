; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_counter.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhpet = type { i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"vhpet_counter: uptime went backwards: %#llx to %#llx\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"vhpet_counter: nowptr must be NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhpet*, i32*)* @vhpet_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhpet_counter(%struct.vhpet* %0, i32* %1) #0 {
  %3 = alloca %struct.vhpet*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vhpet* %0, %struct.vhpet** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %9 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %12 = call i64 @vhpet_counter_enabled(%struct.vhpet* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = call i32 (...) @sbinuptime()
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %18 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %25 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %23, i8* %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.vhpet*, %struct.vhpet** %3, align 8
  %33 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %14
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %14
  br label %49

44:                                               ; preds = %2
  %45 = load i32*, i32** %4, align 8
  %46 = icmp eq i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @KASSERT(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %43
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @vhpet_counter_enabled(%struct.vhpet*) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
