; ModuleID = '/home/carl/AnghaBench/timescaledb/src/telemetry/extr_uuid.c_ts_uuid_create.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/telemetry/extr_uuid.c_ts_uuid_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UUID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_uuid_create() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @UUID_LEN, align 4
  %5 = call i8* @palloc0(i32 %4)
  store i8* %5, i8** %1, align 8
  store i32 0, i32* %2, align 4
  %6 = load i8*, i8** %1, align 8
  %7 = load i32, i32* @UUID_LEN, align 4
  %8 = call i32 @pg_backend_random(i8* %6, i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %0
  %12 = call i32 (...) @GetCurrentTimestamp()
  store i32 %12, i32* %3, align 4
  %13 = load i8*, i8** %1, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 8
  %15 = call i32 @memcpy(i8* %14, i32* %3, i32 4)
  br label %16

16:                                               ; preds = %11, %0
  %17 = load i8*, i8** %1, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 6
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 15
  %22 = or i32 %21, 64
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %1, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 6
  store i8 %23, i8* %25, align 1
  %26 = load i8*, i8** %1, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 63
  %31 = or i32 %30, 128
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %1, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 8
  store i8 %32, i8* %34, align 1
  %35 = load i8*, i8** %1, align 8
  %36 = bitcast i8* %35 to i32*
  ret i32* %36
}

declare dso_local i8* @palloc0(i32) #1

declare dso_local i32 @pg_backend_random(i8*, i32) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
