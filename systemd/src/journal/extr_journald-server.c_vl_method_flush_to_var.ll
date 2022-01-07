; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_vl_method_flush_to_var.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_vl_method_flush_to_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"Received client request to flush runtime journal.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i8*)* @vl_method_flush_to_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vl_method_flush_to_var(i32* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @json_variant_elements(i32* %17)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @varlink_error_invalid_parameter(i32* %21, i32* %22)
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %4
  %25 = call i32 @log_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @server_full_flush(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @varlink_reply(i32* %28, i32* null)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @json_variant_elements(i32*) #1

declare dso_local i32 @varlink_error_invalid_parameter(i32*, i32*) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i32 @server_full_flush(i32*) #1

declare dso_local i32 @varlink_reply(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
