; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_checkadnsqueries.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_checkadnsqueries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treething = type { i64, i32* }

@ads = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @checkadnsqueries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkadnsqueries() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.treething*, align 8
  %5 = alloca i32, align 4
  br label %6

6:                                                ; preds = %17, %0
  store i64 0, i64* %1, align 8
  store i8* null, i8** %3, align 8
  store i32* null, i32** %2, align 8
  %7 = load i32, i32* @ads, align 4
  %8 = call i32 @adns_check(i32 %7, i64* %1, i32** %2, i8** %3)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ESRCH, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %6
  br label %30

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %3, align 8
  %24 = bitcast i8* %23 to %struct.treething*
  store %struct.treething* %24, %struct.treething** %4, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = load %struct.treething*, %struct.treething** %4, align 8
  %27 = getelementptr inbounds %struct.treething, %struct.treething* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.treething*, %struct.treething** %4, align 8
  %29 = getelementptr inbounds %struct.treething, %struct.treething* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %6

30:                                               ; preds = %16
  ret void
}

declare dso_local i32 @adns_check(i32, i64*, i32**, i8**) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
