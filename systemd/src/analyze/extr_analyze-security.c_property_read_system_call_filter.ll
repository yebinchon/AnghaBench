; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-security.c_property_read_system_call_filter.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-security.c_property_read_system_call_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.security_info = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"bas\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@string_hash_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*, i8*)* @property_read_system_call_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_read_system_call_filter(i8* %0, i8* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.security_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.security_info*
  store %struct.security_info* %17, %struct.security_info** %12, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @assert(i8* %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @assert(i8* %20)
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @assert(i8* %22)
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @sd_bus_message_enter_container(i8* %24, i8 signext 114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %6, align 4
  br label %88

30:                                               ; preds = %5
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 (i8*, i8*, ...) @sd_bus_message_read(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %6, align 4
  br label %88

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.security_info*, %struct.security_info** %12, align 8
  %40 = getelementptr inbounds %struct.security_info, %struct.security_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @sd_bus_message_enter_container(i8* %41, i8 signext 97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %88

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %77, %47
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (i8*, i8*, ...) @sd_bus_message_read(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %15)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %88

55:                                               ; preds = %48
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %78

59:                                               ; preds = %55
  %60 = load %struct.security_info*, %struct.security_info** %12, align 8
  %61 = getelementptr inbounds %struct.security_info, %struct.security_info* %60, i32 0, i32 1
  %62 = call i32 @set_ensure_allocated(i32* %61, i32* @string_hash_ops)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %6, align 4
  br label %88

67:                                               ; preds = %59
  %68 = load %struct.security_info*, %struct.security_info** %12, align 8
  %69 = getelementptr inbounds %struct.security_info, %struct.security_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @set_put_strdup(i32 %70, i8* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %6, align 4
  br label %88

77:                                               ; preds = %67
  br label %48

78:                                               ; preds = %58
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @sd_bus_message_exit_container(i8* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %6, align 4
  br label %88

85:                                               ; preds = %78
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @sd_bus_message_exit_container(i8* %86)
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %85, %83, %75, %65, %53, %45, %35, %28
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @sd_bus_message_enter_container(i8*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_read(i8*, i8*, ...) #1

declare dso_local i32 @set_ensure_allocated(i32*, i32*) #1

declare dso_local i32 @set_put_strdup(i32, i8*) #1

declare dso_local i32 @sd_bus_message_exit_container(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
