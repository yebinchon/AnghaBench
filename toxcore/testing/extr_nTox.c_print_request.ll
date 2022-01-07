; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_print_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_print_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"[i] received friend request with message:\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"[i] accept request with /a %u\00", align 1
@num_requests = common dso_local global i32 0, align 4
@pending_requests = common dso_local global %struct.TYPE_2__* null, align 8
@TOX_PUBLIC_KEY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_request(i32* %0, i32* %1, i32* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [100 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = call i32 @new_lines(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %8, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = call i32 @new_lines(i8* %14)
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %17 = load i32, i32* @num_requests, align 4
  %18 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %20 = call i32 @new_lines(i8* %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pending_requests, align 8
  %22 = load i32, i32* @num_requests, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @TOX_PUBLIC_KEY_SIZE, align 4
  %29 = call i32 @memcpy(i32 %26, i32* %27, i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pending_requests, align 8
  %31 = load i32, i32* @num_requests, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @num_requests, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @num_requests, align 4
  %37 = call i32 (...) @do_refresh()
  ret void
}

declare dso_local i32 @new_lines(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @do_refresh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
