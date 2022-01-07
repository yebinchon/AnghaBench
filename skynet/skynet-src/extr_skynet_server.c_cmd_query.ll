; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_query.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c":%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.skynet_context*, i8*)* @cmd_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cmd_query(%struct.skynet_context* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.skynet_context* %0, %struct.skynet_context** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 46
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = call i32 @skynet_handle_findname(i8* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %20 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %25 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  br label %29

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27, %2
  store i8* null, i8** %3, align 8
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local i32 @skynet_handle_findname(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
