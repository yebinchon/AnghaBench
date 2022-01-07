; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_showLatencyDistLegend.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_showLatencyDistLegend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"---------------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c". - * #          .01 .125 .25 .5 milliseconds\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"1,2,3,...,9      from 1 to 9     milliseconds\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"A,B,C,D,E        10,20,30,40,50  milliseconds\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"F,G,H,I,J        .1,.2,.3,.4,.5       seconds\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"K,L,M,N,O,P,Q,?  1,2,4,8,16,30,60,>60 seconds\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"From 0 to 100%%: \00", align 1
@spectrum_palette_size = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"\1B[48;5;%dm \00", align 1
@spectrum_palette = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"\1B[0m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @showLatencyDistLegend() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %20, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @spectrum_palette_size, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i32*, i32** @spectrum_palette, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %9

23:                                               ; preds = %9
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
