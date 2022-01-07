; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_read_secret_chat_file.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_read_secret_chat_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@binlog_enabled = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@SECRET_CHAT_FILE_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_secret_chat_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @binlog_enabled, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %66

7:                                                ; preds = %0
  %8 = call i32 (...) @get_secret_chat_filename()
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = call i32 @open(i32 %8, i32 %9, i32 384)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %66

14:                                               ; preds = %7
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @read(i32 %15, i32* %2, i32 4)
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @close(i32 %19)
  br label %66

21:                                               ; preds = %14
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @SECRET_CHAT_FILE_MAGIC, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @close(i32 %26)
  br label %66

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @read(i32 %29, i32* %3, i32 4)
  %31 = icmp eq i32 %30, 4
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 2
  br label %42

42:                                               ; preds = %39, %36, %28
  %43 = phi i1 [ true, %36 ], [ true, %28 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @read(i32 %46, i32* %2, i32 4)
  %48 = icmp eq i32 %47, 4
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = icmp sge i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %59, %42
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %2, align 4
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @read_secret_chat(i32 %60, i32 %61)
  br label %55

63:                                               ; preds = %55
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @close(i32 %64)
  br label %66

66:                                               ; preds = %63, %25, %18, %13, %6
  ret void
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @get_secret_chat_filename(...) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_secret_chat(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
