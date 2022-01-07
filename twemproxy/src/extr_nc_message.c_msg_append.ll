; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_append.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_message.c_msg_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32 }
%struct.mbuf = type { i32 }

@NC_ENOMEM = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msg_append(%struct.msg* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mbuf*, align 8
  store %struct.msg* %0, %struct.msg** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i64 (...) @mbuf_data_size()
  %11 = icmp ule i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.msg*, %struct.msg** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call %struct.mbuf* @msg_ensure_mbuf(%struct.msg* %14, i64 %15)
  store %struct.mbuf* %16, %struct.mbuf** %8, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %18 = icmp eq %struct.mbuf* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %20, i32* %4, align 4
  br label %40

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %24 = call i64 @mbuf_size(%struct.mbuf* %23)
  %25 = icmp ule i64 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @mbuf_copy(%struct.mbuf* %28, i32* %29, i64 %30)
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.msg*, %struct.msg** %5, align 8
  %34 = getelementptr inbounds %struct.msg, %struct.msg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load i32, i32* @NC_OK, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %21, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @mbuf_data_size(...) #1

declare dso_local %struct.mbuf* @msg_ensure_mbuf(%struct.msg*, i64) #1

declare dso_local i64 @mbuf_size(%struct.mbuf*) #1

declare dso_local i32 @mbuf_copy(%struct.mbuf*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
