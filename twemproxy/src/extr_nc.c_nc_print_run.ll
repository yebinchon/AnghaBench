; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_print_run.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_print_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instance = type { i32 }
%struct.utsname = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"nutcracker-%s started on pid %d\00", align 1
@NC_VERSION_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"nutcracker-%s built for %s %s %s started on pid %d\00", align 1
@.str.2 = private unnamed_addr constant [132 x i8] c"run, rabbit run / dig that hole, forget the sun / and when at last the work is done / don't sit down / it's time to dig another one\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.instance*)* @nc_print_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nc_print_run(%struct.instance* %0) #0 {
  %2 = alloca %struct.instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.utsname, align 4
  store %struct.instance* %0, %struct.instance** %2, align 8
  %5 = call i32 @uname(%struct.utsname* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @NC_VERSION_STRING, align 4
  %10 = load %struct.instance*, %struct.instance** %2, align 8
  %11 = getelementptr inbounds %struct.instance, %struct.instance* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @loga(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  br label %26

14:                                               ; preds = %1
  %15 = load i32, i32* @NC_VERSION_STRING, align 4
  %16 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.instance*, %struct.instance** %2, align 8
  %23 = getelementptr inbounds %struct.instance, %struct.instance* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @loga(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %17, i32 %19, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %14, %8
  %27 = call i32 (i8*, ...) @loga(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @uname(%struct.utsname*) #1

declare dso_local i32 @loga(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
