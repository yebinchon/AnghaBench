; ModuleID = '/home/carl/AnghaBench/systemd/src/nss-mymachines/extr_nss-mymachines.c_count_addresses.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nss-mymachines/extr_nss-mymachines.c_count_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"iay\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ay\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @count_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_addresses(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @assert(i32* %11)
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @assert(i32* %13)
  br label %15

15:                                               ; preds = %49, %48, %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @sd_bus_message_enter_container(i32* %16, i8 signext 114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @sd_bus_message_read(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %67

26:                                               ; preds = %19
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @sd_bus_message_skip(i32* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %67

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @sd_bus_message_exit_container(i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %67

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @AF_UNSPEC, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %15

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %15

52:                                               ; preds = %15
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %67

57:                                               ; preds = %52
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @sd_bus_message_rewind(i32* %58, i32 0)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %62, %55, %38, %31, %24
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_enter_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_skip(i32*, i8*) #1

declare dso_local i32 @sd_bus_message_exit_container(i32*) #1

declare dso_local i32 @sd_bus_message_rewind(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
