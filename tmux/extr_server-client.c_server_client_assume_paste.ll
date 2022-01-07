; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_assume_paste.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_assume_paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32, i32, i32, i32, i32 }
%struct.timeval = type { i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"assume-paste-time\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"session %s pasting (flag %d)\00", align 1
@SESSION_PASTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"session %s not pasting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.session*)* @server_client_assume_paste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_client_assume_paste(%struct.session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.session*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i32, align 4
  store %struct.session* %0, %struct.session** %3, align 8
  %6 = load %struct.session*, %struct.session** %3, align 8
  %7 = getelementptr inbounds %struct.session, %struct.session* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @options_get_number(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

12:                                               ; preds = %1
  %13 = load %struct.session*, %struct.session** %3, align 8
  %14 = getelementptr inbounds %struct.session, %struct.session* %13, i32 0, i32 3
  %15 = load %struct.session*, %struct.session** %3, align 8
  %16 = getelementptr inbounds %struct.session, %struct.session* %15, i32 0, i32 2
  %17 = call i32 @timersub(i32* %14, i32* %16, %struct.timeval* %4)
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, 1000
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %21
  %28 = load %struct.session*, %struct.session** %3, align 8
  %29 = getelementptr inbounds %struct.session, %struct.session* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.session*, %struct.session** %3, align 8
  %32 = getelementptr inbounds %struct.session, %struct.session* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SESSION_PASTING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %39)
  %41 = load %struct.session*, %struct.session** %3, align 8
  %42 = getelementptr inbounds %struct.session, %struct.session* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SESSION_PASTING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %65

48:                                               ; preds = %27
  %49 = load i32, i32* @SESSION_PASTING, align 4
  %50 = load %struct.session*, %struct.session** %3, align 8
  %51 = getelementptr inbounds %struct.session, %struct.session* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  store i32 0, i32* %2, align 4
  br label %65

54:                                               ; preds = %21, %12
  %55 = load %struct.session*, %struct.session** %3, align 8
  %56 = getelementptr inbounds %struct.session, %struct.session* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @SESSION_PASTING, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.session*, %struct.session** %3, align 8
  %62 = getelementptr inbounds %struct.session, %struct.session* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %54, %48, %47, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local i32 @timersub(i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @log_debug(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
