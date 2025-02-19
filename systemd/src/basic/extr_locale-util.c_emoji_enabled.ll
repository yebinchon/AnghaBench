; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_locale-util.c_emoji_enabled.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_locale-util.c_emoji_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@emoji_enabled.cached_emoji_enabled = internal global i32 -1, align 4
@.str = private unnamed_addr constant [14 x i8] c"SYSTEMD_EMOJI\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @emoji_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emoji_enabled() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @emoji_enabled.cached_emoji_enabled, align 4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %22

4:                                                ; preds = %0
  %5 = call i32 @getenv_bool(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = call i64 (...) @is_locale_utf8()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @STRPTR_IN_SET(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* @emoji_enabled.cached_emoji_enabled, align 4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %1, align 4
  store i32 %20, i32* @emoji_enabled.cached_emoji_enabled, align 4
  br label %21

21:                                               ; preds = %19, %16
  br label %22

22:                                               ; preds = %21, %0
  %23 = load i32, i32* @emoji_enabled.cached_emoji_enabled, align 4
  ret i32 %23
}

declare dso_local i32 @getenv_bool(i8*) #1

declare dso_local i64 @is_locale_utf8(...) #1

declare dso_local i32 @STRPTR_IN_SET(i32, i8*, i8*) #1

declare dso_local i32 @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
