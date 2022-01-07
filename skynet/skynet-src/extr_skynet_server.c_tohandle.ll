; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_tohandle.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_tohandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Can't convert %s to handle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skynet_context*, i8*)* @tohandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tohandle(%struct.skynet_context* %0, i8* %1) #0 {
  %3 = alloca %struct.skynet_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.skynet_context* %0, %struct.skynet_context** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 58
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = call i32 @strtoul(i8* %13, i32* null, i32 16)
  store i32 %14, i32* %5, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i32 @skynet_handle_findname(i8* %23)
  store i32 %24, i32* %5, align 4
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.skynet_context*, %struct.skynet_context** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @skynet_error(%struct.skynet_context* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @skynet_handle_findname(i8*) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
