; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_map_netif.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_map_netif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@SD_BUS_TYPE_INT32 = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i8*)* @map_netif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_netif(i32* %0, i8* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %12, align 8
  %18 = call i32 @assert_cc(i32 1)
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* @SD_BUS_TYPE_INT32, align 4
  %21 = call i32 @sd_bus_message_read_array(i32* %19, i32 %20, i8** %14, i64* %13)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %6, align 4
  br label %50

26:                                               ; preds = %5
  %27 = load i32, i32* %15, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @EBADMSG, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %50

32:                                               ; preds = %26
  %33 = load i64, i64* %13, align 8
  %34 = udiv i64 %33, 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @memdup(i8* %37, i64 %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %32
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %50

49:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %46, %29, %24
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @assert_cc(i32) #1

declare dso_local i32 @sd_bus_message_read_array(i32*, i32, i8**, i64*) #1

declare dso_local i32 @memdup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
