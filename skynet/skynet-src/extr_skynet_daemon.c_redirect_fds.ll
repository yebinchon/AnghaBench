; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_daemon.c_redirect_fds.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_daemon.c_redirect_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to open /dev/null: \00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to dup2 stdin(0): \00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Unable to dup2 stdout(1): \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Unable to dup2 stderr(2): \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @redirect_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redirect_fds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @O_RDWR, align 4
  %4 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %30

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @dup2(i32 %10, i32 0)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %30

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @dup2(i32 %16, i32 1)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %30

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @dup2(i32 %22, i32 2)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @close(i32 %28)
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %27, %25, %19, %13, %7
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
