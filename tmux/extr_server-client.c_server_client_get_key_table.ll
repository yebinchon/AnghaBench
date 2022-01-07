; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_get_key_table.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_get_key_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.session* }
%struct.session = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"key-table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @server_client_get_key_table(%struct.client* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.client*, align 8
  %4 = alloca %struct.session*, align 8
  %5 = alloca i8*, align 8
  store %struct.client* %0, %struct.client** %3, align 8
  %6 = load %struct.client*, %struct.client** %3, align 8
  %7 = getelementptr inbounds %struct.client, %struct.client* %6, i32 0, i32 0
  %8 = load %struct.session*, %struct.session** %7, align 8
  store %struct.session* %8, %struct.session** %4, align 8
  %9 = load %struct.session*, %struct.session** %4, align 8
  %10 = icmp eq %struct.session* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.session*, %struct.session** %4, align 8
  %14 = getelementptr inbounds %struct.session, %struct.session* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @options_get_string(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %24

22:                                               ; preds = %12
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %2, align 8
  br label %24

24:                                               ; preds = %22, %21, %11
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

declare dso_local i8* @options_get_string(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
