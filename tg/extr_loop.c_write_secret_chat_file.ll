; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_write_secret_chat_file.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_write_secret_chat_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@binlog_enabled = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@SECRET_CHAT_FILE_MAGIC = common dso_local global i32 0, align 4
@TLS = common dso_local global i32 0, align 4
@write_secret_chat = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_secret_chat_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = load i64, i64* @binlog_enabled, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %51

7:                                                ; preds = %0
  %8 = call i32 (...) @get_secret_chat_filename()
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = load i32, i32* @O_RDWR, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @open(i32 %8, i32 %11, i32 384)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp sge i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @SECRET_CHAT_FILE_MAGIC, align 4
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @write(i32 %18, i32* %2, i32 4)
  %20 = icmp eq i32 %19, 4
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i32 2, i32* %2, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @write(i32 %23, i32* %2, i32 4)
  %25 = icmp eq i32 %24, 4
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @write(i32 %28, i32* %2, i32 4)
  %30 = icmp eq i32 %29, 4
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %1, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @TLS, align 4
  %37 = load i32, i32* @write_secret_chat, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %39 = call i32 @tgl_peer_iterator_ex(i32 %36, i32 %37, i32* %38)
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @SEEK_SET, align 4
  %42 = call i32 @lseek(i32 %40, i32 8, i32 %41)
  %43 = load i32, i32* %1, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %45 = call i32 @write(i32 %43, i32* %44, i32 4)
  %46 = icmp eq i32 %45, 4
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @close(i32 %49)
  br label %51

51:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @get_secret_chat_filename(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @tgl_peer_iterator_ex(i32, i32, i32*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
