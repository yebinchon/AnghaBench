; ModuleID = '/home/carl/AnghaBench/systemd/src/nss-resolve/extr_nss-resolve.c_count_addresses.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nss-resolve/extr_nss-resolve.c_count_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"(iiay)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"iiay\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ay\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i8**)* @count_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_addresses(i8** %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @assert(i8** %12)
  %14 = load i8**, i8*** %7, align 8
  %15 = call i32 @assert(i8** %14)
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @sd_bus_message_enter_container(i8** %16, i8 signext 97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %90

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %58, %57, %22
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @sd_bus_message_enter_container(i8** %24, i8 signext 114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = call i32 @assert_cc(i32 1)
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 (i8**, i8*, ...) @sd_bus_message_read(i8** %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %11, i32* %10)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %90

35:                                               ; preds = %27
  %36 = load i8**, i8*** %5, align 8
  %37 = call i32 @sd_bus_message_skip(i8** %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %90

42:                                               ; preds = %35
  %43 = load i8**, i8*** %5, align 8
  %44 = call i32 @sd_bus_message_exit_container(i8** %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %90

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @AF_UNSPEC, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %23

58:                                               ; preds = %53, %49
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %23

61:                                               ; preds = %23
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %90

66:                                               ; preds = %61
  %67 = load i8**, i8*** %5, align 8
  %68 = call i32 @sd_bus_message_exit_container(i8** %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %90

73:                                               ; preds = %66
  %74 = load i8**, i8*** %5, align 8
  %75 = load i8**, i8*** %7, align 8
  %76 = call i32 (i8**, i8*, ...) @sd_bus_message_read(i8** %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %90

81:                                               ; preds = %73
  %82 = load i8**, i8*** %5, align 8
  %83 = call i32 @sd_bus_message_rewind(i8** %82, i32 1)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %86, %79, %71, %64, %47, %40, %33, %20
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @sd_bus_message_enter_container(i8**, i8 signext, i8*) #1

declare dso_local i32 @assert_cc(i32) #1

declare dso_local i32 @sd_bus_message_read(i8**, i8*, ...) #1

declare dso_local i32 @sd_bus_message_skip(i8**, i8*) #1

declare dso_local i32 @sd_bus_message_exit_container(i8**) #1

declare dso_local i32 @sd_bus_message_rewind(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
