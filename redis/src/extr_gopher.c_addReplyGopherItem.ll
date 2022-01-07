; ModuleID = '/home/carl/AnghaBench/redis/src/extr_gopher.c_addReplyGopherItem.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_gopher.c_addReplyGopherItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%s%s\09%s\09%s\09%i\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyGopherItem(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = call i32 (...) @sdsempty()
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i8*, i8** %10, align 8
  br label %22

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i8* [ %20, %19 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %21 ]
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i8*, i8** %11, align 8
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i8* [ %27, %26 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %28 ]
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @sdscatfmt(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16, i8* %23, i8* %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @sdslen(i32 %35)
  %37 = call i32 @addReplyProto(i32* %33, i32 %34, i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @sdsfree(i32 %38)
  ret void
}

declare dso_local i32 @sdscatfmt(i32, i8*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @addReplyProto(i32*, i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @sdsfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
