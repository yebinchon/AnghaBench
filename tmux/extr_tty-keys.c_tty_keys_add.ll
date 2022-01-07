; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_add.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_key = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"new key %s: 0x%llx (%s)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"replacing key %s: 0x%llx (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, i8*, i32)* @tty_keys_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_keys_add(%struct.tty* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_key*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.tty* %0, %struct.tty** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i8* @key_string_lookup_key(i32 %10)
  store i8* %11, i8** %9, align 8
  %12 = load %struct.tty*, %struct.tty** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call %struct.tty_key* @tty_keys_find(%struct.tty* %12, i8* %13, i32 %15, i64* %8)
  store %struct.tty_key* %16, %struct.tty_key** %7, align 8
  %17 = icmp eq %struct.tty_key* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20, i8* %21)
  %23 = load %struct.tty*, %struct.tty** %4, align 8
  %24 = getelementptr inbounds %struct.tty, %struct.tty* %23, i32 0, i32 0
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @tty_keys_add1(i32* %24, i8* %25, i32 %26)
  br label %36

28:                                               ; preds = %3
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @log_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %30, i8* %31)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.tty_key*, %struct.tty_key** %7, align 8
  %35 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %18
  ret void
}

declare dso_local i8* @key_string_lookup_key(i32) #1

declare dso_local %struct.tty_key* @tty_keys_find(%struct.tty*, i8*, i32, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @log_debug(i8*, i8*, i32, i8*) #1

declare dso_local i32 @tty_keys_add1(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
