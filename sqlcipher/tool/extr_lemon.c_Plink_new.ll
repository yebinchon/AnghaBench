; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Plink_new.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Plink_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plink = type { %struct.plink* }

@plink_freelist = common dso_local global %struct.plink* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Unable to allocate memory for a new follow-set propagation link.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.plink* @Plink_new() #0 {
  %1 = alloca %struct.plink*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %5 = icmp eq %struct.plink* %4, null
  br i1 %5, label %6, label %43

6:                                                ; preds = %0
  store i32 100, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @calloc(i32 %7, i32 8)
  %9 = inttoptr i64 %8 to %struct.plink*
  store %struct.plink* %9, %struct.plink** @plink_freelist, align 8
  %10 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %11 = icmp eq %struct.plink* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.plink, %struct.plink* %23, i64 %26
  %28 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.plink, %struct.plink* %28, i64 %30
  %32 = getelementptr inbounds %struct.plink, %struct.plink* %31, i32 0, i32 0
  store %struct.plink* %27, %struct.plink** %32, align 8
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.plink, %struct.plink* %37, i64 %40
  %42 = getelementptr inbounds %struct.plink, %struct.plink* %41, i32 0, i32 0
  store %struct.plink* null, %struct.plink** %42, align 8
  br label %43

43:                                               ; preds = %36, %0
  %44 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  store %struct.plink* %44, %struct.plink** %1, align 8
  %45 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %46 = getelementptr inbounds %struct.plink, %struct.plink* %45, i32 0, i32 0
  %47 = load %struct.plink*, %struct.plink** %46, align 8
  store %struct.plink* %47, %struct.plink** @plink_freelist, align 8
  %48 = load %struct.plink*, %struct.plink** %1, align 8
  ret %struct.plink* %48
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
