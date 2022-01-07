; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_strerror.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_wsocket.c_socket_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"address already in use\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"connection refused\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"already connected\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"permission denied\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @socket_strerror(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = call i8* @io_strerror(i32 %7)
  store i8* %8, i8** %2, align 8
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %18 [
    i32 133, label %11
    i32 131, label %12
    i32 129, label %13
    i32 134, label %14
    i32 132, label %15
    i32 130, label %16
    i32 128, label %17
  ]

11:                                               ; preds = %9
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %21

12:                                               ; preds = %9
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %21

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %21

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %21

15:                                               ; preds = %9
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %21

16:                                               ; preds = %9
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %21

17:                                               ; preds = %9
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %21

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = call i8* @wstrerror(i32 %19)
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %6
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i8* @io_strerror(i32) #1

declare dso_local i8* @wstrerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
