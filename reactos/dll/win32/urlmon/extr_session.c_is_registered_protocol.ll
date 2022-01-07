; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_session.c_is_registered_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_session.c_is_registered_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARSE_SCHEMA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_registered_protocol(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i32], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PARSE_SCHEMA, align 4
  %9 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %10 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = call i32 @CoInternetParseUrl(i32 %7, i32 %8, i32 0, i32* %9, i32 %11, i32* %4, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %25

18:                                               ; preds = %1
  %19 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @get_protocol_cf(i32* %19, i32 %20, i32* null, i32* null)
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %16
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @CoInternetParseUrl(i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @get_protocol_cf(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
