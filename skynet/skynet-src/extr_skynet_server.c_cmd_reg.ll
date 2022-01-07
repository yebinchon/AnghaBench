; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_reg.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_cmd_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c":%x\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't register global name %s in C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.skynet_context*, i8*)* @cmd_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cmd_reg(%struct.skynet_context* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.skynet_context*, align 8
  %5 = alloca i8*, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %8, %2
  %15 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %16 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %19 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %23 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %3, align 8
  br label %42

25:                                               ; preds = %8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 46
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %33 = getelementptr inbounds %struct.skynet_context, %struct.skynet_context* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = call i8* @skynet_handle_namehandle(i32 %34, i8* %36)
  store i8* %37, i8** %3, align 8
  br label %42

38:                                               ; preds = %25
  %39 = load %struct.skynet_context*, %struct.skynet_context** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @skynet_error(%struct.skynet_context* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i8* null, i8** %3, align 8
  br label %42

42:                                               ; preds = %38, %31, %14
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @skynet_handle_namehandle(i32, i8*) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
