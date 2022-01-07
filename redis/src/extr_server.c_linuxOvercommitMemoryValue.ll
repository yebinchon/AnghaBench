; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_linuxOvercommitMemoryValue.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_linuxOvercommitMemoryValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"/proc/sys/vm/overcommit_memory\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linuxOvercommitMemoryValue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = call i32* @fopen(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %21

8:                                                ; preds = %0
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @fgets(i8* %9, i32 64, i32* %10)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @fclose(i32* %14)
  store i32 -1, i32* %1, align 4
  br label %21

16:                                               ; preds = %8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @fclose(i32* %17)
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %20 = call i32 @atoi(i8* %19)
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %16, %13, %7
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
