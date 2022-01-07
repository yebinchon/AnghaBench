; ModuleID = '/home/carl/AnghaBench/systemd/src/timedate/extr_timedatectl.c_map_server_address.c'
source_filename = "/home/carl/AnghaBench/systemd/src/timedate/extr_timedatectl.c_map_server_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"iay\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown address family %i\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid address size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i8*)* @map_server_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_server_address(i32* %0, i8* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to i8**
  store i8** %18, i8*** %12, align 8
  %19 = load i8**, i8*** %12, align 8
  %20 = call i32 @assert(i8** %19)
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @sd_bus_message_enter_container(i32* %21, i8 signext 114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %6, align 4
  br label %90

27:                                               ; preds = %5
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @sd_bus_message_read(i32* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %6, align 4
  br label %90

34:                                               ; preds = %27
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @sd_bus_message_read_array(i32* %35, i8 signext 121, i8** %13, i64* %16)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %6, align 4
  br label %90

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @sd_bus_message_exit_container(i32* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %6, align 4
  br label %90

48:                                               ; preds = %41
  %49 = load i64, i64* %16, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @AF_UNSPEC, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i8**, i8*** %12, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @mfree(i8* %57)
  %59 = load i8**, i8*** %12, align 8
  store i8* %58, i8** %59, align 8
  store i32 0, i32* %6, align 4
  br label %90

60:                                               ; preds = %51, %48
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @AF_INET, align 4
  %63 = load i32, i32* @AF_INET6, align 4
  %64 = call i32 @IN_SET(i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  %68 = call i32 @SYNTHETIC_ERRNO(i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = call i32 (i32, i8*, ...) @log_error_errno(i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store i32 %70, i32* %6, align 4
  br label %90

71:                                               ; preds = %60
  %72 = load i64, i64* %16, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i64 @FAMILY_ADDRESS_SIZE(i32 %73)
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @EINVAL, align 4
  %78 = call i32 @SYNTHETIC_ERRNO(i32 %77)
  %79 = call i32 (i32, i8*, ...) @log_error_errno(i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 %79, i32* %6, align 4
  br label %90

80:                                               ; preds = %71
  %81 = load i32, i32* %14, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = load i8**, i8*** %12, align 8
  %84 = call i32 @in_addr_to_string(i32 %81, i8* %82, i8** %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %6, align 4
  br label %90

89:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %87, %76, %66, %55, %46, %39, %32, %25
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @sd_bus_message_enter_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_read_array(i32*, i8 signext, i8**, i64*) #1

declare dso_local i32 @sd_bus_message_exit_container(i32*) #1

declare dso_local i8* @mfree(i8*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i64 @FAMILY_ADDRESS_SIZE(i32) #1

declare dso_local i32 @in_addr_to_string(i32, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
