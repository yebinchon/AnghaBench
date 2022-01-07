; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_run.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instance = type { i32 }
%struct.context = type { i32 }

@NC_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.instance*)* @nc_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nc_run(%struct.instance* %0) #0 {
  %2 = alloca %struct.instance*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.context*, align 8
  store %struct.instance* %0, %struct.instance** %2, align 8
  %5 = load %struct.instance*, %struct.instance** %2, align 8
  %6 = call %struct.context* @core_start(%struct.instance* %5)
  store %struct.context* %6, %struct.context** %4, align 8
  %7 = load %struct.context*, %struct.context** %4, align 8
  %8 = icmp eq %struct.context* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %22

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %18, %10
  %12 = load %struct.context*, %struct.context** %4, align 8
  %13 = call i64 @core_loop(%struct.context* %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @NC_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %19

18:                                               ; preds = %11
  br label %11

19:                                               ; preds = %17
  %20 = load %struct.context*, %struct.context** %4, align 8
  %21 = call i32 @core_stop(%struct.context* %20)
  br label %22

22:                                               ; preds = %19, %9
  ret void
}

declare dso_local %struct.context* @core_start(%struct.instance*) #1

declare dso_local i64 @core_loop(%struct.context*) #1

declare dso_local i32 @core_stop(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
