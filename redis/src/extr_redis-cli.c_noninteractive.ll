; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_noninteractive.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_noninteractive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @noninteractive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noninteractive(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = call i8** @zrealloc(i8** %9, i32 %14)
  store i8** %15, i8*** %4, align 8
  %16 = call i8* (...) @readArgFromStdin()
  %17 = load i8**, i8*** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  store i8* %16, i8** %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i8**, i8*** %4, align 8
  %24 = call i32 @issueCommand(i32 %22, i8** %23)
  store i32 %24, i32* %5, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = load i8**, i8*** %4, align 8
  %28 = call i32 @issueCommand(i32 %26, i8** %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %8
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i8** @zrealloc(i8**, i32) #1

declare dso_local i8* @readArgFromStdin(...) #1

declare dso_local i32 @issueCommand(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
