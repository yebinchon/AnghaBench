; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_names_mac.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_names_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netnames = type { i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"addr_assign_type\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%x:%x:%x:%x:%x:%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.netnames*)* @names_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @names_mac(i32* %0, %struct.netnames* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.netnames*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.netnames* %1, %struct.netnames** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @sd_device_get_sysattr_value(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %14, align 4
  store i32 %20, i32* %3, align 4
  br label %105

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strtoul(i8* %22, i32* null, i32 0)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  switch i64 %24, label %28 [
    i64 128, label %25
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %105

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @sd_device_get_sysattr_value(i32* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %3, align 4
  br label %105

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strtoul(i8* %37, i32* null, i32 0)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %105

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @sd_device_get_sysattr_value(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %6)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %3, align 4
  br label %105

49:                                               ; preds = %42
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @sscanf(i8* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13)
  %52 = icmp ne i32 %51, 6
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %105

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add i32 %57, %58
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %61, %62
  %64 = load i32, i32* %12, align 4
  %65 = add i32 %63, %64
  %66 = load i32, i32* %13, align 4
  %67 = add i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %105

72:                                               ; preds = %56
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.netnames*, %struct.netnames** %5, align 8
  %75 = getelementptr inbounds %struct.netnames, %struct.netnames* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.netnames*, %struct.netnames** %5, align 8
  %80 = getelementptr inbounds %struct.netnames, %struct.netnames* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.netnames*, %struct.netnames** %5, align 8
  %85 = getelementptr inbounds %struct.netnames, %struct.netnames* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.netnames*, %struct.netnames** %5, align 8
  %90 = getelementptr inbounds %struct.netnames, %struct.netnames* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32 %88, i32* %92, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.netnames*, %struct.netnames** %5, align 8
  %95 = getelementptr inbounds %struct.netnames, %struct.netnames* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.netnames*, %struct.netnames** %5, align 8
  %100 = getelementptr inbounds %struct.netnames, %struct.netnames* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  store i32 %98, i32* %102, align 4
  %103 = load %struct.netnames*, %struct.netnames** %5, align 8
  %104 = getelementptr inbounds %struct.netnames, %struct.netnames* %103, i32 0, i32 1
  store i32 1, i32* %104, align 8
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %72, %69, %53, %47, %41, %34, %25, %19
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @sd_device_get_sysattr_value(i32*, i8*, i8**) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
