; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_nvpair64_to_stat_array.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_nvpair64_to_stat_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat_array = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.stat_array*)* @nvpair64_to_stat_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvpair64_to_stat_array(i32* %0, i8* %1, %struct.stat_array* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat_array*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.stat_array* %2, %struct.stat_array** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @nvlist_lookup_nvpair(i32* %9, i8* %10, i32** %7)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @verify(i32 %13)
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @nvpair_type(i32* %15)
  switch i32 %16, label %35 [
    i32 128, label %17
    i32 129, label %24
  ]

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.stat_array*, %struct.stat_array** %6, align 8
  %20 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %19, i32 0, i32 2
  %21 = load %struct.stat_array*, %struct.stat_array** %6, align 8
  %22 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %21, i32 0, i32 0
  %23 = call i32 @nvpair_value_uint64_array(i32* %18, i32** %20, i32* %22)
  store i32 %23, i32* %8, align 4
  br label %37

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.stat_array*, %struct.stat_array** %6, align 8
  %27 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %26, i32 0, i32 1
  %28 = call i32 @nvpair_value_uint64(i32* %25, i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.stat_array*, %struct.stat_array** %6, align 8
  %30 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %29, i32 0, i32 1
  %31 = load %struct.stat_array*, %struct.stat_array** %6, align 8
  %32 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.stat_array*, %struct.stat_array** %6, align 8
  %34 = getelementptr inbounds %struct.stat_array, %struct.stat_array* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %24, %17
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvpair(i32*, i8*, i32**) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @nvpair_value_uint64_array(i32*, i32**, i32*) #1

declare dso_local i32 @nvpair_value_uint64(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
