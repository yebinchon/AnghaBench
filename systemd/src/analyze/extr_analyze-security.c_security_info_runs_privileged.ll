; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-security.c_security_info_runs_privileged.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-security.c_security_info_runs_privileged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.security_info = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.security_info*)* @security_info_runs_privileged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @security_info_runs_privileged(%struct.security_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.security_info*, align 8
  store %struct.security_info* %0, %struct.security_info** %3, align 8
  %4 = load %struct.security_info*, %struct.security_info** %3, align 8
  %5 = call i32 @assert(%struct.security_info* %4)
  %6 = load %struct.security_info*, %struct.security_info** %3, align 8
  %7 = getelementptr inbounds %struct.security_info, %struct.security_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @STRPTR_IN_SET(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.security_info*, %struct.security_info** %3, align 8
  %14 = getelementptr inbounds %struct.security_info, %struct.security_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %23

18:                                               ; preds = %12
  %19 = load %struct.security_info*, %struct.security_info** %3, align 8
  %20 = getelementptr inbounds %struct.security_info, %struct.security_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @isempty(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %17, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @assert(%struct.security_info*) #1

declare dso_local i64 @STRPTR_IN_SET(i32, i8*, i8*) #1

declare dso_local i32 @isempty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
